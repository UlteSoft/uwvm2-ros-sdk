// @file startup.c
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/* Explicit WASIp1 startup for Nim three-argument entry.
 * Compile generated C with -Dmain=roswasm_c_ffi_nim_main. Keep actual args/env.
 * No authority is granted; this is a command startup, not a reactor.
 */
#ifdef main
# undef main
#endif
extern char** environ;
extern int roswasm_c_ffi_nim_main(int argc, char** argv, char** environment);

int main(int argc, char** argv)
{
    return roswasm_c_ffi_nim_main(argc, argv, environ);
}
