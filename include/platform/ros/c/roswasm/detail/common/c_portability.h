/** @file
 * @brief C language selection and exact ABI scalar types.
 * No choice in this file opens an import, resource or permission.
 */
#ifndef UWVM_ROS_C_PORTABILITY_H
#define UWVM_ROS_C_PORTABILITY_H
#include <stddef.h>
#include <limits.h>

/** @def ROSWASM_C_STANDARD
 * @brief Explicit source standard selector89,90,95,99,11,17,23 or draft29.
 * @details Defaults to the actual compiler-mode observation. Selecting an older
 * source profile does not lower the compiler's mode; the xmake adapter verifies
 * its exact requested -std flag separately. An unavailable newer mode is a
 * compile-time error. This macro grants no target/library/Runtime capability.
 * @see ROSWASM_C_DETECTED_STANDARD, ROSWASM_C_PROFILE
 */
/** @def ROSWASM_C_DETECTED_STANDARD
 * @brief C standard observed from the actual compiler's __STDC_VERSION__.
 * @details Missing version means profile90. C95/99/11/17/23 use their real
 * thresholds; versions newer than202311 are explicit post-C23 draft29. This is
 * a compiler observation, not a selected toolchain/provider qualification.
 * @see ROSWASM_C_STANDARD, ROSWASM_C_DRAFT_MODE
 */
/** @def ROSWASM_C_DRAFT_MODE
 * @brief Whether the observed C23-or-later mode reports a draft version.
 * @details Value1 records a pre-publication c2x or post-C23 compiler version;
 * value0 denotes an observed published mode. No lower-mode fallback occurs.
 * @see ROSWASM_C_DETECTED_STANDARD, ROSWASM_C_STANDARD
 */
/** @def ROSWASM_C_PROFILE
 * @brief Canonical source/library link profile, with89 normalized to90.
 * @details Part of the optional external library symbol together with pointer,
 * exception and thread dimensions. Contradictory separately compiled profiles
 * fail to link; this number is not a native ROS backend or ABI version.
 * @see ROSWASM_C_STANDARD, roswasmc_library_profile()
 */
/** @def ROSWASM_C_I64_EXTENSION
 * @brief Whether old ILP32 C needs the explicit compiler 64-bit integer extension.
 * @details Read-only result:1 only on the documented old-C GNU/Clang long-long
 * route, otherwise0. Exact widths and representation remain compile-checked.
 * Define ROSWASM_C_REQUIRE_ISO_TYPES=1 to reject that non-ISO old-C route.
 * @see uwvm_ros_u64, uwvm_ros_i64, ROSWASM_C_REQUIRE_ISO_TYPES
 */
/** @def ROSWASM_C_REQUIRE_ISO_TYPES
 * @brief Optional caller opt-in to refuse old-C extension-based scalar types.
 * @details Define to1 before any SDK header. Old ILP32 without an ISO64 scalar
 * then fails compilation rather than truncating the ABI. Modern stdint and old
 * LP64 ISO-long routes retain their actual width checks. No Runtime code runs.
 * @see ROSWASM_C_I64_EXTENSION, uwvm_ros_u64
 */
/** @def ROSWASM_C_ADDRESS_BITS
 * @brief Explicit or compiler-observed pointer width,32 or64 bits.
 * @details Must match sizeof(void*) and the actual compiled target. A mismatch
 * fails compilation. Every ROS wire offset/length remains i64 independently;
 * selecting64 does not by itself provide memory64 libraries or Runtime flags.
 * @see uwvm_ros_uintptr, uwvm_ros_offset, roswasmc_library_profile()
 */
/** @def ROSWASM_C_EXCEPTIONS
 * @brief Explicit Boolean C library-contract exception dimension, default0.
 * @details Accepts only0/1 and contributes to the external library symbol. It
 * supplies neither C++ unwinding nor a matched EH provider; those require the
 * selected common profile and actual separate execution qualification.
 * @see ROSWASM_C_THREADS, roswasmc_library_profile()
 */
/** @def ROSWASM_C_THREADS
 * @brief Explicit Boolean C library-contract thread dimension, default0.
 * @details Accepts only0/1. It creates no thread, atomicity, callback mutex or
 * shared memory and must match the actual separately compiled library profile.
 * @see ROSWASM_C_EXCEPTIONS, roswasmc_library_profile()
 */
