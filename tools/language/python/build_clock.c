/**
 * @file build_clock.c
 *
 * @brief Inspect the real target preprocessor's explicit reproducible build clock.
 *
 * @details This maintenance input is preprocessed only. It is never linked into
 * the engine and cannot replace any genuine CPython implementation.
 */

char const uwvm_cpython_build_date[] = __DATE__;
char const uwvm_cpython_build_time[] = __TIME__;
