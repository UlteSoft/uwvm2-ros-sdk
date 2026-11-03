# Frozen command reproduction inputs

The frozen joint-step command is 4449 bytes with whole SHA256
c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043.
Preserve this published artifact and every failed source-build candidate.

A byte-for-byte source reproduction must retain the canonical linker output
basename portable-joint-step-v0-1-0, as declared by the canonical source target.
Xmake set_basename("portable-joint-step-v0-1-0") keeps this name when the public
target has a platform-specific identity. The physical output name is part of
this frozen build's reproduction inputs. Product discovery and producer records
must follow the actual targetfile returned by Xmake.

Use the exact source/ABI pins, wasm-wasip1/wasm32 release/noeh profile, compiler
arguments and LLVM archive 8e97c5e26755459965d86361f970c9b7d6d2e7c44e953fc0faeb82621b157522
with Xmake d24ec7daa11ab5007f33221ba0a883f9c7479afae2a47370773f209047152a1e.
Compare the complete candidate to the published whole SHA before runtime use.
SDK10's R25 owner review reports a same-C0 ordinary public configure/build with
this basename; its xmake test, VM and ROS execution counts remain zero.

Platform adaptation and grants continue to consume the exact frozen Wasm.
A successful compile or a matching reproduction does not establish public guest
execution, communication, application isolation or platform qualification.
