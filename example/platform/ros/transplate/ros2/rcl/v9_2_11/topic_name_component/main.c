/**
 * @file main.c
 * @brief Genuine upstream rcl topic-name validation in one private Wasm instance.
 *
 * These finite source-semantics cases do not expand names, create a ROS node,
 * call a host ROS client, or establish middleware/simulation qualification.
 */
#include <rcl/validate_topic_name.h>
#include <rcl/error_handling.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

static unsigned validation_calls;
static unsigned diagnostic_calls;

static int failed(const char * expression, unsigned line)
{
    fprintf(stderr, "rcl topic-name assertion at line %u: %s\n", line, expression);
    return 0;
}
#define REQUIRE(expr) do { if (!(expr)) return failed(#expr, __LINE__); } while (0)
#define INDEX_UNCHANGED ((size_t)42)

struct topic_case {
    const char * name;
    int result;
    size_t index;
};

static int check_result(rcl_ret_t ret, int result, size_t index,
                        int expected, size_t expected_index)
{
    REQUIRE(ret == RCL_RET_OK);
    REQUIRE(result == expected);
    REQUIRE(index == expected_index);
    ++diagnostic_calls;
    const char * message = rcl_topic_name_validation_result_string(result);
    REQUIRE(expected == RCL_TOPIC_NAME_VALID ? message == NULL : message != NULL);
    return 1;
}

static int check_topic(const struct topic_case * value)
{
    int result = -1;
    size_t index = INDEX_UNCHANGED;
    ++validation_calls;
    rcl_ret_t ret = rcl_validate_topic_name(value->name, &result, &index);
    REQUIRE(check_result(ret, result, index, value->result, value->index));
    result = -1;
    index = INDEX_UNCHANGED;
    ++validation_calls;
    ret = rcl_validate_topic_name_with_size(value->name, strlen(value->name), &result, &index);
    REQUIRE(check_result(ret, result, index, value->result, value->index));
    return 1;
}

static int official_valid(unsigned * vectors)
{
    const struct topic_case values[] = {
        {"foo", 0, INDEX_UNCHANGED},
        {"abc123", 0, INDEX_UNCHANGED},
        {"_foo", 0, INDEX_UNCHANGED},
        {"Foo", 0, INDEX_UNCHANGED},
        {"BAR", 0, INDEX_UNCHANGED},
        {"~", 0, INDEX_UNCHANGED},
        {"foo/bar", 0, INDEX_UNCHANGED},
        {"~/foo", 0, INDEX_UNCHANGED},
        {"{foo}_bar", 0, INDEX_UNCHANGED},
        {"foo/{ping}/bar", 0, INDEX_UNCHANGED},
        {"foo/_bar", 0, INDEX_UNCHANGED},
        {"foo_/bar", 0, INDEX_UNCHANGED},
        {"foo_", 0, INDEX_UNCHANGED},
        {"/foo", 0, INDEX_UNCHANGED},
        {"/bar/baz", 0, INDEX_UNCHANGED},
        {"/_private/thing", 0, INDEX_UNCHANGED},
        {"/public_namespace/_private/thing", 0, INDEX_UNCHANGED},
        {"/foo", 0, INDEX_UNCHANGED},
        {"{foo1}", 0, INDEX_UNCHANGED},
        {"{foo_bar}", 0, INDEX_UNCHANGED},
        {"{_bar}", 0, INDEX_UNCHANGED}
    };
    for (size_t i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
        REQUIRE(check_topic(&values[i]));
        ++*vectors;
    }
    return 1;
}

