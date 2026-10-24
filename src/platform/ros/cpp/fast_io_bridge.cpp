// @file fast_io_bridge.cpp
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** @file Optional C++20 component; callers in C++98 and newer use counted bytes. */
#include <platform/ros/cpp/roswasm/fast_io_bridge.hpp>
#include <fast_io.h>
#if __cplusplus < 202002L
# error "The optional fast_io implementation must be built with C++20 or newer"
#endif
extern "C" uint32_t roswasm_fast_io_stdout_v1(char const* bytes, size_t length)
{
    if(!bytes && length)
    {
        return 22;
    }
#if defined(__cpp_exceptions)
    try
    {
#endif
        if(length)
        {
            fast_io::operations::write_all(fast_io::out(), bytes, bytes + length);
        }
        return 0;
#if defined(__cpp_exceptions)
    }
    catch(...)
    {
        return 107;
    }
#endif
}
