# CRuby memory64 maintenance profile

This separate pure-WASI command uses wasm64 pointers and tables with the SDK's
explicit WASIp1 memory64 import extension. It is not standard Preview 1 ABI
compatibility, and does not enable Ruby memory64 ROS or shared-library profiles.

The exact overlays in share/language/ruby/memory64-source.json change the stack
pointer assembly and preserve 1536 pointer words for setjmp/fiber spill storage
(6144 bytes on wasm32; 12288 bytes on wasm64). Asyncify overflow guards remain.
These internal buffers are unrelated to host permission or I/O quotas.

Changing these headers changes jmp_buf layout throughout CRuby. Use the public
build.py --target wasm64-wasip1 producer with a fresh build cache; incremental
make dependencies do not rebuild every object using that structure. The producer
can reuse the exact locked source tree and installed LLVM/Binaryen tools without
downloading or reinstalling a toolchain.

The published runtime metadata records construction and actual guest evidence.
Full Xmake qualification is tracked separately; source construction alone is
not a test pass. Application Ruby continues to execute entirely inside Wasm.
