/**
 * @file php/port/network/source/inet_ntop.c
 * @brief Format IPv4/IPv6 presentation bytes in caller-owned storage.
 * @details The original musl formatting and longest-zero-run compression remain intact. Family and capacity
 * failures use EAFNOSUPPORT and ENOSPC; no DNS or socket operation is performed.
 */
#include <sys/socket.h>
#include <arpa/inet.h>
#include <errno.h>
#include <stdio.h>
#include <string.h>

/**
 * @brief Format an IPv4 or IPv6 address into caller-owned text storage.
 * @details IPv6 uses the retained longest-zero-run compression. No allocation, resolver or native socket is
 * involved.
 * @param af AF_INET or AF_INET6 selected by the caller.
 * @param a0 Borrowed readable network-order address bytes of the selected family.
 * @param s Writable caller-owned destination buffer, retained by the caller after return.
 * @param l Destination byte capacity including the terminating NUL.
 * @return The destination pointer on success; NULL with EAFNOSUPPORT or ENOSPC on failure.
 */
const char* inet_ntop(int af, const void* restrict a0, char* restrict s, socklen_t l)
{
    const unsigned char* a = a0;
    int i, j, max, best;
    char buf[100];

    switch (af)
    {
        case AF_INET:
            if (snprintf(s, l, "%d.%d.%d.%d", a[0], a[1], a[2], a[3]) < l)
                return s;
            break;
        case AF_INET6:
            if (memcmp(a, "\0\0\0\0\0\0\0\0\0\0\377\377", 12))
                snprintf(buf,
                         sizeof buf,
                         "%x:%x:%x:%x:%x:%x:%x:%x",
                         256 * a[0] + a[1],
                         256 * a[2] + a[3],
                         256 * a[4] + a[5],
                         256 * a[6] + a[7],
                         256 * a[8] + a[9],
                         256 * a[10] + a[11],
                         256 * a[12] + a[13],
                         256 * a[14] + a[15]);
            else
                snprintf(buf,
                         sizeof buf,
                         "%x:%x:%x:%x:%x:%x:%d.%d.%d.%d",
                         256 * a[0] + a[1],
                         256 * a[2] + a[3],
                         256 * a[4] + a[5],
                         256 * a[6] + a[7],
                         256 * a[8] + a[9],
                         256 * a[10] + a[11],
                         a[12],
                         a[13],
                         a[14],
                         a[15]);
            /* Replace longest /(^0|:)[:0]{2,}/ with "::" */
            for (i = best = 0, max = 2; buf[i]; i++)
            {
                if (i && buf[i] != ':')
                    continue;
                j = strspn(buf + i, ":0");
                if (j > max)
                    best = i, max = j;
            }
            if (max > 3)
            {
                buf[best] = buf[best + 1] = ':';
                memmove(buf + best + 2, buf + best + max, i - best - max + 1);
            }
            if (strlen(buf) < l)
            {
                strcpy(s, buf);
                return s;
            }
            break;
        default:
            errno = EAFNOSUPPORT;
            return 0;
    }
    errno = ENOSPC;
    return 0;
}
