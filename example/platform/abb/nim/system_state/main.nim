## @file main.nim
## @brief Read complete ABB system_state values through genuine Nim records/codecs.
## @details WASI arguments supply the exact granted alias and optional IO name.
import abb/nim/observation
proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.} =
  ## @brief Execute one bounded observation. @return Original full numeric status.
  var outcome = observe(3, argument(1), argument(2), 1000)
  report(outcome)
