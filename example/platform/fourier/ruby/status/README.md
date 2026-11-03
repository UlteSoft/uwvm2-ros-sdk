# Fourier CRuby 3.4.7 status guest

Run `xmake` from this directory using the installed SDK. The build packages
the complete original source/module graph in the pinned genuine interpreter
Wasm. The host builder does not run the application in a host interpreter.
The sole application output belongs to this example’s `build/` directory;
its receipt under `.uwvm-ros/` records the source and engine SHA256.
Building bytes does not qualify VM, ROS or legacy-client behavior.

`xmake test` currently returns non-success with
`BLOCKED_REQUIRED_FOURIER_WASM_ROS_STATUS`. It retains one fresh blocker
record and the required case names. Actual guest query/callback audit, the
installed runtime/provider contract and corresponding official Fourier
simulation remain missing. No host ROS query, quarantined bridge or silent
skip substitutes for these cases. The guest accepts an explicitly granted
alias only; the source performs no controller command.

The required completed route is source → genuine interpreter Wasm →
uwvm2-ros permissions/audit → controlled ROS host, with status and callbacks
processed inside Wasm. It must verify denied queries without corresponding
native effects and bounded lifecycle/retirement before this test can pass.
