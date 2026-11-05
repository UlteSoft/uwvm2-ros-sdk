# Fourier php guest safety component

The original application executes all five assertions inside its genuine php Wasm engine: runtime identity, the ROS ABI, empty-alias rejection, invalid UTF-8 rejection and an actual ungranted capability denial. The test checks every output record and the summary; any missing assertion fails.

Fill in the pinned executable and source identities in deployment-deny.example.json. Its policy explicitly enables WASIp1 for main and grants only argument/environment access, stdout/stderr, stdio metadata and process exit. ROS2 imports are exposed with zero resource grants so the raw capability call reaches the real denial boundary. No guest quota is implicit.

Run in the required 64 GiB, zero-swap cgroup:

```sh
export UWVM_ROS_RUNTIME_TEST_DEPLOYMENT="$PWD/deployment-deny.example.json"
export UWVM_ROS_TEST_EVIDENCE_ROOT="/absolute/writable/test-evidence"
xmake
xmake test
```

The common finite runner records the actual VM, Wasm identity, explicit policy, output, exit and owned process retirement. Host tools package and supervise the test; the assertions never execute through host PHP or Ruby. This component does not qualify native vendor traffic or the mandatory official simulation scenarios.
