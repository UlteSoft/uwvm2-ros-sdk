/**
 * @file php/port/network/source/os_unavailable.c
 * @brief Preserve explicit unsupported failures for native process and identity services.
 * @details These entries never spawn commands, expose host account data, duplicate descriptors or deliver OS logs.
 * Ignored caller pointers are not retained, and all original failure values remain unchanged.
 */
#include "uwvm_network.h"
#include <errno.h>
#include <stddef.h>

/**
 * @brief Reject native user identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
uid_t getuid(void)
{
    errno = ENOTSUP;
    return (uid_t)-1;
}

/**
 * @brief Reject native effective user identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
uid_t geteuid(void)
{
    errno = ENOTSUP;
    return (uid_t)-1;
}

/**
 * @brief Reject native group identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
gid_t getgid(void)
{
    errno = ENOTSUP;
    return (gid_t)-1;
}

/**
 * @brief Reject native effective group identity discovery.
 * @return The corresponding identifier type cast from minus one, with errno ENOTSUP; no host identity is
 * fabricated.
 */
gid_t getegid(void)
{
    errno = ENOTSUP;
    return (gid_t)-1;
}

/**
 * @brief Reject discovery of the unavailable parent process identifier.
 * @return Minus one with errno ENOTSUP; no native process state is exposed.
 */
pid_t getppid(void)
{
    errno = ENOTSUP;
    return (pid_t)-1;
}

/**
 * @brief Reject supplementary-group discovery without writing caller storage.
 * @param count Ignored element capacity.
 * @param groups Caller-owned gid array left unchanged; no pointer is dereferenced.
 * @return Minus one with errno ENOTSUP.
 */
int getgroups(int count, gid_t groups[])
{
    (void)count;
    (void)groups;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject native ownership changes without accessing a pathname.
 * @param filename Ignored pathname; no filesystem lookup occurs.
 * @param owner Ignored requested user identifier.
 * @param group Ignored requested group identifier.
 * @return Minus one with errno ENOTSUP.
 */
int chown(char const* filename, uid_t owner, gid_t group)
{
    (void)filename;
    (void)owner;
    (void)group;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject symlink ownership changes through the same unsupported boundary.
 * @param filename Ignored symlink pathname; no lookup or dereference occurs.
 * @param owner Ignored requested user identifier.
 * @param group Ignored requested group identifier.
 * @return Minus one with errno ENOTSUP.
 */
int lchown(char const* filename, uid_t owner, gid_t group)
{
    return chown(filename, owner, group);
}

/* The qualified WASI libc supplies chmod with an explicit ENOSYS result. */

/**
 * @brief Reject process-pipe creation without spawning a shell or command.
 * @param command Ignored command text; no source or process is evaluated.
 * @param mode Ignored stream mode.
 * @return NULL with errno ENOTSUP; no FILE owner or child process is created.
 */
FILE* popen(char const* command, char const* mode)
{
    (void)command;
    (void)mode;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject closing a native process stream that cannot be created here.
 * @param stream Ignored stream pointer; no ownership is consumed.
 * @return Minus one with errno ENOTSUP; foreign FILE storage is not closed.
 */
int pclose(FILE* stream)
{
    (void)stream;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject user-name lookup without exposing a host account database.
 * @param name Ignored requested user name.
 * @return NULL with errno ENOTSUP; no passwd storage is returned.
 */
struct passwd* getpwnam(char const* name)
{
    (void)name;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject numeric user lookup without exposing host account records.
 * @param owner Ignored requested user identifier.
 * @return NULL with errno ENOTSUP; no passwd storage is returned.
 */
struct passwd* getpwuid(uid_t owner)
{
    (void)owner;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject group-name lookup without exposing a host group database.
 * @param name Ignored requested group name.
 * @return NULL with errno ENOTSUP; no group storage is returned.
 */
struct group* getgrnam(char const* name)
{
    (void)name;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject numeric group lookup without exposing host group records.
 * @param group Ignored requested group identifier.
 * @return NULL with errno ENOTSUP; no group storage is returned.
 */
struct group* getgrgid(gid_t group)
{
    (void)group;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject native descriptor duplication without creating another owner.
 * @param descriptor Ignored source descriptor; it remains untouched.
 * @return Minus one with errno ENOTSUP.
 */
int dup(int descriptor)
{
    (void)descriptor;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject native descriptor replacement without closing either descriptor.
 * @param source Ignored source descriptor.
 * @param destination Ignored destination descriptor.
 * @return Minus one with errno ENOTSUP.
 */
int dup2(int source, int destination)
{
    (void)source;
    (void)destination;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject discovery of the unavailable native descriptor table size.
 * @return Minus one with errno ENOTSUP; no native process state is exposed.
 */
int getdtablesize(void)
{
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Report unsupported native logger closure without acquiring logger state.
 * @details Sets errno to ENOTSUP; no socket, file or logger handle is closed.
 */
void closelog(void)
{
    errno = ENOTSUP;
}

/**
 * @brief Reject native logger connection without retaining caller text.
 * @details Sets errno to ENOTSUP; no logger owner or host side channel is created.
 * @param identity Ignored borrowed identity text.
 * @param options Ignored logger options.
 * @param facility Ignored logger facility.
 */
void openlog(char const* identity, int options, int facility)
{
    (void)identity;
    (void)options;
    (void)facility;
    errno = ENOTSUP;
}

/**
 * @brief Reject mutation of an unavailable native logger mask.
 * @param mask Ignored requested mask.
 * @return Minus one with errno ENOTSUP.
 */
int setlogmask(int mask)
{
    (void)mask;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Reject native log delivery without evaluating format arguments.
 * @details Sets errno to ENOTSUP and emits no native log record.
 * @param priority Ignored log priority.
 * @param format Ignored format text; no bytes are formatted.
 * @param arguments Borrowed va_list left unused; this entry does not consume or end it.
 */
void vsyslog(int priority, char const* format, va_list arguments)
{
    (void)priority;
    (void)format;
    (void)arguments;
    errno = ENOTSUP;
}

/**
 * @brief Reject native log delivery without formatting variadic arguments.
 * @details Sets errno to ENOTSUP; no message is delivered or allocated.
 * @param priority Ignored log priority.
 * @param format Ignored format text.
 * @param ... No variadic argument is read or retained.
 */
void syslog(int priority, char const* format, ...)
{
    (void)priority;
    (void)format;
    errno = ENOTSUP;
}

/**
 * @brief Reject ambient temporary-file creation without changing the template.
 * @param pattern Caller-owned pathname template left unchanged; no pointer bytes are accessed.
 * @return Minus one with errno ENOTSUP; no descriptor or file is created.
 */
int mkstemp(char* pattern)
{
    (void)pattern;
    errno = ENOTSUP;
    return -1;
}
