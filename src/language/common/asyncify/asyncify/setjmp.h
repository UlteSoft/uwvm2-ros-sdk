/**
 * @file common/asyncify-v1/asyncify/setjmp.h
 * @brief Select the maintained Asyncify jump implementation for standalone C VMs.
 * @details All jump state belongs to the included original Wasm support API. This selector does not use sysroot
 * setjmp or provide OS signal-mask behavior.
 */
#include "wasm/setjmp.h"
