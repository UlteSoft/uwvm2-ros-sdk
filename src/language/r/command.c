/**
 * @file command.c
 * @brief Enter genuine GNU R and evaluate the original embedded R source.
 * @details This source is an unqualified standalone port candidate. The original
 * R startup still requires an embedded base-package filesystem at the fixed
 * R_HOME below. No external R executable, alternate parser or source mount is
 * used. Until that filesystem and Fortran closure link, no VM is installed.
 */
#define R_NO_REMAP
#include "application.h"
#include "native.h"
#include <Rinternals.h>
#include <Rembedded.h>
#include <R_ext/Parse.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/** @brief Borrow original source bytes while the Asyncify root remains live. */
struct evaluation
{
    char const* source;
    int length;
    int status;
};

/**
 * @brief Parse and evaluate complete source with GNU R's original frontend.
 * @param opaque Live evaluation context owned by r_application.
 * @details R_ToplevelExec catches original R conditions. Each expression runs in
 * R_GlobalEnv; generated namespace lists remain ordinary local language values.
 */
static void evaluate(void* opaque)
{
    struct evaluation* context = opaque;
    SEXP text = PROTECT(Rf_ScalarString(Rf_mkCharLenCE(context->source, context->length, CE_UTF8)));
    ParseStatus parsed;
    SEXP expressions = PROTECT(R_ParseVector(text, -1, &parsed, R_NilValue));
    if (parsed != PARSE_OK)
    {
        Rf_error("embedded R source did not parse completely");
    }
    for (R_xlen_t index = 0; index < XLENGTH(expressions); ++index)
    {
        Rf_eval(VECTOR_ELT(expressions, index), R_GlobalEnv);
    }
    SEXP status = Rf_findVarInFrame(R_GlobalEnv, Rf_install(".uwvm_exit"));
    if (status != R_UnboundValue)
    {
        if ((TYPEOF(status) != REALSXP && TYPEOF(status) != INTSXP) || XLENGTH(status) != 1)
        {
            Rf_error(".uwvm_exit must be one integral status");
        }
        double value = Rf_asReal(status);
        if (!(value >= 0 && value <= 125) || (double)(int)value != value)
        {
            Rf_error(".uwvm_exit must be in 0..125");
        }
        context->status = (int)value;
    }
    UNPROTECT(2);
}

/**
 * @brief Initialize genuine R, register static imports and execute one source.
 * @param argc Original WASI argument count.
 * @param argv Borrowed original WASI strings.
 * @return Original application status, condition failure 1, invalid source 22,
 * allocation failure 12 or initialization failure 5.
 * @details The current port cannot reach application evaluation until its real
 * base package filesystem is available; this remains an explicit build gap.
 */
static int r_application(int argc, char** argv)
{
    uint32_t length = uwvm_load32(application.length);
    if (length == 0 || length > UWVM_APPLICATION_CAPACITY || memchr((void const*)application.source, 0, length) != NULL)
    {
        return 22;
    }
    char* source = malloc((size_t)length + 1);
    char** options = calloc((size_t)argc + 8, sizeof(char*));
    if (source == NULL || options == NULL)
    {
        free(source);
        free(options);
        return 12;
    }
    memcpy(source, (void const*)application.source, length);
    source[length] = 0;
    char* base[] = {"uwvm-r", "--vanilla", "--quiet", "--no-save", "--no-restore", "--no-readline", "--args"};
    unsigned count = sizeof(base) / sizeof(base[0]);
    memcpy(options, base, sizeof(base));
    for (int index = 1; index < argc; ++index)
    {
        options[count++] = argv[index];
    }
    if (setenv("R_HOME", "/__uwvm_r_home__", 1) != 0)
    {
        free(source);
        free(options);
        return 5;
    }
    int initialized = Rf_initEmbeddedR((int)count, options);
    if (initialized < 0)
    {
        free(source);
        free(options);
        return 5;
    }
    uwvm_r_register_native();
    struct evaluation context = {source, (int)length, 0};
    int status = R_ToplevelExec(evaluate, &context) ? context.status : 1;
    Rf_endEmbeddedR(status != 0);
    free(source);
    free(options);
    return status;
}

/** @brief Common retained Asyncify root; no private control-transfer ABI exists. */
int uwvm_asyncify_start(int (*entry)(int, char**), int argc, char** argv);

/**
 * @brief Enter the shared nonlocal-control driver with original WASI arguments.
 * @param argc Original argument count.
 * @param argv Original argument strings.
 * @return Genuine R application/startup result.
 */
int main(int argc, char** argv)
{
    return uwvm_asyncify_start(r_application, argc, argv);
}
