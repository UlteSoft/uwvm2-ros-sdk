# Floating fields in generated ROS records

Official ROS messages can use IEEE NaN to represent an unavailable measurement.
For example, `joint_state_broadcaster` publishes NaN effort values when its
hardware does not provide effort. Choose the numeric domain in the original
field's catalog bounds, independently of runtime interface and resource grants.

The industrial complete-record generator accepts these `float_policy` values
on original `float32` and `float64` fields and their arrays or sequences:

- `finite`: finite values, including signed zero and subnormal values.
- `finite-or-positive-infinity`: finite values and positive infinity.
- `finite-or-nan`: finite values and NaN, including signed NaNs. Both infinities
  are rejected.

An omitted policy selects `finite`. A policy on a non-floating field is an error.
For a JointState profile, for example:

```json
"bounds": {
  "name": {"sequence": 16, "string": 128},
  "position": {"sequence": 16, "float_policy": "finite-or-nan"},
  "velocity": {"sequence": 16, "float_policy": "finite-or-nan"},
  "effort": {"sequence": 16, "float_policy": "finite-or-nan"}
}
```

These sequence and string capacities are explicit choices for that profile.
The numeric policy participates in the adapter codec identity. Regenerate the
guest records and the native adapter, and build the VM and gateway with the
matching manifest. The native message identity still identifies the original
ROS declaration. A different codec identity cannot satisfy the old grant.

Native size validation, guest encode/decode, and VM wire validation use the same
field domain. Truncated payloads, excessive sequence counts, and mismatched
record shapes remain invalid. The policy neither grants ROS operations nor
changes byte, frequency, queue, or timeout quotas.

A guest planning motion must validate that the positions it actually uses are
known and finite. An unavailable effort value can remain NaN without inventing
a measurement or preventing the guest from reading the other fields. JSON
diagnostics should represent unknown measurements explicitly, since JSON does
not have a NaN number literal.
