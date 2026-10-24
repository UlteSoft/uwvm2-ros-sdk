# nvidia-isaac-ros Go decode_argument

Use the pinned genuine Go1.24.2 action through public Xmake. Set UWVM_ROS_SDK_ROOT, then run `xmake f -a wasm32` and `xmake -vD -j1`. The result is one Wasm. `wasm64` is refused explicitly.

Pass one complete canonical hexadecimal argument; it is decoded and re-encoded without projecting fields.

This standalone CPU codec is separate from native ROS original-Array exchange. Compiler/build/execution evidence is reported per component; source presence never grants ROS or GPU authority.
