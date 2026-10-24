// @file image.mbt
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/// Typed Image publication on an already explicitly granted topic owner.
pub fn Resource::write_image(self : Resource, value : @wire.Image) -> Int {
  if self.operation != TopicPublish { return 95 }
  match value.encode(1) { Ok(bytes) => self.write(bytes); Err(code) => code }
}

/// One poll, no retry. For diagnostic required-capacity metadata use poll()
/// directly and decode its successful bytes with wire.read_image instead.
pub fn Resource::poll_image(self : Resource, capacity : Int) -> Result[@wire.Image, Int] {
  if self.operation != TopicSubscribe { return Err(22) }
  let reply = self.poll(capacity)
  if reply.code != 0 { return Err(reply.code) }
  @wire.read_image(reply.data, 1)
}
