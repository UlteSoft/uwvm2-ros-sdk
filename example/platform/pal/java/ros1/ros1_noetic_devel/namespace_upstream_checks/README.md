# Upstream rosjava namespace regression

This standalone public Java example uses the actual four-class versioned
rosjava source profile. The three Apache-licensed upstream test files retain
their original naming vectors; JUnit annotations/imports are replaced by
NamespaceChecks assertions and an explicit main. Fourteen upstream groups and
five supplemental groups run inside the configured Wasm VM. UPSTREAM.json in
the source profile pins original/adapted files and describes every adaptation.

The upstream threaded anonymous-name test is excluded. A separate sequential
64-name check does not establish concurrency, cross-instance uniqueness,
memory isolation, authority, or ROS transport support.

From this folder, with UWVM_ROS_SDK_ROOT set to the SDK root, run:

    xmake f -p wasm-wasip1 -a wasm32 -y -c
    xmake -j1
    xmake test -j1

The test uses UWVM_ROS_JAVA_GUEST_TEST_CONFIG, the same runtime identity
configuration as the public compiler regression. It requires format
uwvm-java-component-runtime-v1, exact runtime path/SHA/source identity,
arguments ["--runtime-aot"], and an environment object. Original VM streams and
execution.json remain under .uwvm-ros/legacy-tests/rosjava-namespace. Use a
fresh isolated project for each test so previous raw results are preserved.
The admitted Linux executor runs the native JVM only for compilation; the
business test runs as genuine Wasm with --ros2-global-disable.
