/**
 * @file guest.c
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/* Raw and complete C I/O examples; explicit argv and Runtime policy required. */
#include <universal_robots/flows/c/entry.h>

int main(int argc, char** argv)
{
    return uwvm_ur_entry(argc, argv);
}
