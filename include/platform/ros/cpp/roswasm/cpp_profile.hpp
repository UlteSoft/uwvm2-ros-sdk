/** @file One public C++ language, with an explicit per-program standard contract.
 * @brief Select one coherent C++ source-standard contract.
 * @details Supported selectors are 98, 3 (ISO C++03), 11, 14, 17, 20, 23 and 26 (draft).
 * Selector 98 also accepts a compiler's C++03 mode: both report 199711L. Use 3
 * when a separately built library must distinguish those two source contracts.
 * C++13 is not an ISO standard. Selection never enables a Guest permission.
 * @see roswasmcpp::library_profile
 */
#pragma once
#ifndef __cplusplus
# error "The ROS Wasm C++ SDK requires a C++ compiler"
#endif
/** @def ROSWASM_CPP_COMPILER_LEVEL
 * @brief Actual compiler language-mode feature level.
 * @details Uses _MSVC_LANG when supplied, otherwise __cplusplus. The header
 * validates the selected source profile against this value at preprocessing
 * time. This integer does not qualify a standard-library ABI or grant authority.
 * @see ROSWASM_CPP_STANDARD
 */
#if defined(_MSVC_LANG)
# define ROSWASM_CPP_COMPILER_LEVEL _MSVC_LANG
#else
# define ROSWASM_CPP_COMPILER_LEVEL __cplusplus
#endif
#if ROSWASM_CPP_COMPILER_LEVEL < 199711L
# error "The ROS Wasm C++ SDK requires ISO C++98 or newer"
#endif
/** @def ROSWASM_CPP_STANDARD
 * @brief Selected C++ source profile shared by the caller and source libraries.
 * @details Define before including SDK headers, or let the actual compiler mode
 * select it. Accepted values are 98,3,11,14,17,20,23,26; 3 distinguishes C++03
 * from C++98 despite their equal __cplusplus. Draft26 requires a real draft
 * compiler mode. An invalid or too-new selection produces a preprocessing error.
 * Never mix selections across one linked C++ object/standard-library boundary.
 * @see roswasmcpp::library_profile
 */
#ifndef ROSWASM_CPP_STANDARD
# if ROSWASM_CPP_COMPILER_LEVEL > 202302L
#  define ROSWASM_CPP_STANDARD 26
# elif ROSWASM_CPP_COMPILER_LEVEL > 202002L
#  define ROSWASM_CPP_STANDARD 23
# elif ROSWASM_CPP_COMPILER_LEVEL >= 202002L
#  define ROSWASM_CPP_STANDARD 20
# elif ROSWASM_CPP_COMPILER_LEVEL >= 201703L
#  define ROSWASM_CPP_STANDARD 17
# elif ROSWASM_CPP_COMPILER_LEVEL >= 201402L
#  define ROSWASM_CPP_STANDARD 14
# elif ROSWASM_CPP_COMPILER_LEVEL >= 201103L
#  define ROSWASM_CPP_STANDARD 11
# else
#  define ROSWASM_CPP_STANDARD 98
# endif
#endif
#if ROSWASM_CPP_STANDARD != 98 && ROSWASM_CPP_STANDARD != 3 && ROSWASM_CPP_STANDARD != 11 && ROSWASM_CPP_STANDARD != 14 && ROSWASM_CPP_STANDARD != 17 &&       \
    ROSWASM_CPP_STANDARD != 20 && ROSWASM_CPP_STANDARD != 23 && ROSWASM_CPP_STANDARD != 26
