/**
 * @file guest.c
 * @brief Retained doosan native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/doosan/en_US/README.md
 */

/* Controlled imports, then complete checked C records. */
#include <doosan/flows/c/entry.h>

int main(int argc, char** argv)
{
    return uwvm_doosan_entry(argc, argv);
}
