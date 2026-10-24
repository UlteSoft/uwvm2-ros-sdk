/**
 * @file pycore_dict_state.h
 * @brief Preserve the genuine CPython 3.14.8 implementation.
 * @details Original Python Software Foundation license and algorithms are retained.
 * This reviewed SDK tree adds English file contracts and Allman formatting.
 */
#ifndef Py_INTERNAL_DICT_STATE_H
#define Py_INTERNAL_DICT_STATE_H
#ifdef __cplusplus
extern "C"
{
#endif

#ifndef Py_BUILD_CORE
#error "this header requires Py_BUILD_CORE define"
#endif

#define DICT_MAX_WATCHERS 8
#define DICT_WATCHED_MUTATION_BITS 4

    struct _Py_dict_state
    {
        uint32_t next_keys_version;
        PyMutex watcher_mutex;          // Protects the watchers array (free-threaded builds)
        _PyOnceFlag watcher_setup_once; // One-time optimizer watcher setup
        PyDict_WatchCallback watchers[DICT_MAX_WATCHERS];
    };

#define _dict_state_INIT                                                                                     \
    {                                                                                                        \
        .next_keys_version = 2,                                                                              \
    }

#ifdef __cplusplus
}
#endif
#endif /* !Py_INTERNAL_DICT_STATE_H */