# error "ROSWASM_CPP_STANDARD must be 98, 3, 11, 14, 17, 20, 23 or 26 (draft); C++13 does not exist"
#endif
#if ((ROSWASM_CPP_STANDARD == 11 && ROSWASM_CPP_COMPILER_LEVEL < 201103L) || (ROSWASM_CPP_STANDARD == 14 && ROSWASM_CPP_COMPILER_LEVEL < 201402L) ||           \
     (ROSWASM_CPP_STANDARD == 17 && ROSWASM_CPP_COMPILER_LEVEL < 201703L) || (ROSWASM_CPP_STANDARD == 20 && ROSWASM_CPP_COMPILER_LEVEL < 202002L) ||           \
     (ROSWASM_CPP_STANDARD == 23 && ROSWASM_CPP_COMPILER_LEVEL <= 202002L) || (ROSWASM_CPP_STANDARD == 26 && ROSWASM_CPP_COMPILER_LEVEL <= 202302L))
# error "The selected ROS Wasm C++ profile requires the corresponding compiler mode"
#endif
/** @brief Equality checks for build-system C++ profile markers.
 * @details ROSWASM_CPP_PROFILE_98/3/11/14/17/20/23/26 are optional build
 * definitions. Any defined marker must agree with ROSWASM_CPP_STANDARD; mismatch
 * is a preprocessing error. Eight profiles still represent one cpp language.
 * @see ROSWASM_CPP_STANDARD
 */
#if (defined(ROSWASM_CPP_PROFILE_98) && ROSWASM_CPP_STANDARD != 98) || (defined(ROSWASM_CPP_PROFILE_3) && ROSWASM_CPP_STANDARD != 3) ||                        \
    (defined(ROSWASM_CPP_PROFILE_11) && ROSWASM_CPP_STANDARD != 11) || (defined(ROSWASM_CPP_PROFILE_14) && ROSWASM_CPP_STANDARD != 14) ||                      \
    (defined(ROSWASM_CPP_PROFILE_17) && ROSWASM_CPP_STANDARD != 17) || (defined(ROSWASM_CPP_PROFILE_20) && ROSWASM_CPP_STANDARD != 20) ||                      \
    (defined(ROSWASM_CPP_PROFILE_23) && ROSWASM_CPP_STANDARD != 23) || (defined(ROSWASM_CPP_PROFILE_26) && ROSWASM_CPP_STANDARD != 26)
# error "C++ SDK consumer and library profiles disagree"
#endif
/** @def ROSWASM_CPP_LEGACY
 * @brief Select stationary old-standard ownership and callback syntax.
 * @details One for C++98/03 and zero otherwise. Legacy owners reject copying
 * and moving; callbacks use function pointers with caller-owned user state.
 * This does not select a different wire schema, backend or permission profile.
 * @see ROSWASM_CPP_NOEXCEPT
 */
/** @def ROSWASM_CPP_NOEXCEPT
 * @brief Portable nonthrowing declaration spelling.
 * @details Expands to throw() in C++98/03 and noexcept in C++11 and newer.
 * It does not enable exception support, catch allocation failures or change
 * numeric ROS error results. The actual provider must match the selected EH ABI.
 * @see ROSWASM_CPP_LEGACY
 */
#if ROSWASM_CPP_STANDARD == 98 || ROSWASM_CPP_STANDARD == 3
# define ROSWASM_CPP_LEGACY 1
# define ROSWASM_CPP_NOEXCEPT throw()
#else
# define ROSWASM_CPP_LEGACY 0
# define ROSWASM_CPP_NOEXCEPT noexcept
#endif
/** @def ROSWASM_CPP_DRAFT_MODE
 * @brief Flag a selected draft C++ compiler mode.
 * @details One for selector26, or selector23 with a pre-final __cplusplus level;
 * zero for other accepted modes. The flag records source-mode status only and
 * does not assert complete language or library conformance.
 * @see ROSWASM_CPP_COMPILER_LEVEL
 */
#if ROSWASM_CPP_STANDARD == 26 || (ROSWASM_CPP_STANDARD == 23 && ROSWASM_CPP_COMPILER_LEVEL < 202302L)
# define ROSWASM_CPP_DRAFT_MODE 1
#else
# define ROSWASM_CPP_DRAFT_MODE 0
#endif
