/**
 * @file php/port/network/include/arpa/inet.h
 * @brief Declare retained local address conversions and original IPv4 compatibility helpers.
 * @details The supplied byte-order and inet conversion bodies operate entirely on caller memory or a documented
 * static buffer. The remaining legacy declarations do not provide extra implementations in this directory.
 */
#ifndef _ARPA_INET_H
#define _ARPA_INET_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <features.h>
#include <netinet/in.h>

    /**
     * @brief Convert one 32-bit address word from host order to network order.
     * @details The retained musl union probe and byte-swap operation use no network service or allocation.
     * @par Parameters
     * 1. Original 32-bit word passed by value; no pointer or ownership is involved.
     * @return The same 32 value bits reordered as required by the host byte order.
     */
    uint32_t htonl(uint32_t);
    /**
     * @brief Convert one 16-bit address word from host order to network order.
     * @details The retained musl union probe and byte-swap operation use no network service or allocation.
     * @par Parameters
     * 1. Original 16-bit word passed by value; no pointer or ownership is involved.
     * @return The same 16 value bits reordered as required by the host byte order.
     */
    uint16_t htons(uint16_t);
    /**
     * @brief Convert one 32-bit address word from network order to host order.
     * @details The retained musl union probe and byte-swap operation use no network service or allocation.
     * @par Parameters
     * 1. Original 32-bit word passed by value; no pointer or ownership is involved.
     * @return The same 32 value bits reordered as required by the host byte order.
     */
    uint32_t ntohl(uint32_t);
    /**
     * @brief Convert one 16-bit address word from network order to host order.
     * @details The retained musl union probe and byte-swap operation use no network service or allocation.
     * @par Parameters
     * 1. Original 16-bit word passed by value; no pointer or ownership is involved.
     * @return The same 16 value bits reordered as required by the host byte order.
     */
    uint16_t ntohs(uint16_t);

    /**
     * @brief Convert legacy IPv4 text into its network-order address word.
     * @par Parameters
     * 1. Borrowed NUL-terminated IPv4 text parsed by the retained local algorithm.
     * @return The network-order address, or (in_addr_t)-1 for invalid text; the all-ones address is ambiguous by this
     * legacy API.
     */
    in_addr_t inet_addr(const char*);
    /**
     * @brief Retain the upstream declaration for legacy IPv4 network-word conversion.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed NUL-terminated network text.
     * @return No result or ownership is supplied by this declaration alone.
     */
    in_addr_t inet_network(const char*);
    /**
     * @brief Format an IPv4 address in one process-static presentation buffer.
     * @details This explicit port is single-threaded; the function performs only local byte formatting.
     * @par Parameters
     * 1. IPv4 network-order address passed by value.
     * @return Borrowed static NUL-terminated text, overwritten by the next call and never freed by the caller.
     */
    char* inet_ntoa(struct in_addr);
    /**
     * @brief Parse strict IPv4 or IPv6 presentation text into caller storage.
     * @details The retained parser may write a partial destination before discovering invalid input; failure does not
     * promise unchanged output bytes.
     * @par Parameters
     * 1. AF_INET or AF_INET6 selected by the caller.
     * 2. Borrowed NUL-terminated presentation text.
     * 3. Writable caller-owned destination with room for the selected address family.
     * @return One on success, zero for invalid text, or minus one with EAFNOSUPPORT for another family.
     */
    int inet_pton(int, const char* __restrict, void* __restrict);
    /**
     * @brief Format an IPv4 or IPv6 address into caller-owned text storage.
     * @details IPv6 uses the retained longest-zero-run compression. No allocation, resolver or native socket is
     * involved.
     * @par Parameters
     * 1. AF_INET or AF_INET6 selected by the caller.
     * 2. Borrowed readable network-order address bytes of the selected family.
     * 3. Writable caller-owned destination buffer, retained by the caller after return.
     * 4. Destination byte capacity including the terminating NUL.
     * @return The destination pointer on success; NULL with EAFNOSUPPORT or ENOSPC on failure.
     */
    const char* inet_ntop(int, const void* __restrict, char* __restrict, socklen_t);

    /**
     * @brief Expose the retained legacy IPv4 parser through its public entry.
     * @par Parameters
     * 1. Borrowed NUL-terminated IPv4 text.
     * 2. Caller-owned IPv4 output; a failed parse may leave partial bytes from validated components.
     * @return One on success or zero for invalid text; no allocation is returned.
     */
    int inet_aton(const char*, struct in_addr*);
    /**
     * @brief Retain the upstream declaration for classful IPv4 address composition.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Network-number value.
     * 2. Host-number value.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct in_addr inet_makeaddr(in_addr_t, in_addr_t);
    /**
     * @brief Retain the upstream declaration for legacy IPv4 host-number extraction.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. IPv4 address value.
     * @return No result or ownership is supplied by this declaration alone.
     */
    in_addr_t inet_lnaof(struct in_addr);
    /**
     * @brief Retain the upstream declaration for legacy IPv4 network-number extraction.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. IPv4 address value.
     * @return No result or ownership is supplied by this declaration alone.
     */
    in_addr_t inet_netof(struct in_addr);

#ifdef __cplusplus
}
#endif

#endif
