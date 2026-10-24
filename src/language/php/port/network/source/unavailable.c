/**
 * @file php/port/network/source/unavailable.c
 * @brief Reject native socket and resolver effects outside the explicit PHP WASI profile.
 * @details Native descriptors, DNS lists and host database owners are never acquired. Output storage is unchanged
 * except the documented optional resolver result/error slots; ordinary PHP error paths receive the original
 * failures.
 */
#include "uwvm_network.h"
#include <errno.h>
#include <stddef.h>

/**
 * @brief Retain the single-threaded resolver failure state.
 */
int h_errno;

/**
 * @brief Set the shared explicit unsupported-operation status.
 * @return Minus one after setting errno to ENOTSUP; no native resource is acquired.
 */
static int unavailable(void)
{
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject mutation of a native process creation mask.
 * @param mask Ignored requested mask; no authority is changed.
 * @return (mode_t)-1 with errno ENOTSUP.
 */
mode_t umask(mode_t mask)
{
    (void)mask;
    errno = ENOTSUP;
    return (mode_t)-1;
}

/**
 * @brief Reject native socket creation without acquiring a descriptor.
 * @param family Ignored requested address family.
 * @param type Ignored requested socket type.
 * @param protocol Ignored requested protocol.
 * @return Minus one with errno ENOTSUP; no close obligation is created.
 */
int socket(int family, int type, int protocol)
{
    (void)family;
    (void)type;
    (void)protocol;
    return unavailable();
}

/**
 * @brief Reject native socket connection without contacting an endpoint.
 * @param descriptor Ignored descriptor; no descriptor ownership is transferred.
 * @param address Ignored borrowed address; no bytes are read.
 * @param length Ignored address extent.
 * @return Minus one with errno ENOTSUP.
 */
int connect(int descriptor, struct sockaddr const* address, socklen_t length)
{
    (void)descriptor;
    (void)address;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject native socket binding without acquiring a local endpoint.
 * @param descriptor Ignored descriptor.
 * @param address Ignored borrowed address; no bytes are read.
 * @param length Ignored address extent.
 * @return Minus one with errno ENOTSUP.
 */
int bind(int descriptor, struct sockaddr const* address, socklen_t length)
{
    (void)descriptor;
    (void)address;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject native listening without creating an accept queue.
 * @param descriptor Ignored descriptor.
 * @param backlog Ignored requested backlog.
 * @return Minus one with errno ENOTSUP.
 */
int listen(int descriptor, int backlog)
{
    (void)descriptor;
    (void)backlog;
    return unavailable();
}

/**
 * @brief Reject native acceptance without writing caller address storage.
 * @param descriptor Ignored listening descriptor.
 * @param address Caller-owned address storage left unchanged; it may be NULL.
 * @param length Caller-owned address extent left unchanged; it may be NULL.
 * @return Minus one with errno ENOTSUP; no accepted descriptor exists.
 */
int accept(int descriptor, struct sockaddr* address, socklen_t* length)
{
    (void)descriptor;
    (void)address;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject local-address discovery without changing caller outputs.
 * @param descriptor Ignored descriptor.
 * @param address Caller-owned address storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getsockname(int descriptor, struct sockaddr* address, socklen_t* length)
{
    (void)descriptor;
    (void)address;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject peer-address discovery without changing caller outputs.
 * @param descriptor Ignored descriptor.
 * @param address Caller-owned address storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getpeername(int descriptor, struct sockaddr* address, socklen_t* length)
{
    (void)descriptor;
    (void)address;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject native socket option mutation without reading option bytes.
 * @param descriptor Ignored descriptor.
 * @param level Ignored option level.
 * @param option Ignored option identifier.
 * @param value Ignored borrowed option storage.
 * @param length Ignored option extent.
 * @return Minus one with errno ENOTSUP.
 */
int setsockopt(int descriptor, int level, int option, void const* value, socklen_t length)
{
    (void)descriptor;
    (void)level;
    (void)option;
    (void)value;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject native socket option discovery without changing output storage.
 * @param descriptor Ignored descriptor.
 * @param level Ignored option level.
 * @param option Ignored option identifier.
 * @param value Caller-owned option storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getsockopt(int descriptor, int level, int option, void* value, socklen_t* length)
{
    (void)descriptor;
    (void)level;
    (void)option;
    (void)value;
    (void)length;
    return unavailable();
}

/**
 * @brief Reject native name resolution and clear its optional result slot.
 * @param node Ignored node name; no host lookup is performed.
 * @param service Ignored service name.
 * @param hints Ignored borrowed hints structure.
 * @param result Optional caller-owned result slot, set to NULL when supplied.
 * @return EAI_SYSTEM with errno ENOTSUP; no list allocation or free obligation is created.
 */
int getaddrinfo(char const* node, char const* service, struct addrinfo const* hints, struct addrinfo** result)
{
    (void)node;
    (void)service;
    (void)hints;
    if (result != NULL)
        *result = NULL;
    errno = ENOTSUP;
    return EAI_SYSTEM;
}

/**
 * @brief Accept the absent list from this unsupported resolver without freeing storage.
 * @details This no-op acquires and releases no storage; it must not be used to free foreign allocator-owned lists.
 * @param result Ignored pointer, expected to be NULL after this port's getaddrinfo failure.
 */
void freeaddrinfo(struct addrinfo* result)
{
    (void)result;
}

/**
 * @brief Return the fixed diagnostic for the unsupported native resolver.
 * @param code Ignored resolver status code.
 * @return Borrowed constant diagnostic text that the caller must not free.
 */
char const* gai_strerror(int code)
{
    (void)code;
    return "Native DNS is unavailable in the PHP WASIp1 profile";
}

/**
 * @brief Reject legacy host lookup without acquiring a result object.
 * @param name Ignored host name; no bytes are read for resolution.
 * @return NULL, with h_errno NO_RECOVERY and errno ENOTSUP.
 */
struct hostent* gethostbyname(char const* name)
{
    (void)name;
    h_errno = NO_RECOVERY;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject legacy reverse lookup without reading address bytes.
 * @param address Ignored borrowed address.
 * @param length Ignored address extent.
 * @param family Ignored address family.
 * @return NULL, with h_errno NO_RECOVERY and errno ENOTSUP.
 */
struct hostent* gethostbyaddr(void const* address, socklen_t length, int family)
{
    (void)address;
    (void)length;
    (void)family;
    h_errno = NO_RECOVERY;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject service-name lookup without accessing a host database.
 * @param name Ignored service name.
 * @param protocol Ignored protocol name.
 * @return NULL with errno ENOTSUP; no result storage is acquired.
 */
struct servent* getservbyname(char const* name, char const* protocol)
{
    (void)name;
    (void)protocol;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject service-port lookup without accessing a host database.
 * @param port Ignored network-order port.
 * @param protocol Ignored protocol name.
 * @return NULL with errno ENOTSUP; no result storage is acquired.
 */
struct servent* getservbyport(int port, char const* protocol)
{
    (void)port;
    (void)protocol;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject native datagram transmission without reading caller bytes.
 * @param descriptor Ignored descriptor.
 * @param bytes Ignored borrowed payload bytes.
 * @param length Ignored payload extent.
 * @param flags Ignored send flags.
 * @param address Ignored destination address.
 * @param address_length Ignored destination extent.
 * @return Minus one with errno ENOTSUP; no datagram is emitted.
 */
ssize_t sendto(int descriptor,
               void const* bytes,
               size_t length,
               int flags,
               struct sockaddr const* address,
               socklen_t address_length)
{
    (void)descriptor;
    (void)bytes;
    (void)length;
    (void)flags;
    (void)address;
    (void)address_length;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject native datagram receipt without changing payload/address outputs.
 * @param descriptor Ignored descriptor.
 * @param bytes Caller-owned payload storage left unchanged.
 * @param length Ignored payload capacity.
 * @param flags Ignored receive flags.
 * @param address Caller-owned source-address storage left unchanged.
 * @param address_length Caller-owned source-address extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
ssize_t
recvfrom(int descriptor, void* bytes, size_t length, int flags, struct sockaddr* address, socklen_t* address_length)
{
    (void)descriptor;
    (void)bytes;
    (void)length;
    (void)flags;
    (void)address;
    (void)address_length;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject reentrant host lookup while explicitly clearing its result/error slots.
 * @param name Ignored requested name.
 * @param entry Caller-owned host entry left unchanged.
 * @param bytes Caller-owned scratch bytes left unchanged.
 * @param length Ignored scratch capacity.
 * @param result Optional result slot set to NULL.
 * @param error Optional resolver-error slot set to NO_RECOVERY.
 * @return ENOTSUP, also assigned to errno; no lookup or allocation occurs.
 */
int gethostbyname_r(
    char const* name, struct hostent* entry, char* bytes, size_t length, struct hostent** result, int* error)
{
    (void)name;
    (void)entry;
    (void)bytes;
    (void)length;
    if (result != NULL)
        *result = NULL;
    if (error != NULL)
        *error = NO_RECOVERY;
    errno = ENOTSUP;
    return ENOTSUP;
}

/**
 * @brief Reject reverse-name formatting without modifying caller text outputs.
 * @param address Ignored borrowed address.
 * @param address_length Ignored address extent.
 * @param host Caller-owned host text left unchanged.
 * @param host_length Ignored host capacity.
 * @param service Caller-owned service text left unchanged.
 * @param service_length Ignored service capacity.
 * @param flags Ignored native name-selection flags.
 * @return EAI_SYSTEM with errno ENOTSUP.
 */
int getnameinfo(struct sockaddr const* address,
                socklen_t address_length,
                char* host,
                socklen_t host_length,
                char* service,
                socklen_t service_length,
                int flags)
{
    (void)address;
    (void)address_length;
    (void)host;
    (void)host_length;
    (void)service;
    (void)service_length;
    (void)flags;
    errno = ENOTSUP;
    return EAI_SYSTEM;
}

/**
 * @brief Reject native stream receipt without modifying caller bytes.
 * @param descriptor Ignored descriptor.
 * @param bytes Caller-owned receive bytes left unchanged.
 * @param length Ignored receive capacity.
 * @param flags Ignored receive flags.
 * @return Minus one with errno ENOTSUP.
 */
ssize_t recv(int descriptor, void* bytes, size_t length, int flags)
{
    (void)descriptor;
    (void)bytes;
    (void)length;
    (void)flags;
    return unavailable();
}

/**
 * @brief Reject native stream transmission without reading caller bytes.
 * @param descriptor Ignored descriptor.
 * @param bytes Ignored borrowed send bytes.
 * @param length Ignored payload extent.
 * @param flags Ignored send flags.
 * @return Minus one with errno ENOTSUP.
 */
ssize_t send(int descriptor, void const* bytes, size_t length, int flags)
{
    (void)descriptor;
    (void)bytes;
    (void)length;
    (void)flags;
    return unavailable();
}

/**
 * @brief Reject native socket shutdown without changing any owned endpoint.
 * @param descriptor Ignored descriptor.
 * @param direction Ignored shutdown direction.
 * @return Minus one with errno ENOTSUP.
 */
int shutdown(int descriptor, int direction)
{
    (void)descriptor;
    (void)direction;
    return unavailable();
}
