/**
 * @file main.cpp
 * @brief Preserve the original robotis explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* SPDX-License-Identifier: Apache-2.0 */
#include "application.hpp"
#include <iostream>

namespace patrol = uwvm_robotis::patrol;

int main(int argc, char** argv)
{
    if(argc == 5 && std::string_view(argv[1]) == "encode")
    {
        auto goal = patrol::parse_goal(argv[2], argv[3], argv[4]);
        if(!goal)
            return 22;
        std::array<unsigned char, 24> bytes{};
        std::size_t used = 0;
        if(roswasmc_bounded_2_turtlebot3_msgs_action_Patrol_Goal_encode(&*goal, bytes.data(), bytes.size(), &used))
            return 22;
        std::cout.write(reinterpret_cast<char const*>(bytes.data()), static_cast<std::streamsize>(used));
        return std::cout ? 0 : 5;
    }
    if(argc != 9)
        return 22;
    if(std::string_view(argv[5]) == "x")
        return 0;
    auto goal = patrol::parse_goal(argv[5], argv[6], argv[7]);
    if(!goal)
        return 22;
    auto text = std::string_view(argv[8]);
    if(text.empty() || text.size() > 4)
        return 22;
    std::size_t polls = 0;
    for(auto value: text)
    {
        if(value < '0' || value > '9')
            return 22;
        polls = polls * 10 + static_cast<unsigned>(value - '0');
    }
    auto report = patrol::run({argv[1], argv[2], argv[3], argv[4]}, *goal, polls);
    auto primary = report.primary;
    if(report.goal_id)
        std::cout << "accepted goal=" << report.goal_id << '\n';
    for(std::size_t index = 0; index < report.feedback_used; ++index)
    {
        auto const& value = report.feedback[index].state;
        std::cout << "feedback[" << value.size << "]: ";
        std::cout.write(reinterpret_cast<char const*>(value.data), static_cast<std::streamsize>(value.size));
        std::cout.put('\n');
    }
    if(report.result)
    {
        auto const& value = report.result->result;
        std::cout << "terminal kind=" << static_cast<unsigned>(report.terminal_kind) << " goal=" << report.goal_id << "\nresult[" << value.size << "]: ";
        std::cout.write(reinterpret_cast<char const*>(value.data), static_cast<std::streamsize>(value.size));
        std::cout.put('\n');
    }
    else if(report.goal_id || report.send_unknown)
    {
        std::cerr << "goal=" << report.goal_id << " send_unknown=" << report.send_unknown << " outcome unresolved; no replay or automatic cancel\n";
    }
    if(!std::cout && !primary)
        primary = 5;
    std::cerr << "primary=" << primary << " cleanup=" << report.cleanup.cleanup_error << " roles=";
    for(auto value: report.statuses)
        std::cerr << value << ',';
    std::cerr << '\n';
    if(!primary)
        primary = report.cleanup.cleanup_error;
    return static_cast<int>(primary > 125 ? 125 : primary);
}
