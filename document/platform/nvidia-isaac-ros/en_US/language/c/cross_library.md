# Original Array library consumers

The ordinary Xmake library graph now has three original-type examples:

| Consumer | Producer | Kind | Example |
|---|---|---|---|
| C | C++20 | static | `c/ros2/original_array_cpp_static` |
| C++20 | C | static | `cpp/ros2/original_array_c_static` |
| C++20 | C | shared Core module | `cpp/ros2/original_array_c_shared` |

The existing `c/ros2/original_array_modules` additionally supplies the independently initialized C++ algorithm consumed by C. Its four module deployment retains the separate IO, algorithm and ROS authority design. Producer/consumer evidence is specific to its direction, kind and width; it does not establish every language pair.

`set_kind("static")` creates a genuine indexed archive of relocatable Wasm objects. `add_deps` selects the producer and propagates its public include directory. A C application remains compiled as C even when its C++ dependency selects the C++ final link driver. The archive's independent unreferenced member has an unresolved sentinel; it must remain unselected. Build diagnostics retain the actual `nv_array_summarize` extraction trace. Only the final main Wasm is deployed for either static example.

`nv_array_summarize(wire, size, output)` accepts a borrowed canonical payload of at most 9872 bytes and a nonoverlapping writable scalar summary. It decodes the complete original Array before committing count, signed 64-bit id sum and FNV32. No pointer escapes. Null/oversized input returns 22; bounded decode errors propagate and leave all output fields unchanged. The malformed suffix check verifies this transactional contract. The input and output belong to the same application memory; a static library is not a permission isolation boundary.

The shared producer uses module name `array_c` and private byte/record storage. `nv_array_begin(size)` returns an opaque generation token, or zero for a busy/oversized/exhausted generation. `nv_array_put(token,index,byte)` accepts only the next byte (0–255). Foreign or retired tokens return 9, while bad order/bounds return 22. `nv_array_finish(token)` decodes exactly the declared extent and seals writes. `nv_array_fact(token,key)` returns count, signed id sum or unsigned FNV32 for keys 0/1/2; invalid token/key returns -9/-22. `nv_array_close(token)` retires access to the sealed generation. No guest pointer, ROS handle or borrowed span crosses this scalar ABI.

The shared module's direct ROS acquisition and clock probes must return 13 and 76. The denied clock output remains unchanged. It receives no ROS authority or extra WASI grant, while Preview 1 default WASI still supplies basic standard streams. Main alone receives the explicit subscriber grant and monotonic clock, with `same-module` ROS call boundary. Preload the separately built `array_c.wasm` with attribute `none` and the same true width. This is owned-memory Core preload, not ELF/PIC/dylink linking.

Each example carries its own English/Chinese README, full manual deployment instructions and explicit v2 configuration template. Build with the shared pinned LLVM 23 action, select exactly wasm32 or wasm64, and run only with an operator-supplied `UWVM_ROS_RUN_CONFIG`. The public launcher preserves the policy and already-built bytes. Deployment is one main Wasm for static graphs, or main plus the named producer Wasm for the shared graph. No native executable is an application sidecar.

Native verification must compare every original nested field and all 72 covariance entries of the two-detection fixture, not just the count/id summary. Mode 0 closes normally; 1 closes/reopens while the old raw handle stays invalid (9); 2 revokes and denies reopening (125). A denied subscription returns 13 without creating a native resource. Record native subscriber/publication counters, exact resource creation/close/revoke counts and complete process cleanup. Linux x86 and QEMU AArch64, wasm32 and true memory64/table64 are distinct evidence rows. Source/build availability does not qualify GPU/NITROS, a real ARM compiler host, transitive archive graphs, symbol collisions or unsupported language pairs.
