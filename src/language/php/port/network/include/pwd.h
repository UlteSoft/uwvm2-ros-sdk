/**
 * @file php/port/network/include/pwd.h
 * @brief Retain original account record layouts and compatibility lookup declarations.
 * @details The supplied getpwnam/getpwuid bodies explicitly fail with ENOTSUP and return no owner. Reentrant,
 * cursor and stream declarations are retained for source compatibility rather than implemented here.
 */
#ifndef _PWD_H
#define _PWD_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <features.h>

#define __NEED_size_t
#define __NEED_uid_t
#define __NEED_gid_t

#ifdef _GNU_SOURCE
#define __NEED_FILE
#endif

#include <bits/alltypes.h>

    struct passwd
    {
        char* pw_name;
        char* pw_passwd;
        uid_t pw_uid;
        gid_t pw_gid;
        char* pw_gecos;
        char* pw_dir;
        char* pw_shell;
    };

#if defined(_XOPEN_SOURCE) || defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
    /**
     * @brief Retain the upstream declaration for upstream pw database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void setpwent(void);
    /**
     * @brief Retain the upstream declaration for upstream pw database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endpwent(void);
    /**
     * @brief Retain the upstream declaration for upstream pw database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct passwd* getpwent(void);
#endif

    /**
     * @brief Reject numeric user lookup without exposing host account records.
     * @par Parameters
     * 1. Ignored requested user identifier.
     * @return NULL with errno ENOTSUP; no passwd storage is returned.
     */
    struct passwd* getpwuid(uid_t);
    /**
     * @brief Reject user-name lookup without exposing a host account database.
     * @par Parameters
     * 1. Ignored requested user name.
     * @return NULL with errno ENOTSUP; no passwd storage is returned.
     */
    struct passwd* getpwnam(const char*);
    /**
     * @brief Retain the upstream declaration for reentrant numeric account lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. User identifier.
     * 2. Caller-owned passwd structure.
     * 3. Caller-owned scratch bytes.
     * 4. Scratch capacity.
     * 5. Caller-owned result-pointer slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getpwuid_r(uid_t, struct passwd*, char*, size_t, struct passwd**);
    /**
     * @brief Retain the upstream declaration for reentrant account-name lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed account name.
     * 2. Caller-owned passwd structure.
     * 3. Caller-owned scratch bytes.
     * 4. Scratch capacity.
     * 5. Caller-owned result-pointer slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getpwnam_r(const char*, struct passwd*, char*, size_t, struct passwd**);

#ifdef _GNU_SOURCE
    /**
     * @brief Retain the upstream declaration for passwd parsing from a native stream.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed input FILE owner.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct passwd* fgetpwent(FILE*);
    /**
     * @brief Retain the upstream declaration for passwd formatting to a native stream.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed passwd record.
     * 2. Borrowed output FILE owner.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int putpwent(const struct passwd*, FILE*);
#endif

#ifdef __cplusplus
}
#endif

#endif
