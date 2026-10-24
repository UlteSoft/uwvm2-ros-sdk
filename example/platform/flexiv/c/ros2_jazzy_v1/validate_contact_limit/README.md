# Complete original contact-limit request

This runtime-input C/C++ application decodes and re-encodes every original
`SetMaxContactWrench_Request.max_wrench` element. The exact source contract
allows finite values and positive infinity, while NaN and negative infinity
are refused. Other floating fields keep their finite-only policy.

Build through the sole public `set_` API and `UWVM_ROS_SDK_ROOT`. Native control
effects, ROS permissions and guest bridge acceptance require separate evidence.
The validation matrix records real wasm32/wasm64 results and every raw stream.

The original physical request contract also states six components per robot,
nonnegative values, and atomic whole-request refusal by the controller. This
example isolates wire decoding and the exact floating policy. Its codec test
receipt does not attest those model/cardinality checks or a control invocation.