/** @def UWVM_ROS_U64_C(value)
 * @brief Form a representable unsigned64 integer constant without width loss.
 * @details Uses stdint, ISO64 unsigned long or the explicit old-C extension as
 * selected above. Supply a literal in0..2^64-1; this is not runtime validation.
 * @param[in] value Unsuffixed integer-literal token(s), not an arbitrary expression.
 * @return Constant expression in the selected exact unsigned64 representation.
 * @see uwvm_ros_u64, ROSWASM_C_I64_EXTENSION
 */
/** @def UWVM_ROS_I64_C(value)
 * @brief Form a representable signed64 integer constant for the selected C mode.
 * @details Supply a representable literal; construct the minimum value without
 * an out-of-range positive signed literal. No byte encoding or permission runs.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Signed64 constant expression; old ILP32 may require the explicit extension.
 * @see uwvm_ros_i64, UWVM_ROS_U64_C, ROSWASM_C_REQUIRE_ISO_TYPES
 */
/** @def UWVM_ROS_U32_C(value)
 * @brief Form a typed unsigned32 literal for a representable input value.
 * @details The final cast is not a range check; callers must supply0..4294967295.
 * @param[in] value Unsuffixed integer-literal token(s), with no implicit units.
 * @return Exact unsigned32 constant expression for a representable input.
 * @see uwvm_ros_u32, UWVM_ROS_U32_MAX
 */
/** @def UWVM_ROS_I32_C(value)
 * @brief Form a typed signed32 literal for a representable input value.
 * @details Supply-2147483648..2147483647; a narrowing cast does not validate range.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Signed32 constant expression; no wire encoding or native operation.
 * @see uwvm_ros_i32, UWVM_ROS_I64_C
 */
/** @def UWVM_ROS_U16_C(value)
 * @brief Form a typed unsigned16 literal for input0..65535.
 * @details A cast can narrow an out-of-range literal; callers validate that range.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Unsigned16 constant expression, with no implicit byte-order conversion.
 * @see uwvm_ros_u16, UWVM_ROS_U32_C
 */
/** @def UWVM_ROS_I16_C(value)
 * @brief Form a typed signed16 literal for input-32768..32767.
 * @details Range is a caller precondition; this macro performs no runtime check.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Signed16 constant expression, retaining the declared type.
 * @see uwvm_ros_i16, UWVM_ROS_I32_C
 */
/** @def UWVM_ROS_U8_C(value)
 * @brief Form a typed unsigned8 literal for input0..255.
 * @details Supply a representable value; narrowing is not a permission/range check.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Unsigned8 constant expression; no buffer is read or written.
 * @see uwvm_ros_u8, UWVM_ROS_U16_C
 */
/** @def UWVM_ROS_I8_C(value)
 * @brief Form a typed signed8 literal for input-128..127.
 * @details Range is a caller precondition; no runtime validation is hidden here.
 * @param[in] value Unsuffixed representable integer-literal token(s).
 * @return Signed8 constant expression; no buffer is read or written.
 * @see uwvm_ros_i8, UWVM_ROS_I16_C
 */
/** @def UWVM_ROS_U32_MAX
 * @brief Maximum exact unsigned32 value,4294967295.
 * @details Numeric representation limit only, not a Host quota or buffer extent.
 * @see uwvm_ros_u32, UWVM_ROS_U32_C
 */
/** @def UWVM_ROS_U64_MAX
 * @brief Maximum exact unsigned64 value,18446744073709551615.
 * @details Also used as an unwritten-slot sentinel where the individual API says
 * so; it is never an owner, valid byte range or permission by itself.
 * @see uwvm_ros_u64, roswasmc_result
 */
/** @def UWVM_ROS_SIZE_MAX
 * @brief Maximum native size_t value of the actual C target.
 * @details Representation ceiling only; callers still prove live object extents
 * and checked arithmetic independently of Host byte quotas.
 * @see roswasmc_writer, roswasmc_reader
 */
/** @def UWVM_ROS_UINTPTR_MAX
 * @brief Maximum integer value representable by the actual native pointer width.
 * @details Arithmetic ceiling only; an integer below it is not a validated
 * pointer, Guest memory range, another module's address or native authority.
 * @see uwvm_ros_uintptr, uwvm_ros_address()
 */

