// Licensed under the APL-2.0 License (see LICENSE file).
// Compile this translation unit as C++20. It deliberately does not include
// monotonic_clock.h: the C++17 caller owns the shared observation/ledger state.
#include <uwvm2/utils/thread/monotonic_sample.h>
extern "C" bool uwvm_host_clock_read_monotonic_ns(::std::int64_t* value) noexcept
{
    return value && ::uwvm2::utils::host_clock::details::read_monotonic_ns(*value);
}