static int official_invalid(unsigned * vectors)
{
    const struct topic_case values[] = {
        {"123abc", RCL_TOPIC_NAME_INVALID_NAME_TOKEN_STARTS_WITH_NUMBER, 0},
        {"123", RCL_TOPIC_NAME_INVALID_NAME_TOKEN_STARTS_WITH_NUMBER, 0},
        {" ", RCL_TOPIC_NAME_INVALID_CONTAINS_UNALLOWED_CHARACTERS, 0},
        {"foo bar", RCL_TOPIC_NAME_INVALID_CONTAINS_UNALLOWED_CHARACTERS, 3},
        {"/~", RCL_TOPIC_NAME_INVALID_MISPLACED_TILDE, 1},
        {"~foo", RCL_TOPIC_NAME_INVALID_TILDE_NOT_FOLLOWED_BY_FORWARD_SLASH, 1},
        {"foo~", RCL_TOPIC_NAME_INVALID_MISPLACED_TILDE, 3},
        {"foo~/bar", RCL_TOPIC_NAME_INVALID_MISPLACED_TILDE, 3},
        {"foo/~bar", RCL_TOPIC_NAME_INVALID_MISPLACED_TILDE, 4},
        {"foo/~/bar", RCL_TOPIC_NAME_INVALID_MISPLACED_TILDE, 4},
        {"foo/", RCL_TOPIC_NAME_INVALID_ENDS_WITH_FORWARD_SLASH, 3},
        {"", RCL_TOPIC_NAME_INVALID_IS_EMPTY_STRING, 0},
        {"foo/123bar", RCL_TOPIC_NAME_INVALID_NAME_TOKEN_STARTS_WITH_NUMBER, 4},
        {"foo/bar}/baz", RCL_TOPIC_NAME_INVALID_UNMATCHED_CURLY_BRACE, 7},
        {"foo/{bar", RCL_TOPIC_NAME_INVALID_UNMATCHED_CURLY_BRACE, 4},
        {"{$}", RCL_TOPIC_NAME_INVALID_SUBSTITUTION_CONTAINS_UNALLOWED_CHARACTERS, 1},
        {"{{bar}_baz}", RCL_TOPIC_NAME_INVALID_SUBSTITUTION_CONTAINS_UNALLOWED_CHARACTERS, 1},
        {"foo/{bar/baz}", RCL_TOPIC_NAME_INVALID_SUBSTITUTION_CONTAINS_UNALLOWED_CHARACTERS, 8},
        {"{1foo}", RCL_TOPIC_NAME_INVALID_SUBSTITUTION_STARTS_WITH_NUMBER, 1}
    };
    for (size_t i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
        REQUIRE(check_topic(&values[i]));
        ++*vectors;
    }
    return 1;
}

static int null_arguments(unsigned * vectors)
{
    for (unsigned i = 0; i != 4; ++i) {
        int result = -1;
        size_t index = INDEX_UNCHANGED;
        rcl_ret_t ret;
        REQUIRE(!rcl_error_is_set());
        ++validation_calls;
        switch (i) {
        case 0:
            ret = rcl_validate_topic_name(NULL, &result, &index);
            break;
        case 1:
            ret = rcl_validate_topic_name("topic", NULL, &index);
            break;
        case 2:
            ret = rcl_validate_topic_name_with_size(NULL, 0, &result, &index);
            break;
        default:
            ret = rcl_validate_topic_name_with_size("topic", 5, NULL, &index);
            break;
        }
        REQUIRE(ret == RCL_RET_INVALID_ARGUMENT);
        REQUIRE(result == -1);
        REQUIRE(index == INDEX_UNCHANGED);
        REQUIRE(rcl_error_is_set());
        REQUIRE(rcl_get_error_string().str[0] != '\0');
        rcl_reset_error();
        REQUIRE(!rcl_error_is_set());
        ++*vectors;
    }
    return 1;
}

static int bounded_prefix(unsigned * vectors)
{
    struct prefix_case {
        const char * name;
        size_t length;
        int result;
        size_t index;
    };
    const struct prefix_case values[] = {
        {"foo/bar", 3, RCL_TOPIC_NAME_VALID, INDEX_UNCHANGED},
        {"foo/bar", 4, RCL_TOPIC_NAME_INVALID_ENDS_WITH_FORWARD_SLASH, 3},
        {"ignored", 0, RCL_TOPIC_NAME_INVALID_IS_EMPTY_STRING, 0},
        {"4abc", 1, RCL_TOPIC_NAME_INVALID_NAME_TOKEN_STARTS_WITH_NUMBER, 0},
        {"foo$tail", 3, RCL_TOPIC_NAME_VALID, INDEX_UNCHANGED},
        {"foo$tail", 4, RCL_TOPIC_NAME_INVALID_CONTAINS_UNALLOWED_CHARACTERS, 3}
    };
    for (size_t i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
        int result = -1;
        size_t index = INDEX_UNCHANGED;
        ++validation_calls;
        rcl_ret_t ret = rcl_validate_topic_name_with_size(
            values[i].name, values[i].length, &result, &index);
        REQUIRE(check_result(ret, result, index, values[i].result, values[i].index));
        ++*vectors;
    }
    return 1;
}

