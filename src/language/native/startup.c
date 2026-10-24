/**
 * @file startup.c
 * @brief Supply only WASI command startup for source frontends with a scalar entry.
 * @details The source language owns all application decisions, argument parsing,
 * standard-stream operations and results. This bridge owns no ROS import,
 * record, codec, test input, result formatting or runtime policy.
 */
#include <stdint.h>

/** @brief Execute the actual source-language command and return its exit status. */
extern uint32_t nl_entry(void);

#if defined(UWVM_NATIVE_NIM)
/** @brief Initialize the genuine generated Nim module before calling its entry. */
extern void NimMain(void);
#endif

/**
 * @brief Enter the source-language command after the ordinary WASI startup.
 * @param argc Argument count managed by the WASI C runtime.
 * @param argv Borrowed argument storage; this bridge does not inspect it.
 * @return The source-language entry's original process status.
 */
int main(int argc, char** argv)
{
    (void)argc;
    (void)argv;
#if defined(UWVM_NATIVE_NIM)
    NimMain();
#endif
    return (int)nl_entry();
}