/* 89 and 90 name the same language. C95 is the 1994 amendment (c94 in GCC).
 * A pre-publication c2x/c2y compiler mode is reported separately as a draft.
 * A selected older profile is permitted in a newer compiler mode. */
#if defined(__STDC_VERSION__) && __STDC_VERSION__ > 202311L
# define ROSWASM_C_DETECTED_STANDARD 29
# define ROSWASM_C_DRAFT_MODE 1
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 202311L
# define ROSWASM_C_DETECTED_STANDARD 23
# define ROSWASM_C_DRAFT_MODE 0
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ > 201710L
# define ROSWASM_C_DETECTED_STANDARD 23
# define ROSWASM_C_DRAFT_MODE 1
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201710L
# define ROSWASM_C_DETECTED_STANDARD 17
# define ROSWASM_C_DRAFT_MODE 0
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 201112L
# define ROSWASM_C_DETECTED_STANDARD 11
# define ROSWASM_C_DRAFT_MODE 0
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
# define ROSWASM_C_DETECTED_STANDARD 99
# define ROSWASM_C_DRAFT_MODE 0
#elif defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199409L
# define ROSWASM_C_DETECTED_STANDARD 95
# define ROSWASM_C_DRAFT_MODE 0
#else
# define ROSWASM_C_DETECTED_STANDARD 90
# define ROSWASM_C_DRAFT_MODE 0
#endif
#ifndef ROSWASM_C_STANDARD
# define ROSWASM_C_STANDARD ROSWASM_C_DETECTED_STANDARD
#endif
#if ROSWASM_C_STANDARD == 89
# define ROSWASM_C_PROFILE 90
#else
# define ROSWASM_C_PROFILE ROSWASM_C_STANDARD
#endif
#if ROSWASM_C_PROFILE != 90 && ROSWASM_C_PROFILE != 95 && ROSWASM_C_PROFILE != 99 && ROSWASM_C_PROFILE != 11 && ROSWASM_C_PROFILE != 17 &&                     \
    ROSWASM_C_PROFILE != 23 && ROSWASM_C_PROFILE != 29
# error "ROSWASM_C_STANDARD must be 89, 90, 95, 99, 11, 17, 23 or draft 29"
#endif
#if ROSWASM_C_PROFILE == 90
# define ROSWASM_C_REQUIRED_VERSION 0L
#elif ROSWASM_C_PROFILE == 95
# define ROSWASM_C_REQUIRED_VERSION 199409L
#elif ROSWASM_C_PROFILE == 99
# define ROSWASM_C_REQUIRED_VERSION 199901L
#elif ROSWASM_C_PROFILE == 11
# define ROSWASM_C_REQUIRED_VERSION 201112L
#elif ROSWASM_C_PROFILE == 17
# define ROSWASM_C_REQUIRED_VERSION 201710L
#elif ROSWASM_C_PROFILE == 23
# define ROSWASM_C_REQUIRED_VERSION 202000L
#else
# define ROSWASM_C_REQUIRED_VERSION 202312L
#endif
#if !defined(__cplusplus) && ROSWASM_C_REQUIRED_VERSION > 0L
# if !defined(__STDC_VERSION__) || __STDC_VERSION__ < ROSWASM_C_REQUIRED_VERSION
#  error "Selected ROSWASM_C_STANDARD exceeds this compiler language mode"
# endif
#endif

