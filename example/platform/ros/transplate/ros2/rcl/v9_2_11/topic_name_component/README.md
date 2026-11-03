# Genuine rcl 9.2.11 topic-name validation

This target compiles the unchanged official `rcl_validate_topic_name`,
`rcl_validate_topic_name_with_size` and
`rcl_topic_name_validation_result_string` implementations into the Wasm
component. The official rcl source is commit
`18d96c9c2b98e616324ae9a2c7701dd0b0886ff0`; the exact RCUtils dependency is
`10ae877bb83c09555b6006b17794477376779a7b`.
The versioned source lock retains the source, dependency and license hashes.

Run the public Xmake configure, build and `xmake test` from this example using
the installed SDK and the separately qualified, source-pinned
`UWVM_ROS_RUNTIME_TEST_DEPLOYMENT`. Execution requires the normal live runtime
boundary and original resource/lifecycle gates. The current source batch has
not been compiled or executed.

The seven required guest cases retain all 21 positive and 19 negative vectors
from the official versioned test file and exercise both validation entry points.
They also check null arguments and error-state lifetime, explicit bounded
lengths, all nine error diagnostics and unknown diagnostics, and pre-expansion
behavior. Every guest prints exact vector and API-call counts; a partial run
does not satisfy the public manifest.

These functions only validate the subset of naming rules before expansion.
Repeated slashes and unknown substitution names can pass this stage; actual
name expansion and RMW full-name validation remain separate required work.
The original source returns a diagnostic string for unknown result codes even
though its header says NULL. The original source also accepts `~x`; the tilde
check skips the last character. These source/header differences are preserved
and explicitly covered instead of silently changing the upstream algorithm.

The original C pointers and borrowed diagnostic strings refer only to the
calling Wasm instance's private memory. WASI wasm32 uses 32-bit `size_t`;
this is not a byte-compatible native-host pointer ABI. Cross-instance callers
still require the public typed-copy contract, their own genuine language route,
and separate behavior/isolation evidence. This batch adds no cross-instance
pointer sharing, host ROS client, callback, or permission grant.

A finite pure guest API result does not qualify a ROS node, middleware
roundtrip, permissions/isolation negatives, the twelve public boundary
refusals, or Stage B. Those scopes remain required.
