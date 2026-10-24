// @file access.mbt
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

// Values/diagnostics only. These methods do not import, grant or create entities.
pub fn Endpoint::role(self : Endpoint) -> Int { self.owners.role() }
pub fn Endpoint::maximum_body(self : Endpoint) -> Int { self.maximum_body }