#if defined(__cplusplus) || (defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L)
# include <stdint.h>
/**
 * @brief uwvm ros u8.
 *
 * @details Exact 8-bit unsigned scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef uint8_t uwvm_ros_u8;
/**
 * @brief uwvm ros u16.
 *
 * @details Exact 16-bit unsigned scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef uint16_t uwvm_ros_u16;
/**
 * @brief uwvm ros u32.
 *
 * @details Exact 32-bit unsigned scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef uint32_t uwvm_ros_u32;
/**
 * @brief uwvm ros u64.
 *
 * @details Exact 64-bit unsigned scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef uint64_t uwvm_ros_u64;
/**
 * @brief uwvm ros i8.
 *
 * @details Exact 8-bit signed scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef int8_t uwvm_ros_i8;
/**
 * @brief uwvm ros i16.
 *
 * @details Exact 16-bit signed scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef int16_t uwvm_ros_i16;
/**
 * @brief uwvm ros i32.
 *
 * @details Exact 32-bit signed scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef int32_t uwvm_ros_i32;
/**
 * @brief uwvm ros i64.
 *
 * @details Exact 64-bit signed scalar selected by the actual C profile. Compile-time
 * width/representation checks preserve the fixed Wasm ABI; the type itself has no physical units
 * or authority.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_handle, uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef int64_t uwvm_ros_i64;
/**
 * @brief uwvm ros uintptr.
 *
 * @details Unsigned native C pointer-width integer validated against the selected32/64-bit address
 * ABI. Converting it to an i64 Guest offset does not validate a memory range or create a native
 * pointer.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see uwvm_ros_address(), uwvm_ros_offset
 * @see @ref roswasmc_c_contracts
 */
typedef uintptr_t uwvm_ros_uintptr;
# define ROSWASM_C_I64_EXTENSION 0
# define UWVM_ROS_U64_C(value) UINT64_C(value)
# define UWVM_ROS_I64_C(value) INT64_C(value)
#else
/* ISO C90 does not provide stdint.h or require a 64-bit integer. Use only
 * prefixed names, so including a system stdint.h before or after us is safe.
 * ILP32/Wasm32 needs the explicitly identified compiler i64 extension below:
 * a pair of u32 members would change the imported WebAssembly function ABI. */
# if CHAR_BIT != 8 || UCHAR_MAX != 255
#  error "ROS ABI requires eight-bit bytes"
# endif
typedef unsigned char uwvm_ros_u8;
typedef signed char uwvm_ros_i8;
# if USHRT_MAX == 65535U
typedef unsigned short uwvm_ros_u16;
typedef signed short uwvm_ros_i16;
# elif UINT_MAX == 65535U
typedef unsigned int uwvm_ros_u16;
typedef signed int uwvm_ros_i16;
# else
#  error "No exact 16-bit integer type"
# endif
# if UINT_MAX == 4294967295UL
typedef unsigned int uwvm_ros_u32;
typedef signed int uwvm_ros_i32;
# elif ULONG_MAX == 4294967295UL
typedef unsigned long uwvm_ros_u32;
typedef signed long uwvm_ros_i32;
# else
#  error "No exact 32-bit integer type"
# endif
# if ULONG_MAX > 4294967295UL
typedef unsigned long uwvm_ros_u64;
typedef signed long uwvm_ros_i64;
#  define ROSWASM_C_I64_EXTENSION 0
#  define UWVM_ROS_U64_C(value) value##UL
#  define UWVM_ROS_I64_C(value) value##L
# elif defined(__GNUC__) && defined(__UINT64_TYPE__) && defined(__INT64_TYPE__)
__extension__ typedef __UINT64_TYPE__ uwvm_ros_u64;
__extension__ typedef __INT64_TYPE__ uwvm_ros_i64;
#  define ROSWASM_C_I64_EXTENSION 1
#  define UWVM_ROS_U64_C(value) (__extension__(value##ULL))
#  define UWVM_ROS_I64_C(value) (__extension__(value##LL))
# else
#  error "This C90 target has no supported i64 scalar; the wire ABI cannot be narrowed"
# endif
# if defined(__UINTPTR_TYPE__)
typedef __UINTPTR_TYPE__ uwvm_ros_uintptr;
# else
typedef unsigned long uwvm_ros_uintptr;
# endif
#endif

