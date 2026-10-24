/** @file main.cpp
 * @brief Use genuine C++ values as a consumer of independently built C module exports.
 */
#define UWVM_DEMO_MAIN
#include <dobot/c/module_demo.h>
#include <array>

int main()
{
    std::array<uint32_t, 6> report{};
    report[0] = uwvm_demo_observe();
    report[1] = uwvm_demo_cleanup();
    report[2] = uwvm_demo_present();
    report[3] = uwvm_demo_bits();
    report[4] = report[2] ? uwvm_demo_score(report[3]) : 0;
    report[5] = uwvm_demo_denied_probe();
    uint32_t output = uwvm_demo_emit(report[0], report[1], report[2], report[3], report[4], report[5]);
    uint32_t status = report[0] ? report[0] : report[1] ? report[1] : report[5] != 13 ? 22u : output;
    return static_cast<int>(status > 125 ? 125 : status);
}
