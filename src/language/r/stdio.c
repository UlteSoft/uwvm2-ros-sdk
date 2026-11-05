/* Genuine R binary connections over borrowed WASI standard descriptors.
 * Closing an R connection never closes or duplicates the module's descriptor.
 * The module's fd_read/fd_write grants and limits still govern every transfer.
 */
#define R_NO_REMAP
#include <Rinternals.h>
#include <R_ext/Connections.h>
#include <R_ext/Rdynload.h>
#include <errno.h>
#include <limits.h>
#include <stdint.h>
#include <string.h>
#include <unistd.h>

#if R_CONNECTIONS_VERSION != 1
#error Review the GNU R connection ABI before changing its version
#endif

static size_t transfer_size(size_t size, size_t count)
{
    if (size && count > SIZE_MAX / size)
        Rf_error("WASI standard stream transfer size overflows");
    return size * count;
}

static size_t stream_read(void *buffer, size_t size, size_t count, Rconnection con)
{
    size_t total = transfer_size(size, count), done = 0;
    (void)con;
    if (!size) return 0;
    while (done < total) {
        size_t chunk = total - done;
        if (chunk > (size_t)SSIZE_MAX) chunk = (size_t)SSIZE_MAX;
        ssize_t got = read(STDIN_FILENO, (char *)buffer + done, chunk);
        if (got < 0) {
            int failure = errno;
            if (failure == EINTR) continue;
            Rf_error("WASI stdin read failed (errno %d): %s", failure, strerror(failure));
        }
        if (!got) break;
        done += (size_t)got;
    }
    return done / size;
}

static size_t stream_write(const void *buffer, size_t size, size_t count, Rconnection con)
{
    size_t total = transfer_size(size, count), done = 0;
    (void)con;
    if (!size) return 0;
    while (done < total) {
        size_t chunk = total - done;
        if (chunk > (size_t)SSIZE_MAX) chunk = (size_t)SSIZE_MAX;
        ssize_t put = write(STDOUT_FILENO, (const char *)buffer + done, chunk);
        if (put < 0) {
            int failure = errno;
            if (failure == EINTR) continue;
            Rf_error("WASI stdout write failed (errno %d): %s", failure, strerror(failure));
        }
        if (!put) Rf_error("WASI stdout write made no progress");
        done += (size_t)put;
    }
    return count;
}

static void stream_close(Rconnection con) { con->isopen = FALSE; }
/* This bridge holds no userspace output buffer. Do not fsync borrowed stdout. */
static int stream_flush(Rconnection con) { (void)con; return 0; }

SEXP uwvm_r_wasi_stdio(SEXP direction)
{
    if (TYPEOF(direction) != STRSXP || XLENGTH(direction) != 1 ||
        STRING_ELT(direction, 0) == NA_STRING)
        Rf_error("one standard stream name is required");
    SEXP text = STRING_ELT(direction, 0);
    const char *name = CHAR(text);
    Rboolean input;
    if (LENGTH(text) == 5 && !memcmp(name, "stdin", 5)) input = TRUE;
    else if (LENGTH(text) == 6 && !memcmp(name, "stdout", 6)) input = FALSE;
    else Rf_error("standard stream must be stdin or stdout");
    Rconnection con;
    SEXP result = PROTECT(R_new_custom_connection(name, input ? "rb" : "wb",
                                                  "uwvm_wasi_stdio", &con));
    con->isopen = TRUE;
    con->text = FALSE;
    con->canread = input;
    con->canwrite = !input;
    con->canseek = FALSE;
    con->blocking = TRUE;
    con->read = &stream_read;
    con->write = &stream_write;
    con->close = &stream_close;
    con->fflush = &stream_flush;
    UNPROTECT(1);
    return result;
}

#ifdef UWVM_R_WASI_ONLY
void uwvm_r_register_native(void)
{
    static R_CallMethodDef const methods[] = {
        {"uwvm_wasi_stdio", (DL_FUNC)&uwvm_r_wasi_stdio, 1}, {NULL, NULL, 0}
    };
    DllInfo *info = R_getEmbeddingDllInfo();
    R_registerRoutines(info, NULL, methods, NULL, NULL);
    R_useDynamicSymbols(info, FALSE);
}
#endif
