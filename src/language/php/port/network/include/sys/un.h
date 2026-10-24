/**
 * @file php/port/network/include/sys/un.h
 * @brief Retain the original Unix-domain sockaddr layout and bounded-length macro.
 * @details The repeated strlen declaration belongs to the selected C library. Address representation does not
 * enable a native Unix-domain socket or grant filesystem endpoint access.
 */
#ifndef _SYS_UN_H
#define _SYS_UN_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <features.h>

#define __NEED_sa_family_t
#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
#define __NEED_size_t
#endif

#include <bits/alltypes.h>

#if 1 /* Address values only; all effectful native sockets return ENOTSUP. */
    struct sockaddr_un
    {
        sa_family_t sun_family;
        char sun_path[108];
    };
#else
#include <__struct_sockaddr_un.h>
#endif

#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
#ifdef __wasilibc_unmodified_upstream /* Declare strlen with the same attributes as <string.h> uses */
                                      /**
                                       * @brief Declare the qualified C library's NUL-terminated byte-count operation.
                                       * @details This repeated declaration supports the original SUN_LEN macro and does not introduce a replacement
                                       * implementation.
                                       * @par Parameters
                                       * 1. Borrowed readable NUL-terminated string, valid until the call returns.
                                       * @return Number of bytes before the first NUL; no storage is allocated or released.
                                       */
    size_t strlen(const char*);
#else
    /**
     * @brief Declare the qualified C library's NUL-terminated byte-count operation.
     * @details This repeated declaration supports the original SUN_LEN macro and does not introduce a replacement
     * implementation.
     * @par Parameters
     * 1. Borrowed readable NUL-terminated string, valid until the call returns.
     * @return Number of bytes before the first NUL; no storage is allocated or released.
     */
    size_t strlen(const char*) __attribute__((__nothrow__, __leaf__, __pure__, __nonnull__(1)));
#endif
#define SUN_LEN(s) (2 + strlen((s)->sun_path))
#endif

#ifdef __cplusplus
}
#endif

#endif
