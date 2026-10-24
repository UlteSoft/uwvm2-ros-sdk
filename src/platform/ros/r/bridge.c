/**
 * @file bridge.c
 * @brief Copy exact ROS scalar calls between a genuine embedded R and guest memory.
 * @details Compile against the actual common R engine headers. Register the
 * routines with uwvm_ros_r_register() during that engine's initialization.
 * R owns all records and application decisions; this bridge only copies bytes
 * and preserves original unsigned status, handle and length-slot facts.
 */
#include <R.h>
#include <string.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>
#include <ros/c/roswasm/detail/common/abi.h>
#if defined(UWVM_ROS1) && defined(UWVM_ROS2)
# error "Select exactly one ROS backend"
#endif
#if defined(UWVM_ROS1)
# include <ros1/c/abi.h>
# define UWVM_R_RAW(name) uwvm_ros1_##name
#elif defined(UWVM_ROS2)
# include <ros2/c/abi.h>
# define UWVM_R_RAW(name) uwvm_ros2_##name
#else
# error "Select exactly one real ROS ABI family for the R bridge"
#endif

/**
 * @brief Copy the entire little-endian word into R-owned raw storage.
 * @param value Original full-width ABI scalar; no R double conversion is used.
 * @return Protected-by-caller eight-byte raw R vector with every original bit.
 */
static SEXP uwvm_r_word(uwvm_ros_u64 value)
{
    SEXP bytes = Rf_allocVector(RAWSXP, 8);
    unsigned index;
    for(index = 0; index != 8; ++index)
    {
        RAW(bytes)[index] = (unsigned char)(value >> (8 * index));
    }
    return bytes;
}

/**
 * @brief Issue one scalar operation while all passed R byte vectors remain rooted.
 * @param operation Scalar original operation name supported by this transport.
 * @param handle Exact eight-byte raw owner, or all-zero bytes before open.
 * @param request Complete raw request, or original alias bytes for open.
 * @param capacity Exact finite numeric output bound from zero through 1048576.
 * @return Named list with original status, whole data, observed length and scalar value.
 * @details Status uses an exact R double for uint32; u64 values remain raw bytes.
 * No operation, allocation failure or timeout is replayed by this function.
 */
static SEXP uwvm_r_invoke(SEXP operation, SEXP handle, SEXP request, SEXP capacity)
{
    char const* name;
    double requested;
    R_xlen_t bound;
    uwvm_ros_u64 owner = 0;
    uwvm_ros_u64 length = ~(uwvm_ros_u64)0;
    uwvm_ros_u64 scalar = 0;
    uwvm_ros_u32 status = UWVM_ROS_UNSUPPORTED;
    int value_present = 0;
    int length_present = 0;
    unsigned index;
    SEXP output;
    SEXP result;
    SEXP names;
    SEXP bytes;
    if(TYPEOF(operation) != STRSXP || XLENGTH(operation) != 1 || STRING_ELT(operation, 0) == NA_STRING || TYPEOF(handle) != RAWSXP || XLENGTH(handle) != 8 ||
       TYPEOF(request) != RAWSXP || XLENGTH(capacity) != 1)
    {
        Rf_error("exact operation, eight-byte handle, raw request and scalar capacity required");
    }
    name = Rf_translateCharUTF8(STRING_ELT(operation, 0));
    requested = Rf_asReal(capacity);
    if(!R_FINITE(requested) || requested < 0 || requested > 1048576 || requested != (R_xlen_t)requested)
    {
        Rf_error("finite integral response capacity from zero through 1048576 required");
    }
    bound = (R_xlen_t)requested;
    for(index = 0; index != 8; ++index)
    {
        owner |= (uwvm_ros_u64)RAW(handle)[index] << (8 * index);
    }
    output = PROTECT(Rf_allocVector(RAWSXP, bound));
    result = PROTECT(Rf_allocVector(VECSXP, 4));
    names = PROTECT(Rf_allocVector(STRSXP, 4));
    SET_STRING_ELT(names, 0, Rf_mkChar("status"));
    SET_STRING_ELT(names, 1, Rf_mkChar("data"));
    SET_STRING_ELT(names, 2, Rf_mkChar("length"));
    SET_STRING_ELT(names, 3, Rf_mkChar("value"));
    if(!strcmp(name, "abi_version"))
    {
        scalar = UWVM_R_RAW(abi_version)();
        status = 0;
        value_present = 1;
    }
    else if(!strcmp(name, "capability_open"))
    {
        status = UWVM_R_RAW(capability_open)(0, uwvm_ros_address(RAW(request)), (uwvm_ros_u64)XLENGTH(request), uwvm_ros_address(&scalar));
        value_present = status == 0;
    }
    else if(!strcmp(name, "capability_close"))
    {
        status = UWVM_R_RAW(capability_close)(owner);
    }
    else if(!strcmp(name, "topic_subscribe"))
    {
        status = UWVM_R_RAW(topic_subscribe)(owner);
    }
    else if(!strcmp(name, "topic_publish"))
    {
        status = UWVM_R_RAW(topic_publish)(owner, 0, uwvm_ros_address(RAW(request)), (uwvm_ros_u64)XLENGTH(request));
    }
    else if(!strcmp(name, "event_poll"))
    {
        status = UWVM_R_RAW(event_poll)(owner, 0, uwvm_ros_address(RAW(output)), (uwvm_ros_u64)bound, uwvm_ros_address(&length));
        length_present = length != ~(uwvm_ros_u64)0;
    }
    else if(!strcmp(name, "service_call"))
    {
        status = UWVM_R_RAW(service_call)(owner,
                                          0,
                                          uwvm_ros_address(RAW(request)),
                                          (uwvm_ros_u64)XLENGTH(request),
                                          uwvm_ros_address(RAW(output)),
                                          (uwvm_ros_u64)bound,
                                          uwvm_ros_address(&length));
        length_present = length != ~(uwvm_ros_u64)0;
    }
    if(status == 0 && length_present && length > (uwvm_ros_u64)bound)
    {
        /* Keep original status; malformed successful framing is rejected by R. */
        bytes = PROTECT(Rf_allocVector(RAWSXP, 0));
    }
    else
    {
        R_xlen_t count = status == 0 && length_present ? (R_xlen_t)length : 0;
        bytes = PROTECT(Rf_allocVector(RAWSXP, count));
        if(count)
        {
            memcpy(RAW(bytes), RAW(output), (size_t)count);
        }
    }
    SET_VECTOR_ELT(result, 0, Rf_ScalarReal((double)status));
    SET_VECTOR_ELT(result, 1, bytes);
    SET_VECTOR_ELT(result, 2, length_present ? uwvm_r_word(length) : R_NilValue);
    SET_VECTOR_ELT(result, 3, value_present ? uwvm_r_word(scalar) : R_NilValue);
    Rf_setAttrib(result, R_NamesSymbol, names);
    UNPROTECT(4);
    return result;
}

/**
 * @brief Register real R native routines in the common embedded engine.
 * @param library Actual embedding DLL information owned by the R runtime.
 * @details Registration creates no ROS owner and executes no application code.
 * The shared R engine must invoke this once before evaluating ROS modules.
 */
void uwvm_ros_r_register(DllInfo* library)
{
    static R_CallMethodDef const calls[] = {
        {"uwvm_ros_invoke", (DL_FUNC)&uwvm_r_invoke, 4},
        {NULL,              NULL,                    0}
    };
    R_registerRoutines(library, NULL, calls, NULL, NULL);
}
