// @file wasi_signal_bootstrap.hpp
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// SPDX-License-Identifier: Apache-2.0
// Copyright 2026 UWVM contributors.
#ifndef UWVM_RMW_WASI_SIGNAL_BOOTSTRAP_HPP
#define UWVM_RMW_WASI_SIGNAL_BOOTSTRAP_HPP
#include <platform/ros2/cpp/uwvm_rmw/wasi_signal.hpp>

namespace uwvm_rmw::wasi_signal
{
    using original_application = int (*)(int, char**);

    struct bootstrap_report
    {
        std::uint32_t preparation{}, receiver_join{}, terminal{}, observation{};
        int application_result{};
        bool application_entered{}, application_threw{}, uninstall_attempted{}, uninstall_threw{};
        diagnostics channel{};
    };

    // Platform/B/C real profile preparation precedes this wrapper and must outlive
    // it. This wrapper does not select aliases, quiet NodeOptions or infer rights.
    // The original application owns all Context/Node/Executor finalization. A
    // success report proves neither absence of leaked original contexts nor Root
    // physical Group retirement. Root independently requires both before teardown.
    int run_original(profile const&, original_application, int, char**, bootstrap_report&) noexcept;
}  // namespace uwvm_rmw::wasi_signal
#endif
