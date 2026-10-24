# @file wasi-llvm23.cmake
# @brief Select the real retained LLVM 23 and qualified wasm32 WASI Preview 1 sysroot.
# @details This is an explicit cross-compilation toolchain, not a wasi-sdk
# version impersonation. Native host programs remain outside the target root;
# every target include and library lookup uses the qualified read-only sysroot.
# The producer records the exact compiler and library identities independently.

set(CMAKE_SYSTEM_NAME WASI)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR wasm32)

if(NOT DEFINED ENV{UWVM_MONO_LLVM_ROOT})
    message(FATAL_ERROR "Set the exact retained LLVM compiler root")
endif()
if(NOT DEFINED ENV{UWVM_MONO_RESOURCE_ROOT})
    message(FATAL_ERROR "Set the exact retained LLVM target resource headers")
endif()
if(NOT DEFINED ENV{UWVM_MONO_SYSROOT})
    message(FATAL_ERROR "Set the genuine qualified WASI target sysroot")
endif()

set(CMAKE_C_COMPILER "$ENV{UWVM_MONO_LLVM_ROOT}/bin/clang")
set(CMAKE_CXX_COMPILER "$ENV{UWVM_MONO_LLVM_ROOT}/bin/clang++")
set(CMAKE_ASM_COMPILER "$ENV{UWVM_MONO_LLVM_ROOT}/bin/clang")
set(CMAKE_AR "$ENV{UWVM_MONO_LLVM_ROOT}/bin/llvm-ar")
set(CMAKE_RANLIB "$ENV{UWVM_MONO_LLVM_ROOT}/bin/llvm-ranlib")
set(CMAKE_LINKER "$ENV{UWVM_MONO_LLVM_ROOT}/bin/wasm-ld")
set(CMAKE_C_COMPILER_TARGET wasm32-wasip1)
set(CMAKE_CXX_COMPILER_TARGET wasm32-wasip1)
set(CMAKE_ASM_COMPILER_TARGET wasm32-wasip1)
set(CMAKE_SYSROOT "$ENV{UWVM_MONO_SYSROOT}")

set(_uwvm_mono_target_flags
    "-no-canonical-prefixes -fintegrated-cc1 -resource-dir=$ENV{UWVM_MONO_RESOURCE_ROOT} -fexceptions -fwasm-exceptions -mllvm -wasm-use-legacy-eh=false")
set(CMAKE_C_FLAGS_INIT "${_uwvm_mono_target_flags}")
set(CMAKE_CXX_FLAGS_INIT "${_uwvm_mono_target_flags}")
# @brief Keep assembly on the same genuine cross compiler and integrated frontend.
# @details The retained ELF launcher cannot respawn itself as a bare cc1 process.
# An explicit target and sysroot also prevent assembler host defaults from
# leaking into the otherwise cross-configured runtime build.
set(CMAKE_ASM_FLAGS_INIT
    "--target=wasm32-wasip1 --sysroot=$ENV{UWVM_MONO_SYSROOT} ${_uwvm_mono_target_flags}")
set(CMAKE_EXE_LINKER_FLAGS_INIT
    "-fexceptions -fwasm-exceptions -fuse-ld=$ENV{UWVM_MONO_LLVM_ROOT}/bin/wasm-ld")

set(CMAKE_FIND_ROOT_PATH "$ENV{UWVM_MONO_SYSROOT}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
