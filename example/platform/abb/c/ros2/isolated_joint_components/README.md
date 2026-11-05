# ABB joint component business cores

Run `xmake` here to build the two C guests and the reader's static pointer library.
For the local Wasm checks, set `UWVM_ROS_RUN_CONFIG` to an installed-runtime JSON
configuration containing these fields:

```json
{
  "format": "uwvm-ros-command-run-v1",
  "target": "wasm32-wasip1",
  "backend": "ros2",
  "distribution": "jazzy",
  "runtime": "/absolute/installation/bin/uwvm2-ros",
  "runtime_sha256": "REPLACE_WITH_COMPLETE_EXECUTABLE_SHA256",
  "runtime_source_identity": "sha256:REPLACE_WITH_RECORDED_SOURCE_SHA256",
  "runtime_arguments": [
    "-Raot", "-Rct", "0", "--log-verbose", "--runtime-compiler-log", "err",
    "-Rllvm-cache-path", "path", "/absolute/writable/cache",
    "--wasm-set-main-module-name", "main",
  ],
  "application_arguments": []
}
```

Use the executable and source identity supplied by the runtime installation;
the placeholders deliberately do not pass validation. The test records the
actual running executable, guest bytes, resource limits, checked unwind result,
and AOT fallback diagnostic before accepting the twelve guest assertions per
role. It runs in the Linux execution environment required by this SDK's test
contract. The runtime's installation must also supply its required operating
system facilities, including the signed-cache keyring policy.

`xmake test` executes the local guest checks and the required integration test.
The integration test remains unsuccessful until the private-memory channel and
real ROS deployment described in `component.integration.json` are implemented.
Local business assertions do not establish ROS communication or component
isolation.
