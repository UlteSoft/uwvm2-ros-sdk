/**
 * @file php/port/network/source/inet_aton.c
 * @brief Retain musl's local one-to-four-component IPv4 parser and public entry.
 * @details Input components use the original base-selection and range rules. The caller owns the output structure;
 * unsuccessful validation returns zero without acquiring a native resource.
 */
#include <ctype.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>

/**
 * @brief Parse the retained legacy one-to-four-component IPv4 notation.
 * @details No network lookup, allocation or native descriptor is used.
 * @param s0 Borrowed NUL-terminated input with the original musl base-selection rules.
 * @param dest Caller-owned struct in_addr; a late range failure may leave earlier address bytes written.
 * @return One for a valid address, or zero for malformed/out-of-range components.
 */
int __inet_aton(const char* s0, struct in_addr* dest)
{
    const char* s = s0;
    unsigned char* d = (void*)dest;
    unsigned long a[4] = {0};
    char* z;
    int i;

    for (i = 0; i < 4; i++)
    {
        a[i] = strtoul(s, &z, 0);
        if (z == s || (*z && *z != '.') || !isdigit(*s))
            return 0;
        if (!*z)
            break;
        s = z + 1;
    }
    if (i == 4)
        return 0;
    switch (i)
    {
        case 0:
            a[1] = a[0] & 0xffffff;
            a[0] >>= 24;
        case 1:
            a[2] = a[1] & 0xffff;
            a[1] >>= 16;
        case 2:
            a[3] = a[2] & 0xff;
            a[2] >>= 8;
    }
    for (i = 0; i < 4; i++)
    {
        if (a[i] > 255)
            return 0;
        d[i] = a[i];
    }
    return 1;
}

/**
 * @brief Expose the retained legacy IPv4 parser through its public entry.
 * @param text Borrowed NUL-terminated IPv4 text.
 * @param output Caller-owned IPv4 output; a failed parse may leave partial bytes from validated components.
 * @return One on success or zero for invalid text; no allocation is returned.
 */
int inet_aton(const char* text, struct in_addr* output)
{
    return __inet_aton(text, output);
}
