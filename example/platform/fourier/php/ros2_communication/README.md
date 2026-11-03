# PHP communication with the official ROS2 relay

This Stage A example builds one genuine Zend8.4.13 Wasm command. PHP publishes
two different challenge/sequence messages exactly once, consumes the official
relay's responses, and checks freshness, denied authority, a retired handle and
a bounded period without feedback. Request construction and every functional
assertion execute inside the Wasm interpreter.

The selected peer is unchanged
[ros-tooling/topic_tools1.3.4](https://github.com/ros-tooling/topic_tools/tree/462af78b06ad8baafc27ce09cb3dfee96421cfab).
It runs on ROS2 Jazzy and forwards `std_msgs/msg/String`. The existing public
restricted ROS2 gateway is the VM system boundary. The Python harness controls
process lifetime, binds the stopped worker PID to that gateway's exact policy,
and reads the guest's case metadata. It contains no ROS client or guest business
implementation.

The source is a qualification candidate. Exact owner and timestamp words remain eight-byte strings throughout the wasm32 PHP application. Its presence does not establish an
executed communication result. Read the actual `execution.json` and retained
Linux command logs for the selected installation and artifact identities.

## Build and select the installation

Install the SDK, Xmake, an explicitly selected directly executable uwvm2-ros,
the matching restricted ROS2 gateway, and the pinned official relay. The SDK
build consumes its installed genuine interpreter and source modules; it does
not build or install native ROS dependencies while packaging an application.

Copy `deployment.example.json` into a private deployment directory. Set the
actual executable paths, the complete relay SHA256, a new32-hex guest challenge,
the native library prefixes, a writable private cache path, and the explicit
ROS domain. The example's zero relay digest deliberately fails validation.
The gateway and worker receive the same exact operation grants. The example
grants only standard output and the WASI monotonic timer, plus three bounded
topic capabilities and one bounded ROS steady-clock capability.

```sh
export UWVM_ROS_SDK_ROOT=/path/to/installed-sdk
export UWVM_STAGE_A_RUN_CONFIG=/absolute/path/to/private-deployment.json
xmake -P .
xmake test -P .
```

The default `qualification-stage=stage-a` selects communication only.
`xmake run -P .` executes the same public scenario harness. Native peer and gateway
logs, the exact runtime arguments, the Wasm identity, actual process identities,
guest case output and retirement outcome are retained under `.uwvm-ros/stage-a`.
Keep that evidence outside the deployment `build` directory.

The reliable transient-local QoS is an explicit grant. It allows the first
single publish to survive the relay's type discovery without resubmitting an
operation. Every response must contain the guest's current challenge and exact
sequence. A prior response cannot satisfy the second request. After the
negative operations, both the reply stream and the unconnected idle topic must
stay empty for the bounded guest timer interval.

## Qualification scope

The six Stage A assertions are listed in `cases.json`. A successful selected
communication invocation reports six executed guest cases. It continues to
report the representative Fourier/Jazzy Stage B vendor-simulation row as
required and blocked. To request full acceptance explicitly:

```sh
xmake f -P . --qualification-stage=full
xmake test -P .
```

That invocation returns failure while the required Stage B implementation and
evidence are absent, even if Stage A succeeds. The complete owned vendor,
language, ABI, architecture and simulation inventories remain separate mandatory
work. A relay loop provides no physics, robot-specific simulation or independent
component-memory qualification. All PHP modules in this command share one
interpreter instance and its trust domain.

This route uses polling; it does not register a PHP callback or perform guest
file I/O. Callback delivery, file I/O, cancellation, concurrency, multi-language
composition and independent private-memory instances need their applicable
numbered follow-up profiles. Known native business bypasses remain quarantined.
