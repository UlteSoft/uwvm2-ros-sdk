/**
 * @file php/port/network/include/uwvm_network.h
 * @brief Declare the PHP port's exact unsupported native socket/process boundary.
 * @details The supplied effectful entries report ENOTSUP without creating native owners. Local address conversions
 * are separate pure byte algorithms; declarations do not grant network or filesystem authority.
 */
#ifndef UWVM_PHP_NETWORK_H
#define UWVM_PHP_NETWORK_H
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <sys/types.h>
#include <stdio.h>
#include <pwd.h>
#include <grp.h>
#include <sys/un.h>
#include "uwvm_syslog_constants.h"

/**
 * @brief Preserve original musl option constants for unsupported native sockets.
 */
#ifndef SO_ERROR
#define SO_ERROR 4
#endif
#ifndef POLLPRI
#define POLLPRI 0x002
#endif
#ifndef MSG_OOB
#define MSG_OOB 0x0001
#endif
#ifndef PF_UNIX
#define PF_UNIX 1
#endif
#ifndef SOL_IP
#define SOL_IP 0
#endif

/**
 * @brief Reject native socket creation without acquiring a descriptor.
 * @param family Ignored requested address family.
 * @param type Ignored requested socket type.
 * @param protocol Ignored requested protocol.
 * @return Minus one with errno ENOTSUP; no close obligation is created.
 */
int socket(int family, int type, int protocol);
/**
 * @brief Reject native socket connection without contacting an endpoint.
 * @param descriptor Ignored descriptor; no descriptor ownership is transferred.
 * @param address Ignored borrowed address; no bytes are read.
 * @param length Ignored address extent.
 * @return Minus one with errno ENOTSUP.
 */
int connect(int descriptor, struct sockaddr const* address, socklen_t length);
/**
 * @brief Reject native socket binding without acquiring a local endpoint.
 * @param descriptor Ignored descriptor.
 * @param address Ignored borrowed address; no bytes are read.
 * @param length Ignored address extent.
 * @return Minus one with errno ENOTSUP.
 */
int bind(int descriptor, struct sockaddr const* address, socklen_t length);
/**
 * @brief Reject native listening without creating an accept queue.
 * @param descriptor Ignored descriptor.
 * @param backlog Ignored requested backlog.
 * @return Minus one with errno ENOTSUP.
 */
int listen(int descriptor, int backlog);
/**
 * @brief Reject native acceptance without writing caller address storage.
 * @param descriptor Ignored listening descriptor.
 * @param address Caller-owned address storage left unchanged; it may be NULL.
 * @param length Caller-owned address extent left unchanged; it may be NULL.
 * @return Minus one with errno ENOTSUP; no accepted descriptor exists.
 */
int accept(int descriptor, struct sockaddr* address, socklen_t* length);
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
               socklen_t address_length);
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
recvfrom(int descriptor, void* bytes, size_t length, int flags, struct sockaddr* address, socklen_t* address_length);
/**
 * @brief Reject local-address discovery without changing caller outputs.
 * @param descriptor Ignored descriptor.
 * @param address Caller-owned address storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getsockname(int descriptor, struct sockaddr* address, socklen_t* length);
/**
 * @brief Reject peer-address discovery without changing caller outputs.
 * @param descriptor Ignored descriptor.
 * @param address Caller-owned address storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getpeername(int descriptor, struct sockaddr* address, socklen_t* length);
/**
 * @brief Reject native socket option mutation without reading option bytes.
 * @param descriptor Ignored descriptor.
 * @param level Ignored option level.
 * @param option Ignored option identifier.
 * @param value Ignored borrowed option storage.
 * @param length Ignored option extent.
 * @return Minus one with errno ENOTSUP.
 */
