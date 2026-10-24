// @file transform.mbt
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/// Broadcast through an already granted TF owner. Host still fixes the frame
/// pair and bounds. There is exactly one request, with canonically empty output.
pub fn Resource::broadcast_transform(self : Resource, value : @wire.TransformStamped) -> Int {
  if self.operation != TfBroadcast { return 95 }
  let bytes = match value.encode(1) { Ok(v) => v; Err(code) => return code }
  self.request(bytes, 0).code
}

/// Lookup only the alias's configured frame pair; zero time means latest.
/// One request with explicit capacity. For required-capacity diagnostics, use
/// request(wire.u64(time), capacity) directly; this method never retries.
pub fn Resource::lookup_transform(self : Resource, nanoseconds : UInt64, capacity : Int) -> Result[@wire.TransformStamped, Int] {
  if self.operation != TfLookup { return Err(95) }
  let reply = self.request(@wire.u64(nanoseconds), capacity)
  if reply.code != 0 { return Err(reply.code) }
  @wire.read_transform(reply.data, 1)
}
