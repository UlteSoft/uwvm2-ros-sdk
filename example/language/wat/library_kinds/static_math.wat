;; SPDX-License-Identifier: Apache-2.0
(module
  (func $checksum_bias (export "checksum_bias") (param i32) (result i32)
    local.get 0 i32.const 7 i32.add))
