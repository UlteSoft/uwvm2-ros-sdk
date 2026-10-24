// SPDX-License-Identifier: Apache-2.0
/**
 * @file wasip1_main.c
 * @brief Adapt a foreign-language command entry to Clang's WASI startup ABI.
 * @details Clang lowers main(argc, argv) to the WASI libc entry symbol expected
 * by crt1-command. Producers such as D emit a literal C symbol instead. This
 * translation unit supplies the real compiler-generated startup convention;
 * the language entry runs in the same Wasm memory and receives borrowed WASI
 * arguments. No host-language process, allocation or ROS operation is added.
 */
#if !defined(__wasm32__) || !defined(__wasi__)
# error "This startup adapter is only valid inside a wasm32 WASI command"
#endif

/**
 * @brief Enter the statically linked guest language program exactly once.
 * @param argc Number of WASI arguments, including executable name.
 * @param argv Borrowed NUL-terminated argument array owned by WASI libc.
 * @return Language program exit status, propagated unchanged to WASI libc.
 */
extern int agibot_language_main(int argc, char** argv);

#if defined(AGIBOT_NIM_RUNTIME_INIT)
/** @brief Initialize the actual statically linked Nim runtime exactly once. */
extern void NimMain(void);
#endif

/** @brief Supply Clang's actual WASI command startup convention. */
int main(int argc, char** argv)
{
#if defined(AGIBOT_NIM_RUNTIME_INIT)
    NimMain();
#endif
    return agibot_language_main(argc, argv);
}
