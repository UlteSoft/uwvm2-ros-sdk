// @file Package.swift
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// swift-tools-version: 6.2
import PackageDescription

// Pass -Xcc -DROSWASM_C_FFI_BACKEND=1 (or 2) explicitly. SDK/toolchain versions
// must match. The package itself adds no capabilities or WASI preopens.
let package = Package(
  name: "RosWasm",
  products: [.library(name: "RosWasm", targets: ["RosWasm"])],
  targets: [
    // The numeric implementation is compiled once from sdk/src by the
    // selected target builder; this module imports its one public header.
    .systemLibrary(name: "CRosWasm", path: "Sources/CRosWasm"),
    .target(name: "RosWasm", dependencies: ["CRosWasm"]),
  ],
  swiftLanguageModes: [.v6]
)
