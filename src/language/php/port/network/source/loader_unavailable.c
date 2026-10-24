/**
 * @file php/port/network/source/loader_unavailable.c
 * @brief Reject native dynamic loading and page advice in the static PHP WASI command.
 * @details Every loader operation reports ENOTSUP without acquiring a handle. A process-static pending diagnostic
 * is consumed once by dlerror; page advice changes no memory-region ownership.
 */
#include <dlfcn.h>
#include <errno.h>
#include <stddef.h>

/**
 * @brief Retain one pending diagnostic in this explicitly single-threaded VM.
 */
static int loader_error;

/**
 * @brief Reject dynamic native module loading in the static PHP command.
 * @details No module handle is acquired, including when the filename is NULL.
 * @param filename Ignored original module name; no pointer bytes are read.
 * @param flags Ignored native loader flags.
 * @return NULL, with errno ENOTSUP and a pending single-threaded dlerror diagnostic.
 */
void* dlopen(char const* filename, int flags)
{
    (void)filename;
    (void)flags;
    loader_error = 1;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject native symbol resolution without exposing an address.
 * @param handle Ignored unsupported loader handle; no ownership is transferred.
 * @param name Ignored symbol name; no lookup is attempted.
 * @return NULL, with errno ENOTSUP and a pending loader diagnostic.
 */
void* dlsym(void* handle, char const* name)
{
    (void)handle;
    (void)name;
    loader_error = 1;
    errno = ENOTSUP;
    return NULL;
}

/**
 * @brief Reject release of a native loader handle that this port cannot acquire.
 * @param handle Ignored unsupported handle; no resource is destroyed.
 * @return Minus one, with errno ENOTSUP and a pending loader diagnostic.
 */
int dlclose(void* handle)
{
    (void)handle;
    loader_error = 1;
    errno = ENOTSUP;
    return -1;
}

/**
 * @brief Consume the pending unsupported-loader diagnostic exactly once.
 * @details The single-threaded pending flag is cleared on a non-NULL return.
 * @return Borrowed process-static diagnostic text, or NULL if no error is pending; the caller must not free it.
 */
char* dlerror(void)
{
    if (loader_error == 0)
    {
        return NULL;
    }
    loader_error = 0;
    return "native dynamic loading is unsupported by the static PHP WASIp1 profile";
}

/**
 * @brief Reject unavailable native page-advice operations.
 * @param address Ignored region address; no bytes are dereferenced or changed.
 * @param length Ignored region extent.
 * @param advice Ignored native advice value.
 * @return Minus one with errno ENOTSUP; no page or region ownership changes.
 */
int madvise(void* address, size_t length, int advice)
{
    (void)address;
    (void)length;
    (void)advice;
    errno = ENOTSUP;
    return -1;
}
