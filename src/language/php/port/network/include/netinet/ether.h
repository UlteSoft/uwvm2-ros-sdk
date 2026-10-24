/**
 * @file php/port/network/include/netinet/ether.h
 * @brief Retain upstream Ethernet conversion and hosts-file compatibility declarations.
 * @details This directory supplies no ether conversion or hosts-database implementation. Declared buffers remain
 * caller-owned and no host lookup becomes available by including the header.
 */
#ifndef _NETINET_ETHER_H
#define _NETINET_ETHER_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <netinet/if_ether.h>

    /**
     * @brief Retain the upstream declaration for Ethernet address presentation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed six-byte Ethernet address.
     * @return No result or ownership is supplied by this declaration alone.
     */
    char* ether_ntoa(const struct ether_addr*);
    /**
     * @brief Retain the upstream declaration for Ethernet text parsing.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed NUL-terminated Ethernet text.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct ether_addr* ether_aton(const char*);
    /**
     * @brief Retain the upstream declaration for caller-buffer Ethernet presentation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed Ethernet address.
     * 2. Caller-owned presentation buffer.
     * @return No result or ownership is supplied by this declaration alone.
     */
    char* ether_ntoa_r(const struct ether_addr*, char*);
    /**
     * @brief Retain the upstream declaration for caller-buffer Ethernet parsing.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed Ethernet text.
     * 2. Caller-owned Ethernet address output.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct ether_addr* ether_aton_r(const char*, struct ether_addr*);
    /**
     * @brief Retain the upstream declaration for Ethernet hosts-line parsing.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed complete input line.
     * 2. Caller-owned Ethernet address output.
     * 3. Caller-owned host-name output.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int ether_line(const char*, struct ether_addr*, char*);
    /**
     * @brief Retain the upstream declaration for Ethernet address-to-host lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Caller-owned host-name output.
     * 2. Borrowed Ethernet address.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int ether_ntohost(char*, const struct ether_addr*);
    /**
     * @brief Retain the upstream declaration for host-to-Ethernet address lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed host name.
     * 2. Caller-owned Ethernet address output.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int ether_hostton(const char*, struct ether_addr*);

#ifdef __cplusplus
}
#endif

#endif
