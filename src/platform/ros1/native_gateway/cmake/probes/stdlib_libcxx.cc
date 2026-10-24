/**
 * @file stdlib_libcxx.cc
 * @brief Native ROS 1 stdlib libcxx implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
// A failed ABI probe alone is not evidence of another standard library.
// Positively establish libc++ before publishing NOT_LIBSTDCXX metadata.
#include <string>
#if defined(__GLIBCXX__) || !defined(_LIBCPP_VERSION)
# error "This is not the selected libc++ target library"
#endif
int main()
{
    return std::string{"link_selected_library"}.empty() ? 1 : 0;
}