static int diagnostic_strings(unsigned * vectors)
{
    const char * messages[] = {
        NULL,
        "topic name must not be empty string",
        "topic name must not end with a forward slash",
        "topic name must not contain characters other than alphanumerics, '_', '~', '{', or '}'",
        "topic name token must not start with a number",
        "topic name must not have unmatched (unbalanced) curly braces '{}'",
        "topic name must not have tilde '~' unless it is the first character",
        "topic name must not have a tilde '~' that is not followed by a forward slash '/'",
        "substitution name must not contain characters other than alphanumerics or '_'",
        "substitution name must not start with a number"
    };
    for (int i = 0; i != 10; ++i) {
        ++diagnostic_calls;
        const char * actual = rcl_topic_name_validation_result_string(i);
        REQUIRE(i == 0 ? actual == NULL : actual && strcmp(actual, messages[i]) == 0);
        ++*vectors;
    }
    const int unknown[] = {-1, 5600};
    for (size_t i = 0; i < sizeof(unknown) / sizeof(unknown[0]); ++i) {
        ++diagnostic_calls;
        const char * actual = rcl_topic_name_validation_result_string(unknown[i]);
        REQUIRE(actual && strcmp(actual, "unknown result code for rcl topic name validation") == 0);
        ++*vectors;
    }
    return 1;
}

static int pre_expansion(unsigned * vectors)
{
    /* Preserve measured source semantics, including the documented later-stage
       slash checks and the short-tilde source/header discrepancy. */
    const struct topic_case values[] = {
        {"foo//bar", 0, INDEX_UNCHANGED},
        {"{not_a_known_substitution}", 0, INDEX_UNCHANGED},
        {"~x", 0, INDEX_UNCHANGED},
        {"{}", 0, INDEX_UNCHANGED},
        {"~", 0, INDEX_UNCHANGED},
        {"/a//b", 0, INDEX_UNCHANGED}
    };
    for (size_t i = 0; i < sizeof(values) / sizeof(values[0]); ++i) {
        REQUIRE(check_topic(&values[i]));
        ++*vectors;
    }
    return 1;
}

static int error_lifecycle(unsigned * vectors)
{
    int result = -1;
    size_t index = INDEX_UNCHANGED;
    ++validation_calls;
    REQUIRE(rcl_validate_topic_name(NULL, &result, &index) == RCL_RET_INVALID_ARGUMENT);
    REQUIRE(rcl_error_is_set());
    ++validation_calls;
    REQUIRE(rcl_validate_topic_name("topic", &result, &index) == RCL_RET_OK);
    REQUIRE(result == RCL_TOPIC_NAME_VALID && index == INDEX_UNCHANGED);
    /* An unrelated successful call must not silently clear the error state. */
    REQUIRE(rcl_error_is_set());
    rcl_reset_error();
    REQUIRE(!rcl_error_is_set());
    ++*vectors;
    return 1;
}

int main(int argc, char ** argv)
{
    if (argc != 2) return failed("select one named component case", __LINE__) ? 0 : 1;
    struct named_case {
        const char * name;
        int (*run)(unsigned *);
    };
    const struct named_case cases[] = {
        {"official-valid", official_valid},
        {"official-invalid", official_invalid},
        {"null-arguments", null_arguments},
        {"bounded-prefix", bounded_prefix},
        {"diagnostic-strings", diagnostic_strings},
        {"pre-expansion", pre_expansion},
        {"error-lifecycle", error_lifecycle}
    };
    for (size_t i = 0; i < sizeof(cases) / sizeof(cases[0]); ++i) {
        if (strcmp(argv[1], cases[i].name) != 0) continue;
        unsigned vectors = 0;
        if (!cases[i].run(&vectors)) return 1;
        printf("{\"case\":\"%s\",\"vectors\":%u,\"validation_calls\":%u,\"diagnostic_calls\":%u}\n",
               cases[i].name, vectors, validation_calls, diagnostic_calls);
        return 0;
    }
    (void)failed("unknown component case", __LINE__);
    return 1;
}
