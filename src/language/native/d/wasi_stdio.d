/// @file wasi_stdio.d
/// @brief Borrow WASI libc streams through their exact C ABI in BetterC D.
/// @details FILE remains opaque; no Druntime platform layout or host stream is used.
module native.d.wasi_stdio;
extern(C) @nogc nothrow:
struct FILE;
extern __gshared FILE* stdin;
extern __gshared FILE* stdout;
size_t fread(void* output, size_t size, size_t count, FILE* stream);
size_t fwrite(const(void)* input, size_t size, size_t count, FILE* stream);
int ferror(FILE* stream);

int printf(const(char)* format, ...);

int putchar(int value);

int fflush(FILE* stream);
