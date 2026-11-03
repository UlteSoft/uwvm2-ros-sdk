/**
 * @file statsErr.h
 * @brief Maintain the original R implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#include <R_ext/Error.h>
#undef _
#ifdef ENABLE_NLS
#include <libintl.h>
#define _(String) dgettext("stats", String)
#else
#define _(String) (String)
#endif
