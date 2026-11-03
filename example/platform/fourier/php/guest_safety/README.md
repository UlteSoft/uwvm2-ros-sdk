# Fourier php guest safety component

This application runs five required assertions inside the genuine PHP/Zend 8.4.13 Wasm engine: interpreter identity, raw ROS ABI v1, empty-alias rejection, invalid UTF-8 rejection and an ungranted raw capability denial. The guest returns nonzero on any failure and emits bounded per-case records plus a summary.

Install an uwvm2-ros runtime that supports this engine and configure its explicit deployment. The supplied `deployment-deny.example.json` selects disabled ROS authority, bounded denial auditing and a cache inside this example. It grants no ROS capability or guest filesystem access. It selects LLVM AOT’s `fast-compile` policy and four compilation workers. From this directory:

```sh
export UWVM_ROS_RUN_CONFIG="$PWD/deployment-deny.example.json"
xmake
xmake test
```

`xmake` packages the original source graph in the pinned interpreter Wasm. `xmake test` invokes that application through the existing SDK runtime launcher; a missing runtime/configuration or failed assertion returns non-success. Build, VM execution and actual case counts require independent Linux evidence.

This component covers guest validation and VM refusal. The mandatory Fourier official-provider control/query/callback and fresh-feedback scenarios remain incomplete and must also execute through uwvm2-ros. A passing component suite cannot qualify the platform, legacy client migration or a standalone runtime release.
