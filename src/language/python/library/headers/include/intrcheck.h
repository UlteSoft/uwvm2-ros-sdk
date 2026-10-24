/**
 * @file intrcheck.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_INTRCHECK_H
#define Py_INTRCHECK_H
#ifdef __cplusplus
extern "C"
{
#endif

    PyAPI_FUNC(int) PyOS_InterruptOccurred(void);

#ifdef HAVE_FORK
#if !defined(Py_LIMITED_API) || Py_LIMITED_API + 0 >= 0x03070000
    PyAPI_FUNC(void) PyOS_BeforeFork(void);
    PyAPI_FUNC(void) PyOS_AfterFork_Parent(void);
    PyAPI_FUNC(void) PyOS_AfterFork_Child(void);
#endif
#endif

    /* Deprecated, please use PyOS_AfterFork_Child() instead */
    Py_DEPRECATED(3.7) PyAPI_FUNC(void) PyOS_AfterFork(void);

#ifdef __cplusplus
}
#endif
#endif /* !Py_INTRCHECK_H */
