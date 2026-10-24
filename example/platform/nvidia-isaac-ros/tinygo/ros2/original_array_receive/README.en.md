# TinyGo original_array_receive

Set UWVM_ROS_SDK_ROOT to the installed SDK. Use xmake f -a wasm32, then xmake -vD -j1.
TinyGo 0.38.0 uses LLVM 19.1.2 code generation, Go 1.24.2 source support, and the shared
LLVM 23.1.4 support assembler/final linker. The output is one genuine Wasm application.

Copy main-random-realtime-opt-in.deployment.template.json to an operator file, replace the installed runtime/gateway paths and review
its arguments and exact main-module permissions. Set UWVM_ROS_RUN_CONFIG to that file,
then use xmake run original_array_receive. Build and run are separate, and neither adds grants.

Only main receives realtime-clock/random plus the template's literal original Array
aliases, RIHS/codec identities, QoS and bounds. The separate ROS-denied template gives
no ROS aliases and observes 13. Receive closes once and checks old-handle 9; echo
publishes 20 complete Arrays; revoke checks old-handle 9 and reopen 125. Full nested
fields, four corners and all covariance values remain intact. Only empty 11 permits
bounded waiting, and primary/retirement/cleanup observations remain separate.

Finite scope: wasm32 binary on x86/QEMU AArch64. Other widths, library kinds, native types, GPU/NITROS/simulation and ARM-host compilation need separate acceptance.
