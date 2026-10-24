/**
 * @file unused.cpp
 * @brief Keep an unreferenced object to audit genuine static archive extraction.
 */
#include <cstdint>

/** @brief Remain absent from the linked main when no symbol references this object. */
extern "C" std::uint32_t payload_unused_archive_object()
{ return 0x7711; }
