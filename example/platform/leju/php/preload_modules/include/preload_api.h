/** @file preload_api.h
 * @brief Scalar module ABI and bounded IO-owned transfer lifetime.
 * @details A token names one generation of IO-owned storage, never a pointer.
 * Writes are sequential and bounded. Commit or abort retires that generation.
 * ROS handles and codec buffers never leave the ros_comm module's memory.
 */
#ifndef PRELOAD_API_H
#define PRELOAD_API_H
#include <stdint.h>
#ifdef __cplusplus
#define MODULE_C extern "C"
#else
#define MODULE_C
#endif
#define MODULE_EXPORT(name) MODULE_C __attribute__((export_name(name)))
#define MODULE_IMPORT(module, name) MODULE_C __attribute__((import_module(module), import_name(name)))
#endif
