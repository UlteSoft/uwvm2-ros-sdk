/**
 * @file stdlib_abi.cc
 * @brief Native ROS 1 stdlib abi implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
// Discover the actual selected target-header bit without running target code.
// Defining a GCC-specific macro does not make libc++ use GCC's dual ABI.
#include <string>
#if !defined(__GLIBCXX__) || !defined(_GLIBCXX_USE_CXX11_ABI) || _GLIBCXX_USE_CXX11_ABI != UWVM_ROS1_EXPECT_CXX11_ABI
# error "This is not the requested libstdc++ string ABI"
#endif
int main()
{
    return 0;
}
