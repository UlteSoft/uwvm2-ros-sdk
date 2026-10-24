/**
 * @file guest.c
 * @brief Preserve the original pal explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/* Controlled imports, then complete checked C records. */
#include "entry.h"

int main(int argc, char** argv)
{
    return uwvm_pal_entry(argc, argv);
}
