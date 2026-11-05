/* SPDX-License-Identifier: Apache-2.0 */
/* Instantiate after Value, BRIDGE_ENCODE, BRIDGE_DECODE and WIRE_CAPACITY.
 * All checks execute in the actual Wasm and use the exported foreign ABI. */
#ifndef UWVM_SDK_BOUNDED_CODEC_TEST_H
#define UWVM_SDK_BOUNDED_CODEC_TEST_H
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#define UWVM_CODEC_CHECK(condition) do { if (!(condition)) { \
    printf("codec assertion failed at line %d\n", __LINE__); return 1; } } while (0)

static int uwvm_sdk_codec_test(char const* group)
{
    Value initial = {0}, decoded, before;
    unsigned char wire[WIRE_CAPACITY + 1u], copy[WIRE_CAPACITY + 1u], saved[WIRE_CAPACITY + 1u];
    size_t length = 0, count = 0;
    UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, wire, WIRE_CAPACITY, &length) == 0);
    UWVM_CODEC_CHECK(length > 0 && length <= WIRE_CAPACITY);
    memset(&decoded, 0xa5, sizeof decoded);
    memcpy(&before, &decoded, sizeof before);
    if(strcmp(group, "normal") == 0)
    {
        UWVM_CODEC_CHECK(BRIDGE_DECODE(wire, length, &decoded) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&decoded, copy, WIRE_CAPACITY, &count) == 0);
        UWVM_CODEC_CHECK(count == length && memcmp(wire, copy, length) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&decoded, copy, length, &count) == 0);
    }
    else if(strcmp(group, "boundary") == 0)
    {
        memset(copy, 0x5a, sizeof copy);
        memcpy(saved, copy, sizeof copy);
        count = SIZE_MAX;
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, copy, length - 1u, &count) == 90);
        UWVM_CODEC_CHECK(count == SIZE_MAX && memcmp(copy, saved, sizeof copy) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, copy, 0, &count) == 90);
        UWVM_CODEC_CHECK(count == SIZE_MAX && memcmp(copy, saved, sizeof copy) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, copy, length, &count) == 0);
        UWVM_CODEC_CHECK(count == length && memcmp(wire, copy, length) == 0);
        UWVM_CODEC_CHECK(copy[length] == 0x5a);
        UWVM_CODEC_CHECK(BRIDGE_DECODE(wire, WIRE_CAPACITY + 1u, &decoded) == 22);
        UWVM_CODEC_CHECK(memcmp(&before, &decoded, sizeof before) == 0);
    }
    else if(strcmp(group, "malformed") == 0)
    {
        for(size_t n = 0; n < length; ++n)
        {
            UWVM_CODEC_CHECK(BRIDGE_DECODE(wire, n, &decoded) == 22);
            UWVM_CODEC_CHECK(memcmp(&before, &decoded, sizeof before) == 0);
        }
        wire[length] = 0xa5;
        UWVM_CODEC_CHECK(BRIDGE_DECODE(wire, length + 1u, &decoded) == 22);
        UWVM_CODEC_CHECK(memcmp(&before, &decoded, sizeof before) == 0);
    }
    else if(strcmp(group, "abi-refusal") == 0)
    {
        memset(copy, 0x5a, sizeof copy);
        memcpy(saved, copy, sizeof copy);
        count = SIZE_MAX;
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(NULL, copy, sizeof copy, &count) == 22);
        UWVM_CODEC_CHECK(count == SIZE_MAX && memcmp(copy, saved, sizeof copy) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, copy, sizeof copy, NULL) == 22);
        UWVM_CODEC_CHECK(memcmp(copy, saved, sizeof copy) == 0);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, NULL, length, &count) == 22);
        UWVM_CODEC_CHECK(count == SIZE_MAX);
        UWVM_CODEC_CHECK(BRIDGE_DECODE(NULL, length, &decoded) == 22);
        UWVM_CODEC_CHECK(memcmp(&before, &decoded, sizeof before) == 0);
        UWVM_CODEC_CHECK(BRIDGE_DECODE(wire, length, NULL) == 22);
        UWVM_CODEC_CHECK(BRIDGE_DECODE(&decoded, length, &decoded) == 22);
        UWVM_CODEC_CHECK(memcmp(&before, &decoded, sizeof before) == 0);
        /* Valid source with an aliased output must fail before any byte is changed. */
        memcpy(&before, &initial, sizeof before);
        UWVM_CODEC_CHECK(BRIDGE_ENCODE(&initial, &initial, length, &count) == 22);
        UWVM_CODEC_CHECK(memcmp(&before, &initial, sizeof before) == 0 && count == SIZE_MAX);
    }
    else return 22;
    return printf("codec-%s PASS\n", group) < 0 ? 5 : 0;
}
#undef UWVM_CODEC_CHECK
#endif