#if defined(ROSWASM_C_REQUIRE_ISO_TYPES) && ROSWASM_C_REQUIRE_ISO_TYPES && ROSWASM_C_I64_EXTENSION
# error "This old-standard target needs a compiler i64 extension; ISO-only scalars requested"
#endif
#if CHAR_BIT != 8
# error "ROS ABI requires eight-bit bytes"
#endif
/**
 * @brief uwvm ros check u16.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_u16[(sizeof(uwvm_ros_u16) == 2) ? 1 : -1];
/**
 * @brief uwvm ros check u32.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_u32[(sizeof(uwvm_ros_u32) == 4) ? 1 : -1];
/**
 * @brief uwvm ros check u64.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_u64[(sizeof(uwvm_ros_u64) == 8) ? 1 : -1];
/**
 * @brief uwvm ros check i32.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_i32[((~(uwvm_ros_i32)0) == (uwvm_ros_i32)-1) ? 1 : -1];
/**
 * @brief uwvm ros check i64.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_i64[((~(uwvm_ros_i64)0) == (uwvm_ros_i64)-1) ? 1 : -1];
/**
 * @brief uwvm ros check uintptr.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_uintptr[(sizeof(uwvm_ros_uintptr) >= sizeof(void*)) ? 1 : -1];
#define UWVM_ROS_U32_MAX ((uwvm_ros_u32) - 1)
#define UWVM_ROS_U64_MAX ((uwvm_ros_u64) - 1)
#define UWVM_ROS_SIZE_MAX ((size_t)-1)
#define UWVM_ROS_UINTPTR_MAX ((uwvm_ros_uintptr) - 1)
#define UWVM_ROS_U32_C(value) ((uwvm_ros_u32)(value##UL))
#define UWVM_ROS_I32_C(value) ((uwvm_ros_i32)(value##L))
#define UWVM_ROS_U16_C(value) ((uwvm_ros_u16)(value##UL))
#define UWVM_ROS_I16_C(value) ((uwvm_ros_i16)(value##L))
#define UWVM_ROS_U8_C(value) ((uwvm_ros_u8)(value##UL))
#define UWVM_ROS_I8_C(value) ((uwvm_ros_i8)(value##L))

/* The shared xmake resolver supplies the independent target dimensions. These
 * checks constrain this C TU; they do not qualify a libc/EH/thread closure. */
#ifndef ROSWASM_C_ADDRESS_BITS
# if defined(__SIZEOF_POINTER__)
#  define ROSWASM_C_ADDRESS_BITS (__SIZEOF_POINTER__ * 8)
# else
#  define ROSWASM_C_ADDRESS_BITS 0
# endif
#endif
#ifndef ROSWASM_C_EXCEPTIONS
# define ROSWASM_C_EXCEPTIONS 0
#endif
#ifndef ROSWASM_C_THREADS
# define ROSWASM_C_THREADS 0
#endif
#if ROSWASM_C_ADDRESS_BITS != 0 && ROSWASM_C_ADDRESS_BITS != 32 && ROSWASM_C_ADDRESS_BITS != 64
# error "ROSWASM_C_ADDRESS_BITS must match an actual 32-bit or 64-bit pointer ABI"
#endif
#if (ROSWASM_C_EXCEPTIONS != 0 && ROSWASM_C_EXCEPTIONS != 1) || (ROSWASM_C_THREADS != 0 && ROSWASM_C_THREADS != 1)
# error "C exception/runtime and thread profile dimensions must be explicit zero or one"
#endif
/**
 * @brief uwvm ros check profile pointer.
 *
 * @details Borrowed callable type with the complete signature, storage lifetime and
 * execution/error contract documented above. Keep callback code and captured storage alive; a
 * callable value carries no Host permission.
 * @par C type contract
 * Use the declared complete value and exact representation. Caller-owned storage and any borrowed
 * members retain the lifetimes documented above; no implicit allocation or ownership duplication
 * occurs.
 * @see @ref roswasmc_c_contracts
 */
typedef char uwvm_ros_check_profile_pointer[(ROSWASM_C_ADDRESS_BITS == 0 || sizeof(void*) * CHAR_BIT == ROSWASM_C_ADDRESS_BITS) ? 1 : -1];

/* C90 uses ordinary internal-linkage functions without an inline keyword.
 * GNU-compatible compilers mark these header definitions as potentially unused,
 * so a strict application can include a complete facade and call only part of
 * it. This local declaration attribute changes neither linkage nor execution;
 * warnings in application source remain enabled. Other C90 compilers use the
 * ordinary ISO static definition. No allocation or registration is introduced. */
#if defined(__cplusplus) || (defined(__STDC_VERSION__) && __STDC_VERSION__ >= 199901L)
# define ROSWASM_C_INLINE static inline
#elif defined(__GNUC__) || defined(__clang__)
# define ROSWASM_C_INLINE static __attribute__((unused))
#else
# define ROSWASM_C_INLINE static
#endif
#endif