int setsockopt(int descriptor, int level, int option, void const* value, socklen_t length);
/**
 * @brief Reject native socket option discovery without changing output storage.
 * @param descriptor Ignored descriptor.
 * @param level Ignored option level.
 * @param option Ignored option identifier.
 * @param value Caller-owned option storage left unchanged.
 * @param length Caller-owned extent left unchanged.
 * @return Minus one with errno ENOTSUP.
 */
int getsockopt(int descriptor, int level, int option, void* value, socklen_t* length);
/**
 * @brief Reject mutation of a native process creation mask.
 * @param mask Ignored requested mask; no authority is changed.
 * @return (mode_t)-1 with errno ENOTSUP.
 */
mode_t umask(mode_t mask);
/**
 * @brief Reject native user identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
uid_t getuid(void);
/**
 * @brief Reject native effective user identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
uid_t geteuid(void);
/**
 * @brief Reject native group identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
gid_t getgid(void);
/**
 * @brief Reject native effective group identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
gid_t getegid(void);
/**
 * @brief Reject supplementary-group discovery without writing caller storage.
 * @param count Ignored element capacity.
 * @param groups Caller-owned gid array left unchanged; no pointer is dereferenced.
 * @return Minus one with errno ENOTSUP.
 */
int getgroups(int count, gid_t groups[]);
/**
 * @brief Reject native ownership changes without accessing a pathname.
 * @param filename Ignored pathname; no filesystem lookup occurs.
 * @param owner Ignored requested user identifier.
 * @param group Ignored requested group identifier.
 * @return Minus one with errno ENOTSUP.
 */
int chown(char const* filename, uid_t owner, gid_t group);
/**
 * @brief Reject symlink ownership changes through the same unsupported boundary.
 * @param filename Ignored symlink pathname; no lookup or dereference occurs.
 * @param owner Ignored requested user identifier.
 * @param group Ignored requested group identifier.
 * @return Minus one with errno ENOTSUP.
 */
int lchown(char const* filename, uid_t owner, gid_t group);
/**
 * @brief Declare the selected WASI libc's unsupported native mode-change boundary.
 * @param filename Borrowed pathname in the original libc declaration.
 * @param mode Requested native permission mode.
 * @return The selected WASI implementation reports failure with ENOSYS; this header supplies no replacement body.
 */
int chmod(char const* filename, mode_t mode);
/**
 * @brief Reject discovery of the unavailable parent process identifier.
 * @return Minus one with errno ENOTSUP; no native process state is exposed.
 */
pid_t getppid(void);
/**
 * @brief Reject process-pipe creation without spawning a shell or command.
 * @param command Ignored command text; no source or process is evaluated.
 * @param mode Ignored stream mode.
 * @return NULL with errno ENOTSUP; no FILE owner or child process is created.
 */
FILE* popen(char const* command, char const* mode);
/**
 * @brief Reject closing a native process stream that cannot be created here.
 * @param stream Ignored stream pointer; no ownership is consumed.
 * @return Minus one with errno ENOTSUP; foreign FILE storage is not closed.
 */
int pclose(FILE* stream);
/**
 * @brief Reject native descriptor duplication without creating another owner.
 * @param descriptor Ignored source descriptor; it remains untouched.
 * @return Minus one with errno ENOTSUP.
 */
int dup(int descriptor);
/**
 * @brief Reject native descriptor replacement without closing either descriptor.
 * @param source Ignored source descriptor.
 * @param destination Ignored destination descriptor.
 * @return Minus one with errno ENOTSUP.
 */
int dup2(int source, int destination);
/**
 * @brief Reject discovery of the unavailable native descriptor table size.
 * @return Minus one with errno ENOTSUP; no native process state is exposed.
 */
int getdtablesize(void);
/**
 * @brief Reject ambient temporary-file creation without changing the template.
 * @param pattern Caller-owned pathname template left unchanged; no pointer bytes are accessed.
 * @return Minus one with errno ENOTSUP; no descriptor or file is created.
 */
int mkstemp(char* pattern);
#endif
