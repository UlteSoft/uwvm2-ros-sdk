## @file wire.nim
## @brief Use one canonical Nim wire type identity across observers and records.
## @details Re-declaring NativeText here creates a distinct nominal type even
## when its fields match, preventing whole-record decoding of string fields.
import ros/nim/wire
export wire
