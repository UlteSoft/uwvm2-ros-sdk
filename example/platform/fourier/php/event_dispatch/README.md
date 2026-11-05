# Genuine PHP event dispatch and lifecycle example

This public target exercises 22 required cases inside genuine Zend8.4.13 Wasm:
full-width readiness, two explicit metadata-watch lifecycles, retained size
failure, owned event delivery, callback reentrancy/exception handling, local
frame/binding refusals, and a stale same-instance raw owner refusal. Each run must produce all 22 guest results and checked process-retirement evidence. No host PHP application is used.

Set UWVM_ROS_PHP_METADATA_TEST_DEPLOYMENT to the explicit pinned test deployment.
The Xmake supervisor supplies a fresh 32-lowercase-hex nonce argument. `observe` must have event.observe permission;
`source` must be a separately granted metadata-watchable source paired by host
policy. Both aliases need two sequential independent open/close lifecycles.
Use the existing public deployment schema, with the required argument/stdout
and monotonic-pause permissions. No schema key, fallback alias or grant is
invented here. The source need not activate any ROS payload or business client.

Run ordinary `xmake` and `xmake test` from this directory only under the qualified
Linux execution envelope. Qualify this exact new source graph independently;
R316's earlier argument-forwarding graph does not contain these helpers.
Keep the actual source/Wasm/VM/native hashes, per-process checked-unwind result,
caller-bound grants/audit, commands, full logs and physical-retirement evidence.

The actual runtime must produce the ResourceClosed event and enforce the stale
owner refusal. Local malformed-frame/source/replay checks only test the PHP
codec/binding and do not authenticate fabricated bytes or demonstrate an ACL.
Classes in one interpreter share one trust domain. The callback runs on the
calling Wasm stack. A size failure retains the native record; the program
explicitly polls again. The library never resizes, sleeps, retries a service
request or replays an already consumed callback.

The service helper tests here only cover a local oversized request and an
already retired owner. Successful service admission, real official ROS
response correlation, error11 credit,107/110 uncertainty and other service
lifetimes still require separate positive/negative cases. They are mandatory,
not skipped or replaced by these 22 cases. Official rcl pointer/wait-set,
allocator, signed sequence, request-info and callback-thread semantics remain
different or missing. This target is not Stage A communication, Stage B,
complete rcl compatibility, cross-instance grants or memory isolation.

Readiness is queried only after a successful explicit event_watch. The example
also checks that an unwatched observer returns [9, null], and never iterates
an absent snapshot. The test supervisor does not run host PHP, invoke a
native business client or add quotas. Basic WASI and each required operation
must be explicit in the selected deployment. Test outcomes belong to the
per-invocation evidence directory, not the source case manifest.
