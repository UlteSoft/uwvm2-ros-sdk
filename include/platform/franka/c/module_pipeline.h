/** @file module_pipeline.h
 * @brief Core Wasm function imports for the four-module Noetic example.
 * @details Library boundaries carry scalars, including one target-width ABI
 * probe. That probe transports bits, never an address. Every module owns
 * its own linear memory; no caller pointer, borrowed text or ROS handle is sent
 * across a module boundary. This contract makes no LLVM PIC/dylink assumption.
 */
#pragma once
#include <stdint.h>
#include <franka/c/module_algorithm.h>
#include <franka/c/module_probe.h>
#if defined(__wasm__)
# define FRANKA_MODULE_IMPORT(module, name) __attribute__((import_module(module), import_name(name)))
#else
# define FRANKA_MODULE_IMPORT(module, name)
#endif
#if defined(FRANKA_BUILD_IO)
# define FRANKA_IO_IMPORT(name)
#else
# define FRANKA_IO_IMPORT(name) FRANKA_MODULE_IMPORT("io", name)
#endif
#if defined(FRANKA_BUILD_ALGORITHM)
# define FRANKA_ALGORITHM_IMPORT(name)
#else
# define FRANKA_ALGORITHM_IMPORT(name) FRANKA_MODULE_IMPORT("algorithm", name)
#endif
#if defined(FRANKA_BUILD_ROS_COMM)
# define FRANKA_ROS_IMPORT(name)
#else
# define FRANKA_ROS_IMPORT(name) FRANKA_MODULE_IMPORT("ros_comm", name)
#endif
/** @brief Observe io's constructor before any library operation. @return 201 after Core start. */
FRANKA_IO_IMPORT("ready") uint32_t franka_module_io_ready(void);
/** @brief Observe archive-before-algorithm constructor order. @return 202 after both ran. */
FRANKA_ALGORITHM_IMPORT("ready") uint32_t franka_module_algorithm_ready(void);
/** @brief Echo target-width scalar bits to detect a mixed-width ABI graph.
 * @param bits Opaque integer input, never a pointer or cross-memory address.
 * @return Identical integer bits. A width mismatch must fail Core import binding.
 */
FRANKA_ALGORITHM_IMPORT("width_echo") uintptr_t franka_module_width_echo(uintptr_t bits);
/** @brief Observe ros_comm's constructor before opening ROS. @return 203 after Core start. */
FRANKA_ROS_IMPORT("ready") uint32_t franka_module_ros_ready(void);
/** @brief Print copied scalar outcomes through io's basic WASI standard streams.
 * @param length Native UTF-8 payload bytes; meaningful only after primary zero.
 * @param digest Computed FNV-1a of every admitted native text byte.
 * @param value Algorithm result computed from the digest during execution.
 * @param primary Original communication/decode/supervision errno.
 * @param cleanup Original one-attempt retirement errno.
 * @param main_probe Main's packed original denial/cleanup result.
 * @param io_probe Io's packed original denial/cleanup result.
 * @param algorithm_probe Algorithm's packed original denial/cleanup result.
 */
FRANKA_IO_IMPORT("report")
void franka_module_report(uint32_t length,
                          uint32_t digest,
                          uint32_t value,
                          uint32_t primary,
                          uint32_t cleanup,
                          uint64_t main_probe,
                          uint64_t io_probe,
                          uint64_t algorithm_probe);
/** @brief Probe io's own ungranted ROS1 imports. @return Packed original statuses. */
FRANKA_IO_IMPORT("denied_probe") uint64_t franka_module_io_probe(void);
/** @brief Compute from actual caller data using the transitively linked archive.
 * @param value Actual digest bits. @return Computed unsigned result.
 */
FRANKA_ALGORITHM_IMPORT("step") uint32_t franka_module_step(uint32_t value);
/** @brief Probe algorithm's own ungranted ROS1 imports. @return Packed statuses. */
FRANKA_ALGORITHM_IMPORT("denied_probe") uint64_t franka_module_algorithm_probe(void);
/** @brief Open and activate one explicitly granted ROS1 subscription once.
 * @return Original open/activation errno. Main must subsequently close once.
 */
FRANKA_ROS_IMPORT("open") uint32_t franka_module_ros_open(void);
/** @brief Poll once and validate one complete bounded native String.
 * @return Zero success; 11 idle; original transport/decode errno otherwise.
 */
FRANKA_ROS_IMPORT("poll") uint32_t franka_module_ros_poll(void);
/** @brief Read copied byte count after a successful poll. @return UTF-8 bytes. */
FRANKA_ROS_IMPORT("length") uint32_t franka_module_ros_length(void);
/** @brief Read copied digest after a successful poll. @return Full uint32 bits. */
FRANKA_ROS_IMPORT("digest") uint32_t franka_module_ros_digest(void);
/** @brief Wait once using ros_comm's explicitly granted monotonic clock.
 * @return Zero on one 20 ms event; original finite-clock error otherwise.
 */
FRANKA_ROS_IMPORT("pause") uint32_t franka_module_ros_pause(void);
/** @brief Retire before at most one native close attempt. @return Cleanup errno. */
FRANKA_ROS_IMPORT("close") uint32_t franka_module_ros_close(void);
