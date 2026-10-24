// @file main.swift
// @brief Execute the genuine agibot main application over its explicit SDK imports.
// @details The application owns its values and closes explicitly acquired capabilities. An installed
// compiler/engine and exact native deployment remain separate requirements.
// SPDX-License-Identifier: Apache-2.0
import Agibot

/// Enter one real Embedded Swift Wasm command through the shared WASI startup.
/// Arguments are borrowed from WASI libc. The output allocation is released on
/// every return, after the SDK has independently retired its ROS capability.
@_cdecl("agibot_language_main")
public func commandMain(
  _ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>
) -> Int32 {
  guard argc == 2 else { return usage() }
  guard let text = argv[1] else { return 22 }
  var length = 0
  while length < 256 && text[length] != 0 { length += 1 }
  guard length > 0, length <= 255 else { return 22 }
  let alias = UnsafeBufferPointer(
    start: UnsafeRawPointer(text).assumingMemoryBound(to: UInt8.self), count: length
  )
  let storage = UnsafeMutablePointer<UInt8>.allocate(capacity: 65536)
  defer { storage.deallocate() }
  let output = UnsafeMutableBufferPointer(start: storage, count: 65536)
  let result = listResources(alias: alias, output: output)
  guard result.errorCode == 0 else { return diagnostic(result) }
  let status = writeJSON(UnsafeBufferPointer(start: storage, count: Int(result.written)))
  guard status == 0 else { return status }
  return result.vendorCode == 0 ? 0 : 1
}
