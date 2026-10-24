/**
 * @file php/port/network/include/netdb.h
 * @brief Retain resolver record layouts while documenting the standalone failure boundary.
 * @details Supplied resolver entries reject native lookup and document their exact result/error writes. Additional
 * upstream cursor and parser declarations do not add implementations or a host lookup service.
 */
#ifndef _NETDB_H
#define _NETDB_H

#include <wasi/version.h>

#ifdef __cplusplus
extern "C"
{
#endif

#include <features.h>
#include <netinet/in.h>

#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
#define __NEED_size_t
#include <bits/alltypes.h>
#endif

    struct addrinfo
    {
        int ai_flags;
        int ai_family;
        int ai_socktype;
        int ai_protocol;
        socklen_t ai_addrlen;
        struct sockaddr* ai_addr;
        char* ai_canonname;
        struct addrinfo* ai_next;
    };

#define AI_PASSIVE 0x01
#define AI_CANONNAME 0x02
#define AI_NUMERICHOST 0x04
#define AI_V4MAPPED 0x08
#define AI_ALL 0x10
#define AI_ADDRCONFIG 0x20
#define AI_NUMERICSERV 0x400

#define NI_NUMERICHOST 0x01
#define NI_NUMERICSERV 0x02
#define NI_NOFQDN 0x04
#define NI_NAMEREQD 0x08
#define NI_DGRAM 0x10
#define NI_NUMERICSCOPE 0x100

#define EAI_BADFLAGS -1
#define EAI_NONAME -2
#define EAI_AGAIN -3
#define EAI_FAIL -4
#define EAI_NODATA -5
#define EAI_FAMILY -6
#define EAI_SOCKTYPE -7
#define EAI_SERVICE -8
#define EAI_MEMORY -10
#define EAI_SYSTEM -11
#define EAI_OVERFLOW -12

    /**
     * @brief Reject native name resolution and clear its optional result slot.
     * @par Parameters
     * 1. Ignored node name; no host lookup is performed.
     * 2. Ignored service name.
     * 3. Ignored borrowed hints structure.
     * 4. Optional caller-owned result slot, set to NULL when supplied.
     * @return EAI_SYSTEM with errno ENOTSUP; no list allocation or free obligation is created.
     */
    int getaddrinfo(const char* __restrict,
                    const char* __restrict,
                    const struct addrinfo* __restrict,
                    struct addrinfo** __restrict);
    /**
     * @brief Accept the absent list from this unsupported resolver without freeing storage.
     * @details This no-op acquires and releases no storage; it must not be used to free foreign allocator-owned lists.
     * @par Parameters
     * 1. Ignored pointer, expected to be NULL after this port's getaddrinfo failure.
     */
    void freeaddrinfo(struct addrinfo*);
    /**
     * @brief Reject reverse-name formatting without modifying caller text outputs.
     * @par Parameters
     * 1. Ignored borrowed address.
     * 2. Ignored address extent.
     * 3. Caller-owned host text left unchanged.
     * 4. Ignored host capacity.
     * 5. Caller-owned service text left unchanged.
     * 6. Ignored service capacity.
     * 7. Ignored native name-selection flags.
     * @return EAI_SYSTEM with errno ENOTSUP.
     */
    int getnameinfo(
        const struct sockaddr* __restrict, socklen_t, char* __restrict, socklen_t, char* __restrict, socklen_t, int);
    /**
     * @brief Return the fixed diagnostic for the unsupported native resolver.
     * @par Parameters
     * 1. Ignored resolver status code.
     * @return Borrowed constant diagnostic text that the caller must not free.
     */
    const char* gai_strerror(int);

    /* Legacy functions follow (marked OBsolete in SUS) */

    struct netent
    {
        char* n_name;
        char** n_aliases;
        int n_addrtype;
        uint32_t n_net;
    };

    struct hostent
    {
        char* h_name;
        char** h_aliases;
        int h_addrtype;
        int h_length;
        char** h_addr_list;
    };

#define h_addr h_addr_list[0]

    struct servent
    {
        char* s_name;
        char** s_aliases;
        int s_port;
        char* s_proto;
    };

    struct protoent
    {
        char* p_name;
        char** p_aliases;
        int p_proto;
    };

    /**
     * @brief Retain the upstream declaration for upstream host database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Original stay-open policy.
     */
    void sethostent(int);
    /**
     * @brief Retain the upstream declaration for upstream host database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endhostent(void);
    /**
     * @brief Retain the upstream declaration for upstream host database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct hostent* gethostent(void);

    /**
     * @brief Retain the upstream declaration for upstream net database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Original stay-open policy.
     */
    void setnetent(int);
    /**
     * @brief Retain the upstream declaration for upstream net database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endnetent(void);
    /**
     * @brief Retain the upstream declaration for upstream net database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct netent* getnetent(void);
    /**
     * @brief Retain the upstream declaration for network-number database lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Network number.
     * 2. Address family.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct netent* getnetbyaddr(uint32_t, int);
    /**
     * @brief Retain the upstream declaration for network-name database lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed network name.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct netent* getnetbyname(const char*);

    /**
     * @brief Retain the upstream declaration for upstream serv database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Original stay-open policy.
     */
    void setservent(int);
    /**
     * @brief Retain the upstream declaration for upstream serv database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endservent(void);
    /**
     * @brief Retain the upstream declaration for upstream serv database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct servent* getservent(void);
    /**
     * @brief Reject service-name lookup without accessing a host database.
     * @par Parameters
     * 1. Ignored service name.
     * 2. Ignored protocol name.
     * @return NULL with errno ENOTSUP; no result storage is acquired.
     */
    struct servent* getservbyname(const char*, const char*);
    /**
     * @brief Reject service-port lookup without accessing a host database.
     * @par Parameters
     * 1. Ignored network-order port.
     * 2. Ignored protocol name.
     * @return NULL with errno ENOTSUP; no result storage is acquired.
     */
    struct servent* getservbyport(int, const char*);

    /**
     * @brief Retain the upstream declaration for upstream proto database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Original stay-open policy.
     */
    void setprotoent(int);
    /**
     * @brief Retain the upstream declaration for upstream proto database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endprotoent(void);
    /**
     * @brief Retain the upstream declaration for upstream proto database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct protoent* getprotoent(void);
    /**
     * @brief Retain the upstream declaration for protocol-name database lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed protocol name.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct protoent* getprotobyname(const char*);
    /**
     * @brief Retain the upstream declaration for protocol-number database lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Protocol number.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct protoent* getprotobynumber(int);

#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE) || defined(_POSIX_SOURCE) ||                                          \
    (defined(_POSIX_C_SOURCE) && _POSIX_C_SOURCE + 0 < 200809L) || (defined(_XOPEN_SOURCE) && _XOPEN_SOURCE + 0 < 700)
    /**
     * @brief Reject legacy host lookup without acquiring a result object.
     * @par Parameters
     * 1. Ignored host name; no bytes are read for resolution.
     * @return NULL, with h_errno NO_RECOVERY and errno ENOTSUP.
     */
    struct hostent* gethostbyname(const char*);
    /**
     * @brief Reject legacy reverse lookup without reading address bytes.
     * @par Parameters
     * 1. Ignored borrowed address.
     * 2. Ignored address extent.
     * 3. Ignored address family.
     * @return NULL, with h_errno NO_RECOVERY and errno ENOTSUP.
     */
    struct hostent* gethostbyaddr(const void*, socklen_t, int);
#ifdef __GNUC__
/* Resolver state is a single-threaded port value. */
#endif
#ifdef __wasilibc_unmodified_upstream
    /**
     * @brief Retain the upstream declaration for upstream thread-local resolver-error address.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int* __h_errno_location(void);
#define h_errno (*__h_errno_location())
#else
    extern int h_errno;
#define h_errno h_errno
#endif
#define HOST_NOT_FOUND 1
#define TRY_AGAIN 2
#define NO_RECOVERY 3
#define NO_DATA 4
#define NO_ADDRESS NO_DATA
#endif

#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
    /**
     * @brief Retain the upstream declaration for legacy resolver diagnostic emission.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed diagnostic prefix.
     */
    void herror(const char*);
    /**
     * @brief Retain the upstream declaration for legacy resolver diagnostic lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Resolver error number.
     * @return No result or ownership is supplied by this declaration alone.
     */
    const char* hstrerror(int);
    /**
     * @brief Reject reentrant host lookup while explicitly clearing its result/error slots.
     * @par Parameters
     * 1. Ignored requested name.
     * 2. Caller-owned host entry left unchanged.
     * 3. Caller-owned scratch bytes left unchanged.
     * 4. Ignored scratch capacity.
     * 5. Optional result slot set to NULL.
     * 6. Optional resolver-error slot set to NO_RECOVERY.
     * @return ENOTSUP, also assigned to errno; no lookup or allocation occurs.
     */
    int gethostbyname_r(const char*, struct hostent*, char*, size_t, struct hostent**, int*);
    /**
     * @brief Retain the upstream declaration for reentrant family-specific host lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed host name.
     * 2. Requested address family.
     * 3. Caller-owned host entry.
     * 4. Caller-owned scratch bytes.
     * 5. Scratch capacity.
     * 6. Caller-owned result slot.
     * 7. Caller-owned resolver-error slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int gethostbyname2_r(const char*, int, struct hostent*, char*, size_t, struct hostent**, int*);
    /**
     * @brief Retain the upstream declaration for family-specific legacy host lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed host name.
     * 2. Requested address family.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct hostent* gethostbyname2(const char*, int);
    /**
     * @brief Retain the upstream declaration for reentrant reverse host lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed address bytes.
     * 2. Address extent.
     * 3. Address family.
     * 4. Caller-owned host entry.
     * 5. Caller-owned scratch bytes.
     * 6. Scratch capacity.
     * 7. Caller-owned result slot.
     * 8. Caller-owned resolver-error slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int gethostbyaddr_r(const void*, socklen_t, int, struct hostent*, char*, size_t, struct hostent**, int*);
    /**
     * @brief Retain the upstream declaration for reentrant service-port lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Network-order port.
     * 2. Borrowed protocol name.
     * 3. Caller-owned service entry.
     * 4. Caller-owned scratch bytes.
     * 5. Scratch capacity.
     * 6. Caller-owned result slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getservbyport_r(int, const char*, struct servent*, char*, size_t, struct servent**);
    /**
     * @brief Retain the upstream declaration for reentrant service-name lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed service name.
     * 2. Borrowed protocol name.
     * 3. Caller-owned service entry.
     * 4. Caller-owned scratch bytes.
     * 5. Scratch capacity.
     * 6. Caller-owned result slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getservbyname_r(const char*, const char*, struct servent*, char*, size_t, struct servent**);
#define EAI_NODATA -5
#define EAI_ADDRFAMILY -9
#define EAI_INPROGRESS -100
#define EAI_CANCELED -101
#define EAI_NOTCANCELED -102
#define EAI_ALLDONE -103
#define EAI_INTR -104
#define EAI_IDN_ENCODE -105
#define NI_MAXHOST 255
#define NI_MAXSERV 32
#endif

#ifdef __cplusplus
}
#endif

#endif
