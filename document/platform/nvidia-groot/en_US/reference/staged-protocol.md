# Full RGB observations for GR00T inference

The original inline `InferAction` family remains available with its explicit
768-byte RGB quota. The new authored staged family removes that image-size
bottleneck by receiving every camera byte across finite calls. It is not an
official NVIDIA ROS interface and does not grant model or robot authority.

The source is `source-definitions/ros2-staged/catalog.preparation.json` plus the
matching original definitions in `bridge_interfaces/`. Build the real ROSIDL
package, prepare this separate family, and export it with
`UWVM_NVIDIA_STAGED_EXPORT=ON`. Bind the actual native proof before installing
any Gateway registry. Preparation output alone is not a native identity.

Each separately peer-bound native service instance owns one observation at a
time. Do not share an instance among mutually untrusted Guests: nonce knowledge
does not authenticate a DDS caller. Bind the worker identity, exact service
resources/types, complete codec identities and native graph in the trusted
Gateway. Keep all four calls, their observers and their availability queries
within that same selected Guest owner. No raw socket import is introduced.

1. Call `BeginObservation` once with a positive u64 observation nonce and all
   actual configured camera keys and `[1,T,H,W,3]` descriptors. The model's real
   modality configuration supplies T and the complete key set. An empty/missing,
   duplicate or extra camera is rejected. The trusted operator chooses a whole
   observation byte limit, up to 16 MiB; the default is 8 MiB across all cameras.
2. Call `WriteRGBChunk` with the same observation nonce, exact key, next uint32
   offset, and 1..768 uint8 bytes. Data is row-major; each reply's `accepted_bytes`
   is the cumulative byte offset for that camera. Every chunk is validated
   before mutation. Gaps, duplicate/replayed offsets, wrong owners/nonces,
   overrun and values outside uint8 fail. Unknown delivery is never retried.
3. Call `InferUploadedAction` once with a separate positive u64 application
   nonce, the observation nonce, and complete state/language values. All camera
   extents must be complete. The owner consumes the observation and makes
   independent NumPy-owned uint8 arrays before its one real
   `Gr00tPolicy.get_action` call. No image is cropped or resized by the bridge.
   The real model processor retains its own original preprocessing semantics.
4. `ReleaseObservation` can retire an unused observation. A released, consumed,
   expired or failed-allocation nonce is not reusable. At most 64 observations
   are admitted, with a finite preallocated history. Lease expiry never renews
   on upload. The trusted process deadline and external owner still bound model
   initialization, native callbacks and GPU work.

A failed complete-state check does not invoke the model. A native model failure,
late result or unsupported post-inference output becomes terminal with unknown
effect retained. The bridge never automatically replays inference. A successful
response preserves all action keys, float32 values and `[1,T,D]` shapes, within
the original 320-values-per-action bound. A larger actual action/horizon needs
another explicit protocol extension; it is not silently projected. Only empty
original `info` dictionaries are represented by this version.

The original once-call and full conversion implementation is reused by both
families. Staging is serialized by an explicit SingleThreadedExecutor; service
queues use reliable/volatile/keep-last depth 1. Native discovery is loopback-only.
Per-call DDS/Gateway deadlines, actual QoS/type pairing, response ACK/retirement
and Guest instance memory isolation remain acceptance obligations. A service
reply does not establish controller stop or physical safety.

An explicit future invocation, only inside the shared finite owner, is:

```sh
python3 run_captured.py --enable-native-inference --enable-staged-video \
  --sdk-root /absolute/frozen/Isaac-GR00T \
  --sdk-source-inventory /absolute/sdk-source-inventory.json \
  --model-root /absolute/frozen/local-model --embodiment ACTUAL_MODEL_TAG \
  --device cuda:0 --domain 231 --service /uwvm_groot/infer_uploaded \
  --staging-prefix /uwvm_groot/guest_a/video \
  --maximum-video-bytes 8388608 --maximum-upload-operations 16384 \
  --observation-lease-ms 5000 --lifetime-ms 60000 --call-ms 1000 \
  --maximum-requests 8
```

Replace every model/SDK path and embodiment with the actually admitted artifact.
This command does not download weights or install grants. Offline model loading
is enforced. The fixed N1.7 README requires 16 GB+ GPU VRAM and a gated backbone;
its Python project requires 3.12. The observed RTX 4060 Laptop environment is not
a qualified inference lane. No dummy policy, smaller unrelated model or vehicle
control example can fill that acceptance cell.

`tests/staged_video_contract.py` checks the actual transport with genuine NumPy,
including complete 224x224 RGB bytes, leases, quotas, ownership, replay and
failure-before-commit. It is authored host protocol evidence only. It does not
execute GR00T, native ROS transport, CUDA, Gateway or a Wasm Guest.

