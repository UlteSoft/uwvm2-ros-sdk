/**
 * @file php/port/network/source/inet_ntoa.c
 * @brief Format IPv4 bytes in the retained process-static presentation buffer.
 * @details The returned pointer is borrowed and overwritten by the next call. This single-threaded port performs
 * local formatting only and creates no allocation or network authority.
 */
#include <arpa/inet.h>
#include <stdio.h>

/**
 * @brief Format an IPv4 address in one process-static presentation buffer.
 * @details This explicit port is single-threaded; the function performs only local byte formatting.
 * @param in IPv4 network-order address passed by value.
 * @return Borrowed static NUL-terminated text, overwritten by the next call and never freed by the caller.
 */
char* inet_ntoa(struct in_addr in)
{
    static char buf[16];
    unsigned char* a = (void*)&in;
    snprintf(buf, sizeof buf, "%d.%d.%d.%d", a[0], a[1], a[2], a[3]);
    return buf;
}
