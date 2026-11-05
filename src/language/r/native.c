/**
 * @file native.c
 * @brief Marshal genuine GNU R .Call values into the shared synchronous ROS ABI.
 * @details Handles and lengths remain eight raw little-endian bytes, so R's
 * NA integer sentinel and double precision never narrow them. The bridge owns
 * no transport, generated codec, retry, finalizer or automatic capability close.
 * This is unqualified port source until linked into and run by genuine R.
 */
#define R_NO_REMAP
#include "native.h"
#include "abi.h"
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <math.h>
#include <stdint.h>
#include <string.h>

/**
 * @brief Decode one exact eight-byte word without numeric R coercion.
 * @param value Borrowed R raw vector, rooted by the active .Call frame.
 * @return Original unsigned 64-bit word; invalid inputs raise an R condition.
 */
static uint64_t read_word(SEXP value)
{
    if (TYPEOF(value) != RAWSXP || XLENGTH(value) != 8)
    {
        Rf_error("exact eight-byte little-endian raw word required");
    }
    uint64_t result = 0;
    for (unsigned index = 0; index < 8; ++index)
    {
        result |= (uint64_t)RAW(value)[index] << (index * 8);
    }
    return result;
}

/**
 * @brief Store all word bits in already allocated owning R raw storage.
 * @param output Protected raw vector of length eight.
 * @param value Exact original native word.
 */
static void write_word(SEXP output, uint64_t value)
{
    for (unsigned index = 0; index < 8; ++index)
    {
        RAW(output)[index] = (Rbyte)(value >> (index * 8));
    }
}

/**
 * @brief Validate a bounded exact numeric scalar before any native effect.
 * @param value One integer or double R value; NA, NaN and fractions are refused.
 * @param maximum Inclusive finite upper bound.
 * @return Exact nonnegative scalar in the stated range.
 */
static uint32_t extent(SEXP value, uint32_t maximum)
{
    if ((TYPEOF(value) != REALSXP && TYPEOF(value) != INTSXP) || XLENGTH(value) != 1)
    {
        Rf_error("one exact finite extent required");
    }
    double number = TYPEOF(value) == REALSXP ? REAL(value)[0] : (double)INTEGER(value)[0];
    if (!isfinite(number) || number < 0 || number > maximum || floor(number) != number)
    {
        Rf_error("extent outside the admitted integral range");
    }
    return (uint32_t)number;
}

/**
 * @brief Invoke one synchronous raw operation without replay or ownership policy.
 * @param operation One non-NA string naming an existing shared ABI operation.
 * @param owner Exact eight-byte raw handle; zero is required for open.
 * @param request Borrowed raw request, bounded by the canonical ABI manifest.
 * @param capacity Exact finite canonical response capacity.
 * @param other Exact second owner word for watch/submit; zero otherwise.
 * @param correlation Exact watcher correlation word; zero for other forms.
 * @return List [errno, bytes, conditional required word, conditional value word].
 * @details Output/word/result storage is allocated before issuing the import.
 * Successful data is exposed only within capacity. Required length is exposed
 * only for success or errno 90, when the host initialized the length slot.
 * No finalizer retires a handle; R code must close in on.exit/tryCatch finally.
 */
static SEXP invoke(SEXP operation, SEXP owner, SEXP request, SEXP capacity, SEXP other, SEXP correlation)
{
    if (TYPEOF(operation) != STRSXP || XLENGTH(operation) != 1 || STRING_ELT(operation, 0) == NA_STRING ||
        TYPEOF(request) != RAWSXP || XLENGTH(request) > UWVM_ROS_MAX_INPUT)
    {
        Rf_error("one canonical operation string and bounded raw request required");
    }
    SEXP name_value = STRING_ELT(operation, 0);
    char const* name = CHAR(name_value);
    if (LENGTH(name_value) == 0 || LENGTH(name_value) > 64 || memchr(name, 0, (size_t)LENGTH(name_value)) != NULL)
    {
        Rf_error("one canonical operation name without NUL required");
    }
    uint64_t handle = read_word(owner);
    uint64_t second = read_word(other);
    uint64_t identifier = read_word(correlation);
    uint32_t limit = extent(capacity, UWVM_ROS_MAX_OUTPUT);
    SEXP result = PROTECT(Rf_allocVector(VECSXP, 4));
    SEXP output = PROTECT(Rf_allocVector(RAWSXP, limit));
    SEXP required = PROTECT(Rf_allocVector(RAWSXP, 8));
    SEXP returned = PROTECT(Rf_allocVector(RAWSXP, 8));
    SEXP status = PROTECT(Rf_allocVector(REALSXP, 1));
    struct uwvm_ros_frame frame = {.handle = handle,
                                   .other = second,
                                   .correlation = identifier,
                                   .input = RAW(request),
                                   .input_size = (uint64_t)XLENGTH(request),
                                   .output = RAW(output),
                                   .capacity = limit};
    uint32_t code = uwvm_ros_dispatch(&frame, name);
    REAL(status)[0] = (double)code;
    SET_VECTOR_ELT(result, 0, status);
    SET_VECTOR_ELT(result, 1, Rf_lengthgets(output, (R_len_t)uwvm_ros_data_size(&frame)));
    if (uwvm_ros_has_length(&frame))
    {
        write_word(required, frame.slot);
        SET_VECTOR_ELT(result, 2, required);
    }
    if (uwvm_ros_has_value(&frame))
    {
        write_word(returned, frame.slot);
        SET_VECTOR_ELT(result, 3, returned);
    }
    UNPROTECT(5);
    return result;
}

/**
 * @brief Wait once on an explicitly granted WASI monotonic timer.
 * @param duration Exact milliseconds in 0..5000.
 * @return Original WASI errno as an exactly representable R numeric scalar.
 */
static SEXP pause_ms(SEXP duration)
{
    uint32_t milliseconds = extent(duration, 5000);
    SEXP result = PROTECT(Rf_allocVector(REALSXP, 1));
    REAL(result)[0] = uwvm_pause(milliseconds);
    UNPROTECT(1);
    return result;
}

/** @brief Static entry list; no shared object or host dynamic lookup is required. */
SEXP uwvm_r_wasi_stdio(SEXP);
static R_CallMethodDef const methods[] = {
    {"uwvm_wasi_stdio", (DL_FUNC)&uwvm_r_wasi_stdio, 1},
    {"uwvm_ros_invoke", (DL_FUNC)&invoke, 6}, {"uwvm_ros_pause_ms", (DL_FUNC)&pause_ms, 1}, {NULL, NULL, 0}};

void uwvm_r_register_native(void)
{
    DllInfo* info = R_getEmbeddingDllInfo();
    R_registerRoutines(info, NULL, methods, NULL, NULL);
    R_useDynamicSymbols(info, FALSE);
}
