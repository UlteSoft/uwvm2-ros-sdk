/**
 * @file php/port/network/include/grp.h
 * @brief Retain original group record layouts and compatibility lookup declarations.
 * @details The supplied getgrnam/getgrgid bodies explicitly fail with ENOTSUP and return no owner. Other upstream
 * declarations in this header do not provide implementations or expose a host group database.
 */
#ifndef _GRP_H
#define _GRP_H

#ifdef __cplusplus
extern "C"
{
#endif

#include <features.h>

#define __NEED_size_t
#define __NEED_gid_t

#ifdef _GNU_SOURCE
#define __NEED_FILE
#endif

#include <bits/alltypes.h>

    struct group
    {
        char* gr_name;
        char* gr_passwd;
        gid_t gr_gid;
        char** gr_mem;
    };

    /**
     * @brief Reject numeric group lookup without exposing host group records.
     * @par Parameters
     * 1. Ignored requested group identifier.
     * @return NULL with errno ENOTSUP; no group storage is returned.
     */
    struct group* getgrgid(gid_t);
    /**
     * @brief Reject group-name lookup without exposing a host group database.
     * @par Parameters
     * 1. Ignored requested group name.
     * @return NULL with errno ENOTSUP; no group storage is returned.
     */
    struct group* getgrnam(const char*);

    /**
     * @brief Retain the upstream declaration for reentrant numeric group lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Group identifier.
     * 2. Caller-owned group structure.
     * 3. Caller-owned scratch bytes.
     * 4. Scratch capacity.
     * 5. Caller-owned result-pointer slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getgrgid_r(gid_t, struct group*, char*, size_t, struct group**);
    /**
     * @brief Retain the upstream declaration for reentrant group-name lookup.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed group name.
     * 2. Caller-owned group structure.
     * 3. Caller-owned scratch bytes.
     * 4. Scratch capacity.
     * 5. Caller-owned result-pointer slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getgrnam_r(const char*, struct group*, char*, size_t, struct group**);

#if defined(_XOPEN_SOURCE) || defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
    /**
     * @brief Retain the upstream declaration for upstream gr database cursor get operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct group* getgrent(void);
    /**
     * @brief Retain the upstream declaration for upstream gr database cursor end operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void endgrent(void);
    /**
     * @brief Retain the upstream declaration for upstream gr database cursor set operation.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     */
    void setgrent(void);
#endif

#ifdef _GNU_SOURCE
    /**
     * @brief Retain the upstream declaration for group parsing from a native stream.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed input FILE owner.
     * @return No result or ownership is supplied by this declaration alone.
     */
    struct group* fgetgrent(FILE*);
    /**
     * @brief Retain the upstream declaration for group formatting to a native stream.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed group record.
     * 2. Borrowed output FILE owner.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int putgrent(const struct group*, FILE*);
#endif

#if defined(_GNU_SOURCE) || defined(_BSD_SOURCE)
    /**
     * @brief Retain the upstream declaration for supplementary group enumeration.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed user name.
     * 2. Base group identifier.
     * 3. Caller-owned group array.
     * 4. Caller-owned array count/capacity slot.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int getgrouplist(const char*, gid_t, gid_t*, int*);
    /**
     * @brief Retain the upstream declaration for supplementary group replacement.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Group count.
     * 2. Borrowed group array.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int setgroups(size_t, const gid_t*);
    /**
     * @brief Retain the upstream declaration for user-based supplementary group initialization.
     * @details This support directory supplies no implementation of this entry. A separate implementation is required
     * before it can be called; inclusion never enables a native database, resolver or socket.
     * @par Parameters
     * 1. Borrowed user name.
     * 2. Base group identifier.
     * @return No result or ownership is supplied by this declaration alone.
     */
    int initgroups(const char*, gid_t);
#endif

#ifdef __cplusplus
}
#endif

#endif
