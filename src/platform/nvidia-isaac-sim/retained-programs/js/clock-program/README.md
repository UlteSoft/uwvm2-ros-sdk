# Complete QuickJS clock application source

`main.mjs` exports the genuine embedded engine's command `main` entry. It owns
both original twenty-frame loops and calls the platform `ClockSession`. Prepare
the complete canonical SDK records and source through `clock_control/prepare_sdk.py`;
the application imports only installed `include/platform/` paths. Its module
closure must include the actual shared bootstrap, UTF-8/basic Guest bridge and
retained owned-service modules, plus both real platform generated modules.

The real QuickJS producer must compile `roswasm:rmw_service_native` into the same
Wasm with its explicit default-off ROS2 service selection, exact canonical catalog
pin and all twelve signature checks. The currently published shared managed route
enables that selection only for AssemblyScript; its generic JavaScript builder
also rejects this native builtin. These are concrete publication gaps. There is
no passing JavaScript xmake/QuickJS/Wasm/Guest receipt. A Node parse result checks
syntax only. No host JavaScript provider or injected transport is part of this app.

Provide one actual basic-stdin frame: four little-endian uint32 length bytes,
then2..2048 bytes of strict UTF-8 JSON. Its exact eight fields are:

| Field | Required complete value |
| --- | --- |
| `call` | Preadmitted call alias,1..255 strict UTF-8 bytes, no NUL |
| `observer` | Distinct corresponding observer alias with the same bounds |
| `availability` | Distinct independently granted availability alias |
| `nonce` | Nonzero uint64 decimal string; no sign, whitespace or leading zero |
| `pollWorkBudget` | Integer1..65536, caller-driven work per operation |
| `availabilityWaitNanoseconds` | Decimal string0..1000000000; actual native wait |
| `requestQosHex` | Exactly160 lower-hex characters encoding the complete expected80-byte QoS profile |
| `responseQosHex` | Same complete independent expected-response profile |

Configure both genuine QoS profiles independently from native policy. They cannot
grant permissions. There is no default service/domain or synthetic successful
configuration. No environment, filesystem, network or Node module supplies input.
Native Kit and blocked input/Host operations still require their finite owner.

Every returned body and actual same-take metadata remains visible; full diagnostic
records may describe refused ACKs or rejected business data. Output preserves
BigInt bits as tagged decimal strings and every typed byte. Each JSON record is
bounded to1MiB, written through actual basic output in <=512-byte chunks. A chunk
continues only after status0; a failed write is not retried or reported as success.
Select an engine print bound of at least512 bytes and a whole-run output quota
that admits the complete finite log. No record is silently truncated.

The first application error survives explicit native CANCEL and independent
endpoint cleanup. Local work exhaustion90 abandons the actual ticket; it does not
acknowledge DDS cancellation or physical stopping. The shared JavaScript SDK keeps
its full validated receipt buffers private; this wrapper never presents expected
QoS bytes as an actual receipt snapshot. Read `CLOCK-SDK.md` for the whole contract.
