# Python Wasm ROS2 pub/sub migration candidate

This source candidate targets the documented subset of the ROS2 Jazzy rclpy
7.1.12 API with CPython 3.14.8, wasm32-wasip1, no native exceptions and one guest
thread. Build and runtime qualification require independent evidence. The public test uses the existing SDK genuine guest-component consumer.
This expanded source and test registration await Linux validation; no ROS,
isolation or simulator qualification is claimed.

From this directory, using the installed SDK and its pinned LLVM 23.1.4 tools:

```sh
xmake
xmake test
```

To keep generated files outside the source tree, first configure an output
directory with `xmake f -o /absolute/path/to/build`. This target places its Wasm
in `artifacts/` below that directory; the producer keeps objects and dependency
records there too. The shared artifact recorder places its metadata in the generated object
directory so source and deployable-artifact directories can remain read-only.

The intended build emits one complete application Wasm. Both the publisher and
subscription callback execute in that module. The producer links the existing
CPython static core and the real target `_roswasm_native` C bridge. It packages
an explicitly hashed Python/standard-library closure and never evaluates the
application with build-host Python. No pip, host rclpy, `_rclpy_pybind11`, socket
relay, shell application or replacement Python toolchain is used.

The two endpoints share that interpreter's linear memory, heap, stack and
authority trust domain. Separate Node or Context objects do not create
independent components. Components needing different permissions must use
distinct genuine Wasm runtime instances with private memories. Cross-instance
data must use the shared SDK's qualified typed channel/copy contract; Python
object IDs, raw pointers and guest-supplied component names cannot establish
the calling principal. That independent-component route is not qualified by
this example.

The application uses the guest-local role names `migration.string.publish` and
`migration.string.subscribe`, topic `/migration/echo`, type
`std_msgs/msg/String`, and reliable volatile KEEP_LAST depth 10. The guest also requires an explicitly scoped monotonic clock for freshness and bounded waits. A deployment
must independently bind and grant both operations through the runtime's
controlled ROS2 ABI. Capability aliases use the existing VM identifier grammar: ASCII letters, digits, underscore, hyphen and dot, at most 255 bytes; `.` and `..` are invalid. ROS resources such as `/migration/echo` use the separate canonical ROS-name grammar. These local names confer no authority. The source neither
starts a native client nor supplies native host policy.

The bounded loop publishes a fresh guest-clock-derived string and requires that
the same string arrive through the real native-to-Wasm subscription callback.
Its stdout is an application observation; qualification additionally requires
native operation IDs, audited permission decisions, matching payload identity,
the actual runtime/provider SHA256 and verified actor retirement. Missing
feedback raises `TimeoutError`; refused imports propagate their original error.

`xmake test` now registers the standard `guest-cases` suite, with the required
`required-wasm-feedback` case from `guest-cases.json`. It consumes the existing
VM-owned live boundary and runtime-test deployment, executes this entire Wasm,
and checks successful exit plus the exact completion object. Missing public
admission, deployment or any runtime permission remains a reported blocker;
there is no unconditional success or failure callback.

The guest attempts denied ROS/file opens before permitted topic endpoints,
checks the fresh reverse callback, decodes the real canonical graph response,
reuses a closed graph handle through the actual Wasm import to require error9,
and checks a Python file roundtrip. Per-step guest diagnostics go to stderr;
the completion object is emitted only after cleanup. These are genuine guest
business assertions when actually executed, not native audit attestations.
The component report keeps official simulation unqualified. Stage A additionally
requires original independent native ROS operation/payload observations,
permission/no-effect audits, fresh same-instance correlations and complete
retirement. The existing shared official-simulation verifier supports a frozen
joint profile; its String/query/callback extension belongs to that owner.

Serialization boundaries, foreign handles, controlled disconnect/timeout,
restart, pause/resume, permission-preserving update rollback, debugger ownership
and all applicable official simulators remain mandatory separate obligations.
A ROS loopback alone cannot satisfy official simulation.

Qualification proceeds first through a real official ROS communication
scenario, with causal fresh feedback asserted in the same genuine guest, then
through the full vendor simulator scenarios. These stages keep separate
required/selected/executed/pass/fail/blocked/not-run counts. The component
isolation follow-up must additionally execute private-memory growth, stolen
handle/descriptor, typed-channel generation, callback ownership and update
negative cases. A build, lifecycle proof or startup diagnostic fills none of
those communication, isolation or simulator result cells.

See the shared profile in
`include/platform/ros/transplate/ros2/rclpy/v1/profile.json` and its accompanying
README for the exact implemented and unsupported API scope. The Unitree image
simulation remains a separate mandatory blocked target.

The source requirements, including the deliberately ungranted alias and checked
WASIp1 preopens, are in `binding-requirements.json`; they create no permissions.

The source also closes the actual publisher/subscription, then requires error9
from wrapper and raw import calls. A closed publisher must not invoke a codec;
a closed subscription must not poll natively or dispatch a callback. The native
no-forward/no-effect verdict still requires the independent original audit.
