/**
 * @file pystrcmp.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_STRCMP_H
#define Py_STRCMP_H

#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_FUNC(int) PyOS_mystrnicmp(const char*, const char*, Py_ssize_t);
    PyAPI_FUNC(int) PyOS_mystricmp(const char*, const char*);

#ifdef MS_WINDOWS
#define PyOS_strnicmp strnicmp
#define PyOS_stricmp stricmp
#else
#define PyOS_strnicmp PyOS_mystrnicmp
#define PyOS_stricmp PyOS_mystricmp
#endif

#ifdef __cplusplus
}
#endif

#endif /* !Py_STRCMP_H */
