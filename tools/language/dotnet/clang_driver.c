/**
 * @file clang_driver.c
 * @brief Preserve an explicit WASI target when Mono's bundle task invokes Clang.
 * @details LLVM's generic distribution defaults to its native host target.
 * Mono Preview 6's EmitBundleObjectFiles task supplies no target flags, so this
 * genuine native build-tool launcher adds the admitted target before execv.
 * It computes no guest application value and is never linked into a Wasm file.
 */
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

/**
 * @brief Replace this launcher with the explicitly provisioned genuine Clang.
 * @param argc Count of borrowed original compiler arguments.
 * @param argv Borrowed original compiler arguments, unchanged after the prefix.
 * @return Only on local setup/exec failure, with exit status 127.
 * @details UWVM_MANAGED_LLVM_CLANG is an exact absolute compiler path set by
 * the owning Xmake build. The allocated argv table is process-owned until exec.
 * No shell, source translation, subprocess interpreter, or PATH probe is used.
 */
int main(int argc, char** argv)
{
    char const* compiler = getenv("UWVM_MANAGED_LLVM_CLANG");
    char const* sysroot = getenv("UWVM_MANAGED_WASI_SYSROOT");
    char const* resource = getenv("UWVM_MANAGED_LLVM_RESOURCE");
    char const* linker = getenv("UWVM_MANAGED_LLVM_LINKER");
    if (!compiler || compiler[0] != '/' || !sysroot || sysroot[0] != '/' || !resource || resource[0] != '/' ||
        !linker || linker[0] != '/')
    {
        fputs("Set the exact provisioned UWVM_MANAGED_LLVM_CLANG path\n", stderr);
        return 127;
    }
    char** arguments = calloc((size_t)argc + 9, sizeof *arguments);
    char* sysroot_flag = malloc(strlen(sysroot) + 11);
    char* resource_flag = malloc(strlen(resource) + 15);
    char* include = malloc(strlen(sysroot) + 25);
    char* linker_flag = malloc(strlen(linker) + 10);
    if (!arguments || !sysroot_flag || !resource_flag || !include || !linker_flag)
    {
        fputs("Unable to allocate the compiler argument table\n", stderr);
        return 127;
    }
    arguments[0] = (char*)compiler;
    arguments[1] = "--target=wasm32-wasip1";
    sprintf(sysroot_flag, "--sysroot=%s", sysroot);
    sprintf(resource_flag, "-resource-dir=%s", resource);
    sprintf(include, "%s/include/wasm32-wasip1", sysroot);
    sprintf(linker_flag, "-fuse-ld=%s", linker);
    arguments[2] = sysroot_flag;
    arguments[3] = resource_flag;
    arguments[4] = "-isystem";
    arguments[5] = include;
    arguments[6] = "-no-canonical-prefixes";
    arguments[7] = "-fintegrated-cc1";
    arguments[8] = linker_flag;
    for (int index = 1; index < argc; ++index)
    {
        arguments[index + 8] = argv[index];
    }
    execv(compiler, arguments);
    int saved = errno;
    free(arguments);
    errno = saved;
    perror("Unable to execute the provisioned LLVM 23 compiler");
    return 127;
}
