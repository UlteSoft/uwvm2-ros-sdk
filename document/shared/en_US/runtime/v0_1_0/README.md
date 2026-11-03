# Installed Linux runtime compatibility contract 0.1.0

The runtime release target is one uwvm2-ros ELF per target. Language compilers
remain SDK build dependencies. The VM owner produces the runtime, its actual
capability/install identity and the VM release workflow. This SDK contract does
not certify a dev ELF or add a second launcher.

Use the installed SDK and existing xmake/xmake test entry in the selected public
example. The existing uwvm-ros-command-run-v1 launcher selects installed uwvm2-ros
by default or an explicitly configured runtime path. It appends the already-built
application as the sole --run operand and adds no permissions, feature/EH options
or host-native business fallback. Public operation never depends on development
Mac paths, private overlays or old qualification output.

share/wasm/runtime/v0.1.0/contract.json separates SDK target/language declarations,
owner-reported historical observations and new dev-release qualification. Global
feature enums are not per-language requirements or runtime support. Actual emitted
imports, memory/table widths, proposals, library graphs and constraints must be
measured per final product and run against the exact released ELF. Missing rows
remain NOT_RUN; the inventory records them rather than guessing support.

Guest thread-local storage differs from network TLS and from native ELF TLS.
Wasm threads, shared memory and atomics need their own supported initialization
and scheduling. The current compile target profiles declare single-thread use.
Modern guest Wasm EH differs from native paired C++ unwind/CFI. Generated-chain
checked unwind and no body fallback remain mandatory in actual executions.
The native22 finite runtime still has four observed ELF dependencies and is not
a fully static or newly released product. Compile and runtime LLVM identities
are independent.

For each ROS1/ROS2 distribution, RMW, generated message/typesupport and native
provider ABI, retain exact source/plugin/executable/library identities and real
permission/audit/feedback and official simulator evidence. Historical local owner
reports do not automatically qualify a new dev release. Every existing language
and binary/static/shared graph remains required. The r702 twelve TypeScript
cold/warm runtime commands are pending; no native ESM implementation is claimed.

The current RRBot public test has two mandatory scenarios and fails explicitly
because genuine Wasm queries/callbacks/feedback are not implemented. Its previous
host-native observer and caller were physically removed. A missing release or
provider cannot be converted to success by skipping tests or by reading an old
receipt. The root Linux CI aggregate uses that same public project interface.
