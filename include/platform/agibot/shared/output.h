/* SPDX-License-Identifier: Apache-2.0 */
/** @file output.h
 * @brief UTF-8 JSON string output shared only by Agibot observation examples.
 */
#ifndef UWVM_AGIBOT_EXAMPLE_OUTPUT_H
#define UWVM_AGIBOT_EXAMPLE_OUTPUT_H
#include <stdio.h>
#include <stddef.h>

/** @brief Print bounded UTF-8 text with JSON escaping, retaining non-ASCII bytes.
 * @param data Original validated message bytes; not NUL terminated.
 * @param size Exact active byte count, excluding unused inline capacity.
 */
inline static void agibot_print_text(unsigned char const* data, size_t size)
{
    size_t index;
    putchar('"');
    for(index = 0; index < size; ++index)
    {
        unsigned char byte = data[index];
        if(byte == '"' || byte == '\\')
        {
            putchar('\\');
            putchar(byte);
        }
        else if(byte < 32)
        {
            printf("\\u%04x", byte);
        }
        else
        {
            putchar(byte);
        }
    }
    putchar('"');
}
#endif
