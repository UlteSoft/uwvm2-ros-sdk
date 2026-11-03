;; SPDX-License-Identifier: Apache-2.0
;; Every granted peer can access the whole channel. It has no private contents.
(module
  (memory (export "memory") 1 4)
  (func (export "_initialize")))
