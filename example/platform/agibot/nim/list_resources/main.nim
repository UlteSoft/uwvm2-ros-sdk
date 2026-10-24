# @file main.nim
# @brief Execute the genuine agibot main application over its explicit SDK imports.
# @details The application owns its values and closes explicitly acquired capabilities. An installed compiler/engine
# and exact native deployment remain separate requirements.
# SPDX-License-Identifier: Apache-2.0
## Read a complete original AimDK record inside a Nim Wasm command.
## The SDK borrows the exact granted alias and a caller-owned 64 KiB output.
## Startup initializes Nim once through the shared WASI C command adapter.
import agibot/nim/client

proc agibot_language_main(argc: cint; argv: ptr UncheckedArray[cstring]): cint
  {.exportc, cdecl.} =
  if argc != 2:
    return cint(usage())
  var output: array[65536, byte]
  let outcome = listResources(argv[1], output)
  if outcome.errorCode != 0:
    return cint(diagnostic(outcome.errorCode, outcome.cleanupError))
  let writeError = writeJson(addr output[0], outcome.written)
  if writeError != 0:
    return cint(writeError)
  return (if outcome.vendorCode == 0: 0 else: 1)
