"""One cpp facade for strict ISO C++98/03/11/14/17/20/23/26-draft profiles.

The emitter consumes resolved records/interfaces, never reparses upstream IDL.
It retains C storage, declared defaults, constants, codec/native identities and
original operation functions. Distribution adaptation is deliberately limited
to the two known bounded facade products and refuses an unrecognized shape.
No source emission is evidence of compiler, Guest, native ROS or hardware use.
"""

import hashlib
import json
import re
import textwrap

STANDARDS = (98, 3, 11, 14, 17, 20, 23, 26)


def _documentation(brief, details, see, params=(), result=None, template=()):
    """Render reviewed semantic fields as an ordinary C++ documentation block."""

    def field(tag, text):
        return textwrap.wrap(
            " * " + tag + " " + text,
            width=100,
            subsequent_indent=" * ",
            break_long_words=False,
            break_on_hyphens=False,
        )

    lines = ["/**"] + field("@brief", brief) + field("@details", details)
    for name, text in template:
        lines.extend(field("@tparam " + name, text))
    for direction, name, text in params:
        lines.extend(field("@param[" + direction + "] " + name, text))
    if result:
        lines.extend(field("@return", result))
    lines.extend(field("@see", see) + [" */"])
    return lines


def emit_records(records):
    """@brief Emit complete, documented C++ aliases and canonical record codecs.

    @details Consumes resolved bounded record objects in dependency order. It
    preserves C storage, defaults, bounds and codec identities for C++98 through
    draft26. Returns source only; performs no writes, imports or permission grants.
    @param records Resolved records with symbols, bounds and declared defaults.
    @return A terminated C++ header string; malformed records raise ordinary
    attribute/type errors rather than inventing fields or native identities.
    @see emit_interfaces
    """
    lines = [
        "/** @file Macro-selected C++ full-field bounded records. */",
        "// roswasm-cpp-documented-facade-v3",
        "#pragma once",
        "#include <platform/ros/cpp/roswasm/roswasmcpp.hpp>",
        '#include "bounded_records.h"',
        "namespace uwvm_custom {",
    ]
    for record in records:
        lines += _documentation(
            "Complete bounded storage for " + record.symbol + ".",
            "This alias preserves every field, capacity and constant of the C record. "
            "It owns its inline storage; it is not a native ROS object. No permission "
            "or synchronization is provided. Available in C++98 and newer.",
            record.c_symbol + "_valid",
        )
        lines.append("typedef " + record.c_symbol + " " + record.symbol + ";")
    lines += ["}", "namespace roswasmcpp {"]
    for record in records:
        name, c = record.symbol, record.c_symbol
        metadata = "RecordMetadata_" + name
        lines += [
            "#ifndef ROSWASM_CPP_CODEC_" + c.upper(),
            "#define ROSWASM_CPP_CODEC_" + c.upper() + " 1",
        ]
        lines += _documentation(
            "ODR-safe wire metadata for " + name + ".",
            "Template storage gives one program-wide address for each selected "
            "record identity, including C++98/03 callers taking its address. "
            "These constants describe the schema and confer no Host authority.",
            "roswasmcpp::Codec<uwvm_custom::" + name + ">",
            template=(("T", "Record type used to instantiate the metadata storage."),),
        )
        lines.append("template<class T> struct " + metadata + " {")
        lines += _documentation(
            "Maximum admitted serialized extent in bytes.",
            "This is a schema bound, not the size of the C storage or a grant "
            "of transport quota. The actual value can encode to fewer bytes.",
            c + "_wire_size",
        )
        lines.append("static const size_t max_wire_bytes = " + str(record.maximum) + ";")
        lines += _documentation(
            "Exact generated canonical codec identity.",
            "The pointed-to terminated string has static storage duration. "
            "Its bytes identify the codec contract; they are not an alias grant "
            "and must not be replaced by a source-file hash.",
            c + "_valid",
        )
        lines += [
            "#if ROSWASM_CPP_LEGACY",
            "static char const* const codec_identity;",
            "#else",
            "static constexpr char const* codec_identity = "
            + json.dumps(record.codec_identity)
            + ";",
            "#endif",
            "};",
            "template<class T> const size_t " + metadata + "<T>::max_wire_bytes;",
            "#if ROSWASM_CPP_LEGACY",
            "template<class T> char const* const "
            + metadata
            + "<T>::codec_identity = "
            + json.dumps(record.codec_identity)
            + ";",
            "#else",
            "template<class T> constexpr char const* " + metadata + "<T>::codec_identity;",
            "#endif",
        ]
        lines += _documentation(
            "Canonical complete-value codec for " + name + ".",
            "Uses the generated C validator and codec rather than C++ object layout. "
            "No Host imports occur. Separate destination objects may be used "
            "concurrently; allocation failure follows the selected standard library. "
            "Available in C++98 and newer.",
            c + "_encode",
        )
        lines.append(
            "template<> struct Codec<uwvm_custom::"
            + name
            + "> : "
            + metadata
            + "<uwvm_custom::"
            + name
            + "> {"
        )
        if record.has_native_defaults:
            lines += _documentation(
                "Construct the declared defaults of " + name + ".",
                "Starts from zero C storage and applies the generated schema-default "
                "initializer to every declared field. Plain value-initialization "
                "alone does not apply nonzero schema defaults. No allocation or "
                "Host permission is required.",
                c + "_default",
                result="An independent complete C record containing its declared defaults.",
            )
            lines += [
                "static uwvm_custom::" + name + " default_value() ROSWASM_CPP_NOEXCEPT {",
                "uwvm_custom::" + name + " value = {0};",
                "(void)" + c + "_default(&value);",
                "return value;",
                "}",
            ]
        lines += _documentation(
            "Encode all fields of " + name + " transactionally.",
            "Validates bounded lengths and semantic fields before allocating a "
            "temporary byte vector. The original output remains unchanged on a "
            "false result. Input is borrowed only for this call; the successful "
            "output owns its bytes. No Host operation or replay occurs.",
            c + "_encode",
            params=(
                ("in", "value", "Complete source record with live inline storage."),
                ("in,out", "out", "Owning destination, replaced only after complete encoding."),
            ),
            result="True on exact encoding; false for invalid fields or a C codec refusal. "
            "Allocation failure follows the active exception/termination profile.",
        )
        lines += [
            "static bool encode(uwvm_custom::" + name + " const& value, wire::bytes& out) {",
            "if (!" + c + "_valid(&value)) return false;",
            "size_t n = " + c + "_wire_size(&value), used = 0;",
            "wire::bytes next(n);",
            "if ("
            + c
            + "_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n) return false;",
            "out.swap(next);",
            "return true;",
            "}",
        ]
        lines += _documentation(
            "Decode exact canonical bytes into " + name + ".",
            "The C decoder checks the full record and exact consumption before "
            "committing a temporary. Truncated, trailing, over-bound or invalid "
            "input leaves out unchanged. The input range and output storage must "
            "not overlap. No borrowed input pointer is retained or Host call made.",
            c + "_decode",
            params=(
                ("in", "bytes", "Live immutable byte range for this synchronous call."),
                ("in,out", "out", "Complete owning record; unchanged on refusal."),
            ),
            result="True only for a complete validated record; otherwise false.",
        )
        lines += [
            "static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::" + name + "& out) {",
            "return !" + c + "_decode(bytes.data(), bytes.size(), &out);",
            "}",
            "};",
            "#endif",
        ]
    return "\n".join(lines + ["}", ""])


def _interface_rows(interfaces):
    rows = []
    for item in interfaces:
        if item.kind == 'message':
            continue
        rows.append(
            dict(
                name=item.symbol,
                kind=item.kind,
                prefix='roswasmc_bounded_' + str(item.version) + '_' + item.name.replace('/', '_'),
                components={role: record.symbol for role, record in item.components.items()},
                c_components={role: record.c_symbol for role, record in item.components.items()},
            )
        )
    return rows


def emit_interfaces(interfaces):
    """@brief Emit full typed Service/Action bindings for every selected C++ mode.

    @details Consumes resolved component records and exact C operation prefixes;
    message-only interfaces contribute no owner. Shared C++ owners implement
    lifetime and caller-driven dispatch. Emission grants no alias or native type.
    @param interfaces Resolved message/service/action interface objects.
    @return Documented header source, without executing or writing it.
    @see emit_records
    """
    return _emit_interface_rows(_interface_rows(interfaces))


def _binding_method(brief, details, see, signature, statement, params, result):
    return _documentation(brief, details, see, params=params, result=result) + [
        signature + " {",
        statement,
        "}",
    ]


def _emit_interface_rows(rows):
    lines = [
        "/** @file Complete typed Service/Action owners for the selected C++ profile. */",
        "// roswasm-cpp-documented-facade-v3",
        "#pragma once",
        "#include <platform/ros/cpp/roswasm/vendor.hpp>",
        '#include "bounded_interfaces.h"',
        '#include "bounded_records.hpp"',
        "namespace uwvm_custom {",
        "#ifndef ROSWASM_CPP_VENDOR_COMMON_NAMESPACE",
        "#define ROSWASM_CPP_VENDOR_COMMON_NAMESPACE 1",
    ]
    lines += _documentation(
        "Borrow an exact generated-interface alias.",
        "Returns the same pointer and byte count without allocation, validation "
        "or authority. Keep the original StringView storage alive for the "
        "synchronous consumer. Does not open an endpoint.",
        "roswasmcpp::vendor_detail::alias",
        params=(("in", "value", "Borrowed counted alias bytes."),),
        result="A borrowed C string range with no added terminator.",
    )
    lines += [
        "inline roswasmc_string alias(::roswasmcpp::StringView value) {",
        "return ::roswasmcpp::vendor_detail::alias(value);",
        "}",
    ]
    lines += _documentation(
        "Common stationary owner for independent advertise/respond roles.",
        "Aliases the shared C++ foundation owner; it retains each actual Host "
        "handle separately and exposes checked construction/cleanup reports. "
        "Neither selecting this type nor constructing a binding grants rights.",
        "roswasmcpp::vendor_detail::ServerOwners",
    )
    lines += ["typedef ::roswasmcpp::vendor_detail::ServerOwners ServerOwners;", "#endif"]
    for row in rows:
        name, prefix, components = row["name"], row["prefix"], row["components"]
        binding = name + "Binding"
        lines += [
            "#ifndef ROSWASM_CPP_INTERFACE_" + prefix.upper(),
            "#define ROSWASM_CPP_INTERFACE_" + prefix.upper() + " 1",
        ]
        lines += _documentation(
            "Exact C operation binding for " + name + ".",
            "Static operations preserve the generated full-field C codec and "
            "native identity. Calls are synchronous and never automatically "
            "replayed. Owners remain in their Guest instance; callers serialize "
            "access to shared capability/bundle state. C++98 and newer are supported.",
            prefix + ("_call" if row["kind"] == "service" else "_send"),
        )
        lines.append("struct " + binding + " {")
        for role, value in components.items():
            lines += _documentation(
                "Complete " + role + " record for " + name + ".",
                "This is the generated owning bounded record, including its "
                "declared fields and capacities. No endpoint is opened by naming "
                "the type; validators/codecs define its admitted representation.",
                "roswasmcpp::Codec<uwvm_custom::" + value + ">",
            )
            lines.append("typedef " + value + " " + role.title() + ";")
        if row["kind"] == "service":
            lines += _binding_method(
                "Issue one complete " + name + " request.",
                "Encodes before importing. A valid exact response commits to the "
                "destination; any refusal or malformed/trailing reply leaves it "
                "unchanged. Requires the exact independently granted service.call "
                "alias. Transport failure may follow an external effect; do not "
                "retry implicitly. Source/destination must not overlap owner state.",
                prefix + "_call",
                "static roswasmc_result call(roswasmc_capability const* cap, Request const& request, Response& response)",
                "return " + prefix + "_call(cap, &request, &response);",
                (
                    (
                        "in",
                        "cap",
                        "Live instance-owned service-call capability and stable context.",
                    ),
                    ("in", "request", "Complete request borrowed for this call."),
                    ("in,out", "response", "Disjoint owning response; unchanged on failure."),
                ),
                "Actual result; error zero only after complete response validation. "
                "Nonzero includes local validation and Host policy/transport failures.",
            )
            lines += _binding_method(
                "Poll one incoming " + name + " request.",
                "Uses the already activated advertise subscription. Empty input "
                "returns UWVM_ROS_AGAIN rather than invoking a handler or waiting. "
                "A nonzero ticket and decoded request commit together only after "
                "exact framing. No clock, thread or automatic pump is created.",
                prefix + "_poll",
                "static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& ticket, Request& request)",
                "return " + prefix + "_poll(cap, &ticket, &request);",
                (
                    ("in", "cap", "Live granted service-advertise capability."),
                    (
                        "in,out",
                        "ticket",
                        "Receives the nonzero request ticket on success; not a handle.",
                    ),
                    ("in,out", "request", "Disjoint destination; unchanged on refusal."),
                ),
                "Actual polling result; idle/error preserves both outputs. "
                "Invalid framing is UWVM_ROS_INVALID.",
            )
            lines += _binding_method(
                "Respond once to one live " + name + " ticket.",
                "Requires the separate service.respond alias, correlated ticket, "
                "valid response and Host deadline. Validates the empty acknowledgement; "
                "an invalid acknowledgement may follow an admitted native response, "
                "so a failure is never automatically replayed.",
                prefix + "_respond",
                "static roswasmc_result respond(roswasmc_capability const* cap, uint64_t ticket, Response const& response)",
                "return " + prefix + "_respond(cap, ticket, &response);",
                (
                    ("in", "cap", "Live independently granted response capability."),
                    ("in", "ticket", "Nonzero ticket returned by the matching server poll."),
                    ("in", "response", "Complete response borrowed synchronously."),
                ),
                "Actual response result; zero requires a validated zero-byte acknowledgement.",
            )
        else:
            lines += _binding_method(
                "Send and locally track one " + name + " goal.",
                "Requires an initialized five-role Action bundle and exact action.send "
                "authority. Checks local slot capacity and complete goal fields "
                "before importing. Commits one new unique nonzero ID only after an "
                "exact eight-byte acknowledgement; ambiguous failure is not replayed.",
                prefix + "_send",
                "static roswasmc_result send(roswasmc_action_bundle* bundle, Goal const& value, uint64_t& id)",
                "return " + prefix + "_send(bundle, &value, &id);",
                (
                    (
                        "in,out",
                        "bundle",
                        "Stable initialized owner/context/goal table in this instance.",
                    ),
                    ("in", "value", "Complete goal record borrowed for the call."),
                    (
                        "in,out",
                        "id",
                        "Disjoint destination, unchanged on failure; receives a tracked goal ID.",
                    ),
                ),
                "Actual send result; full slots give UWVM_ROS_TOO_LARGE, invalid "
                "framing/duplicates give UWVM_ROS_INVALID.",
            )
            lines += _binding_method(
                "Read correlated feedback for one owned " + name + " goal.",
                "Uses the bundle feedback role and requires action feedback authority. "
                "The ID must still belong to the local goal table. Idle/refused or "
                "mismatched/truncated bytes leave value unchanged. Feedback does "
                "not retire the goal or imply terminal completion.",
                prefix + "_feedback",
                "static roswasmc_result feedback(roswasmc_action_bundle* bundle, uint64_t id, Feedback& value)",
                "return " + prefix + "_feedback(bundle, id, &value);",
                (
                    ("in", "bundle", "Live stable Action owner and exact feedback role."),
                    ("in", "id", "Nonzero locally owned goal ID."),
                    (
                        "in,out",
                        "value",
                        "Disjoint complete feedback destination; unchanged on failure.",
                    ),
                ),
                "Actual result; UWVM_ROS_BAD_HANDLE for an unowned ID, "
                "UWVM_ROS_AGAIN for no available feedback.",
            )
            lines += _binding_method(
                "Read and retire one validated terminal " + name + " result.",
                "Uses action result authority. Checks the returned ID, terminal "
                "marker 2..4 and complete result before updating either output "
                "and removing exactly this ID from the local table. Cancellation "
                "acknowledgement alone does not retire a goal.",
                prefix + "_result",
                "static roswasmc_result result(roswasmc_action_bundle* bundle, uint64_t id, uint8_t& kind, Result& value)",
                "return " + prefix + "_result(bundle, id, &kind, &value);",
                (
                    (
                        "in,out",
                        "bundle",
                        "Live stable bundle; successful result consumes one tracked ID.",
                    ),
                    ("in", "id", "Locally owned nonzero goal ID."),
                    ("in,out", "kind", "Terminal marker 2..4, committed only on success."),
                    ("in,out", "value", "Complete result; disjoint from kind and owner state."),
                ),
                "Actual result; idle/failure preserves outputs and local ownership.",
            )
            lines += _binding_method(
                "Poll one incoming " + name + " server goal.",
                "Requires an activated independent Action advertise role. Reads "
                "one exact nonzero ticket plus complete Goal; commits destinations "
                "together. Does not call a handler, wait or create a worker thread.",
                prefix + "_poll",
                "static roswasmc_result poll(roswasmc_capability const* cap, uint64_t& id, Goal& value)",
                "return " + prefix + "_poll(cap, &id, &value);",
                (
                    ("in", "cap", "Live granted Action advertise capability."),
                    (
                        "in,out",
                        "id",
                        "Receives a nonzero correlated server ticket, not a capability.",
                    ),
                    (
                        "in,out",
                        "value",
                        "Disjoint complete Goal destination; unchanged on failure.",
                    ),
                ),
                "Actual result; UWVM_ROS_AGAIN on idle and UWVM_ROS_INVALID for bad framing.",
            )
            for role in ("feedback", "result"):
                is_result = role == "result"
                params = [
                    ("in", "cap", "Live independently granted action.respond capability."),
                    ("in", "id", "Nonzero server ticket from the matching goal poll."),
                ]
                if is_result:
                    params.append(("in", "kind", "Terminal wire marker, restricted to 2..4."))
                params.append(
                    ("in", "value", "Complete " + role + " record borrowed only for this call.")
                )
                lines += _binding_method(
                    "Send one typed " + role + " for " + name + ".",
                    "Encodes the complete component before importing. Host policy "
                    "checks ticket ownership, type and deadline. "
                    + (
                        "A successful terminal response consumes the Host's one-shot terminal state. "
                        if is_result
                        else "Feedback does not signal terminal completion. "
                    )
                    + "A failed or malformed acknowledgement may follow an external "
                    "effect; no automatic retry or rollback occurs.",
                    prefix + "_respond_" + role,
                    "static roswasmc_result respond_"
                    + role
                    + "(roswasmc_capability const* cap, uint64_t id"
                    + (", uint8_t kind" if is_result else "")
                    + ", "
                    + role.title()
                    + " const& value)",
                    "return "
                    + prefix
                    + "_respond_"
                    + role
                    + "(cap, id"
                    + (", kind" if is_result else "")
                    + ", &value);",
                    tuple(params),
                    "Actual response result; zero requires a validated empty acknowledgement.",
                )
            for role in ("result", "feedback"):
                lines += _binding_method(
                    "Validate the complete " + role + " component locally.",
                    "Checks every generated field, bounded length and semantic "
                    "constraint without serialization, allocation or Host imports. "
                    "Independent immutable records may be checked concurrently.",
                    row["c_components"][role] + "_valid",
                    "static bool valid_" + role + "(" + role.title() + " const& value)",
                    "return " + row["c_components"][role] + "_valid(&value) != 0;",
                    (("in", "value", "Complete live " + role + " record."),),
                    "True only when the generated C validator accepts all fields.",
                )
        lines.append("};")
        for role in ("Client", "Server"):
            implementation = row["kind"].title() + role
            lines += _documentation(
                "Owning typed " + row["kind"] + " " + role.lower() + " for " + name + ".",
                "Binds every operation to " + binding + ". Owners stay stationary "
                "in one Guest instance and are not copyable. Explicit Host alias "
                "grants remain necessary. Shared state is caller-serialized; "
                "callbacks execute only when the caller polls, never on a hidden thread. "
                "Available in C++98 and newer.",
                "roswasmcpp::vendor_detail::" + implementation,
            )
            lines.append(
                "typedef ::roswasmcpp::vendor_detail::"
                + implementation
                + "<"
                + binding
                + "> "
                + name
                + role
                + ";"
            )
        lines.append("#endif")
    return "\n".join(lines + ["}", ""])


def _adapt_records(text):
    # Old products contain a deliberately small generated grammar. Extract only
    # codec metadata; C records/default code are the original products unchanged.
    from types import SimpleNamespace

    aliases = dict(re.findall(r'using (\w+)\s*=\s*(\w+)\s*;', text))
    entries = list(
        re.finditer(
            r'template\s*<\s*>\s*struct\s+Codec\s*<\s*uwvm_custom::(\w+)\s*>\s*\{(.*?)\n?\};',
            text,
            re.S,
        )
    )
    records = []
    for entry in entries:
        name, body = entry.group(1, 2)
        maximum = re.search(r'max_wire_bytes\s*=\s*(\d+)', body)
        identity = re.search(r'codec_identity\s*=\s*("(?:[^"\\]|\\.)*")', body)
        if name not in aliases or not maximum or not identity:
            raise ValueError('unrecognized generated C++ record facade: ' + name)
        records.append(
            SimpleNamespace(
                symbol=name,
                c_symbol=aliases[name],
                maximum=int(maximum.group(1)),
                codec_identity=json.loads(identity.group(1)),
                has_native_defaults=bool(re.search(r'\bdefault_value\(', body)),
            )
        )
    if len(entries) != len(aliases) or ('Codec<' in text and not records):
        raise ValueError('incomplete generated C++ record facade extraction')
    return emit_records(records)


def _adapt_interfaces(text):
    # Each original nonmoving concrete client starts with this literal class
    # grammar. Preserve all actual components, never select a sample family.
    starts = list(re.finditer(r'class (\w+)Client\s*\{', text))
    rows = []
    for at, start in enumerate(starts):
        name = start.group(1)
        end = starts[at + 1].start() if at + 1 < len(starts) else len(text)
        body = text[start.start() : end]
        service = re.search(
            r'using\s+Request\s*=\s*(\w+)\s*;\s*using\s+Response\s*=\s*(\w+)\s*;', body
        )
        action = re.search(
            r'using\s+Goal\s*=\s*(\w+)\s*;\s*using\s+Result\s*=\s*(\w+)\s*;\s*using\s+Feedback\s*=\s*(\w+)\s*;',
            body,
        )
        if service:
            prefix = re.search(r'return\s+(roswasmc_bounded_\w+)_call\s*\(\s*&cap_\s*,', body)
            if not prefix:
                raise ValueError('missing full C service operation: ' + name)
            rows.append(
                dict(
                    name=name,
                    kind='service',
                    prefix=prefix.group(1),
                    components=dict(zip(('request', 'response'), service.groups())),
                    c_components={},
                )
            )
        elif action:
            prefix = re.search(r'return\s+(roswasmc_bounded_\w+)_send\s*\(\s*&bundle_\s*,', body)
            result = re.search(r'!\s*(\w+)_valid\s*\(\s*&replies.result\s*\)', body)
            feedback = re.search(r'!\s*(\w+)_valid\s*\(\s*&replies.feedback\s*\)', body)
            if not prefix or not result or not feedback:
                raise ValueError('missing full C action operations/components: ' + name)
            rows.append(
                dict(
                    name=name,
                    kind='action',
                    prefix=prefix.group(1),
                    components=dict(zip(('goal', 'result', 'feedback'), action.groups())),
                    c_components=dict(result=result.group(1), feedback=feedback.group(1)),
                )
            )
        else:
            raise ValueError('unrecognized full C++ interface: ' + name)
        if 'class ' + name + 'Server' not in body:
            raise ValueError('missing independent generated server: ' + name)
    if (
        not starts
        and 'class ServerOwners' not in text
        and ('Client' in text or 'ServerOwners' in text)
    ):
        raise ValueError('unrecognized generated C++ interface header')
    return _emit_interface_rows(rows)


def _adapt_owned_records(text):
    """Refresh the closed older profile facade without reparsing an IDL."""
    from types import SimpleNamespace

    aliases = {name: c for c, name in re.findall(r"typedef\s+(\w+)\s+(\w+)\s*;", text)}
    records = []
    for match in re.finditer(r"struct\s+RecordMetadata_(\w+)\s*\{(.*?)\};", text, re.S):
        name, body = match.groups()
        maximum = re.search(r"max_wire_bytes\s*=\s*(\d+)", body)
        identity = re.search(r'codec_identity\s*=\s*("(?:[^"\\]|\\.)*")', body)
        declaration = re.search(
            r"\bCodec\s*<\s*uwvm_custom::" + re.escape(name) + r"\s*>\s*:", text
        )
        if name not in aliases or not maximum or not identity or not declaration:
            raise ValueError("unrecognized selected-profile C++ record metadata: " + name)
        end = text.find("#endif", declaration.end())
        if end < 0:
            raise ValueError("missing selected-profile record terminator: " + name)
        records.append(
            SimpleNamespace(
                symbol=name,
                c_symbol=aliases[name],
                maximum=int(maximum.group(1)),
                codec_identity=json.loads(identity.group(1)),
                has_native_defaults="default_value" in text[declaration.end() : end],
            )
        )
    if len(records) != len(aliases):
        raise ValueError("incomplete selected-profile record metadata")
    return emit_records(records)


def _adapt_owned_interfaces(text):
    """Refresh exact existing Binding/owner aliases with documented templates."""
    rows = []
    for match in re.finditer(r"struct\s+(\w+)Binding\s*\{(.*?)\};", text, re.S):
        name, body = match.groups()
        components = {
            role.lower(): value
            for value, role in re.findall(
                r"typedef\s+(\w+)\s+(Request|Response|Goal|Result|Feedback)\s*;", body
            )
        }
        if set(components) == {"request", "response"}:
            kind = "service"
            prefix = re.search(r"return\s+(roswasmc_bounded_\w+)_call\s*\(", body)
            c_components = {}
        elif set(components) == {"goal", "result", "feedback"}:
            kind = "action"
            prefix = re.search(r"return\s+(roswasmc_bounded_\w+)_send\s*\(", body)
            c_components = {}
            for role in ("result", "feedback"):
                validator = re.search(
                    r"valid_" + role + r"\s*\([^{}]*\)\s*\{\s*return\s+(\w+)_valid\s*\(", body
                )
                if not validator:
                    raise ValueError("missing complete selected-profile " + role + " validator")
                c_components[role] = validator.group(1)
        else:
            raise ValueError("incomplete selected-profile C++ binding: " + name)
        if not prefix:
            raise ValueError("missing original C operation prefix: " + name)
        for owner in ("Client", "Server"):
            pattern = (
                r"typedef\s+::roswasmcpp::vendor_detail::"
                + kind.title()
                + owner
                + r"\s*<\s*"
                + re.escape(name)
                + r"Binding\s*>\s*"
                + re.escape(name)
                + owner
                + r"\s*;"
            )
            if not re.search(pattern, text):
                raise ValueError("missing selected-profile owning alias: " + name + owner)
        rows.append(
            dict(
                name=name,
                kind=kind,
                prefix=prefix.group(1),
                components=components,
                c_components=c_components,
            )
        )
    if not rows and "Binding" in text:
        raise ValueError("unrecognized selected-profile interface facade")
    return _emit_interface_rows(rows)


def transform(source, relative, body):
    if '/cpp/' not in relative or not relative.startswith('include/platform/'):
        return body, None
    if source.name not in ('bounded_records.hpp', 'bounded_interfaces.hpp'):
        return body, None
    text = body.decode('utf-8')
    if 'roswasm-cpp-documented-facade-v3' in text:
        return body, None
    if source.name == 'bounded_records.hpp':
        output = _adapt_owned_records(text) if 'RecordMetadata_' in text else _adapt_records(text)
    else:
        owned = re.search(r'\bstruct\s+\w+Binding\s*\{', text) or re.search(
            r'typedef\s+::roswasmcpp::vendor_detail::ServerOwners\s+ServerOwners\s*;', text
        )
        output = _adapt_owned_interfaces(text) if owned else _adapt_interfaces(text)
    # Distribution has already rebound every original include. Keep those exact
    # chosen destinations instead of reintroducing maintenance-tree spellings.
    if '#include <platform/' in text:
        for name in ('bounded_records.h', 'bounded_records.hpp', 'bounded_interfaces.h'):
            found = re.search(r'#include [<"]([^>"\n]*' + re.escape(name) + r')[>"]', text)
            if found and found.group(1).startswith('platform/'):
                output = output.replace('"' + name + '"', '<' + found.group(1) + '>')
        output = output.replace(
            '<roswasm/roswasmcpp.hpp>', '<platform/ros/cpp/roswasm/roswasmcpp.hpp>'
        )
        output = output.replace('<roswasm/vendor.hpp>', '<platform/ros/cpp/roswasm/vendor.hpp>')
    return output.encode('utf-8'), dict(
        kind='full-field-cpp-standard-facade-v2',
        standards=list(STANDARDS),
        source_sha256=hashlib.sha256(body).hexdigest(),
        changed_c_records=False,
        changed_native_identity=False,
        implicit_permissions=[],
    )


def _plain_aliases(text):
    """Only alias declarations, without changing record representations."""
    return re.sub(r'\busing\s+(\w+)\s*=\s*([^;]+);', r'typedef \2 \1;', text)


def _nested_namespace(text):
    found = re.search(r'namespace\s+(\w+(?:::\w+)+)\s*\{', text)
    if not found:
        return text
    names = found.group(1).split('::')
    text = (
        text[: found.start()]
        + ''.join('namespace ' + name + ' {' for name in names)
        + text[found.end() :]
    )
    # These audited alias/client products each have one encompassing nested
    # namespace. The final standalone closing brace closes that namespace.
    final = list(re.finditer(r'^\}(?:\s*//[^\n]*)?\s*$', text, re.M))
    if not final:
        raise ValueError('missing generated namespace terminator')
    at = final[-1]
    return text[: at.start()] + '}' * (len(names) - 1) + text[at.start() :]


def _basic_portable(text):
    text = _plain_aliases(_nested_namespace(text))
    text = text.replace('#include <cstdint>', '#include <stdint.h>')
    text = (
        text.replace('std::uint', 'uint')
        .replace('std::int', 'int')
        .replace('std::size_t', 'size_t')
    )
    text = (
        text.replace('[[nodiscard]]', '')
        .replace('noexcept', 'ROSWASM_CPP_NOEXCEPT')
        .replace('nullptr', '0')
    )
    return text


def _stationary_portable(text):
    """Port the closed stationary-wrapper grammar, retaining every method."""
    text = _basic_portable(text)
    # An old-standard unique owner must reject copies at compile time. Rvalue
    # declarations do not exist in that profile; no auto_ptr-style copy moves.
    text = re.sub(r'\b(\w+)\s*\(\s*\1\s*&&\s*\)\s*=\s*delete\s*;', '', text)
    text = re.sub(r'\w+\s*&\s*operator\s*=\s*\(\s*\w+\s*&&\s*\)\s*=\s*delete\s*;', '', text)
    text = re.sub(r'([^;{}]+)\s*=\s*delete\s*;', r'private: \1; public:', text)

    def owner(match):
        name, body = match.group(1, 2)
        fields = []

        def field(found):
            fields.append(found.group(2))
            return found.group(1) + found.group(2) + (found.group(3) or '') + ';'

        body = re.sub(r'((?:[A-Za-z_]\w*\s+)+)(\w+_)(\s*\[[^\]]+\])?\s*\{\s*\}\s*;', field, body)
        # Fill every removed member initializer in the actual constructors.
        if fields:
            constructors = list(
                re.finditer(
                    r'(?<![~A-Za-z0-9_])'
                    + re.escape(name)
                    + r'\s*\([^{};]*\)(?:\s*ROSWASM_CPP_NOEXCEPT)?\s*(?::[^{}]+)?\{',
                    body,
                )
            )
            if constructors:
                for constructor in reversed(constructors):
                    prefix = constructor.group(0)[:-1]
                    extra = ','.join(field + '()' for field in fields)
                    prefix += (',' if ':' in prefix else ':') + extra
                    body = body[: constructor.start()] + prefix + '{' + body[constructor.end() :]
            else:
                position = body.find('public:')
                if position < 0:
                    raise ValueError('stationary wrapper has no public construction seam')
                position += len('public:')
                body = (
                    body[:position]
                    + name
                    + '():'
                    + ','.join(field + '()' for field in fields)
                    + '{}'
                    + body[position:]
                )
        return 'class ' + name + ' {' + body + '};'

    # A member's {} initializer also ends in `};`; a lazy class regex would
    # stop there and leave the initializer unported. Match balanced class
    # braces while keeping comments and string/character literals opaque.
    spans = []
    tokens = r'''"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'|//[^\n]*|/\*[\s\S]*?\*/|[{}]'''
    for start in re.finditer(r'\bclass\s+(\w+)\s*\{', text):
        depth = 1
        for token in re.finditer(tokens, text[start.end() :]):
            if token.group(0) == '{':
                depth += 1
            elif token.group(0) == '}':
                depth -= 1
            if not depth:
                end = start.end() + token.end()
                terminator = re.match(r'\s*;', text[end:])
                if not terminator:
                    raise ValueError('stationary class terminator changed')
                spans.append(
                    (
                        start.start(),
                        end + terminator.end(),
                        start.group(1),
                        text[start.end() : end - 1],
                    )
                )
                break
        else:
            raise ValueError('unbalanced stationary class')
    for start, end, name, body in reversed(spans):

        class Match:
            def group(self, *_):
                return name, body

        text = text[:start] + owner(Match()) + text[end:]
    return text


def _old_branch(original, portable):
    header = (
        'platform/ros/cpp/roswasm/views.hpp'
        if '#include <platform/' in original
        else 'roswasm/views.hpp'
    )
    return (
        '#include <'
        + header
        + '>\n#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20\n'
        + portable
        + '\n#else\n'
        + original
        + '\n#endif\n'
    )


def _fixed_records(text):
    aliases = dict(re.findall(r'using (\w+)\s*=\s*(\w+)\s*;', text))
    portable = _basic_portable(text)
    portable = portable.replace('std::span<unsigned char const>', '::roswasmcpp::ByteView').replace(
        'out=std::move(next)', 'out.swap(next)'
    )
    # The exact-size integral constant remains available in constant expressions.
    portable = portable.replace('static constexpr size_t wire_bytes=', 'enum {wire_bytes=')
    portable = re.sub(r'enum \{wire_bytes=(\d+);', r'enum {wire_bytes=\1};', portable)
    # Identity storage is inherited from an ODR-safe old-standard template.
    identities = re.findall(
        r'template<> struct Codec<uwvm_custom::(\w+)> \{\s*static constexpr size_t wire_bytes=\d+;\s*static constexpr char const\* codec_identity=("[^"\n]*");',
        text,
    )
    if len(identities) != len(aliases):
        raise ValueError('fixed record metadata grammar changed')
    for name, identity in identities:
        helper = 'FixedIdentity_' + name
        prefix = (
            'template<class T>struct '
            + helper
            + ' {static char const* const codec_identity;};\ntemplate<class T>char const* const '
            + helper
            + '<T>::codec_identity='
            + identity
            + ';\n'
        )
        portable = portable.replace(
            'template<> struct Codec<uwvm_custom::' + name + '> {',
            prefix
            + 'template<> struct Codec<uwvm_custom::'
            + name
            + '>:'
            + helper
            + '<uwvm_custom::'
            + name
            + '> {',
        )
        portable = portable.replace(
            'static constexpr char const* codec_identity=' + identity + ';', ''
        )
    return _old_branch(text, portable)


# Keep the original bounded facade dispatch as the single entry to distribution
# assembly; extra selected source wrappers use explicit audited product grammars.
_bounded_transform = transform


def transform(source, relative, body):
    """@brief Adapt one recognized public C++ product to its explicit old profile.

    @details Only recognized include/platform/.../cpp products are changed. The
    original modern branch, C representation and native/codec identities remain;
    unrecognized matched grammars fail instead of producing a partial wrapper.
    This source operation performs no file writes or toolchain qualification.
    @param source Source Path used for the audited product filename.
    @param relative SDK-relative destination path using forward slashes.
    @param body UTF-8 source bytes, borrowed without mutation.
    @return A pair of output bytes and adaptation metadata, or unchanged bytes
    with None when no adaptation applies. Malformed recognized source raises ValueError.
    @see emit_records
    """
    bounded, note = _bounded_transform(source, relative, body)
    if note is not None or '/cpp/' not in relative or not relative.startswith('include/platform/'):
        return bounded, note
    text = body.decode('utf-8')
    portable = None
    if source.name == 'fixed_records.hpp':
        return (
            _fixed_records(text).encode(),
            'Fixed records retain exact C storage/identity in all cpp standards',
        )
    if source.name in ('state.hpp', 'io.hpp') and 'roswasmc_capability const* cap_' in text:
        portable = _stationary_portable(text)
    elif source.name == 'topic_rpc.hpp' and 'class TopicRequests' in text:
        portable = _stationary_portable(text)
    elif source.name == 'scout.hpp' and 'class Client' in text and 'uwvm_scout_' in text:
        portable = (
            _stationary_portable(text)
            .replace('roswasmc_twist value{}', 'roswasmc_twist value={0}')
            .replace('auto code=', 'uint32_t code=')
        )
    elif source.name == 'binding_ros2.hpp' and 'UWVM_INDUSTRIAL_GENERATED_RECORDS' in text:
        portable = _basic_portable(text)
    elif (
        source.name in ('action_owner.hpp', 'trajectory_lifecycle.hpp')
        and 'namespace uwvm_industrial' in text
    ):
        include = (
            'platform/ros/cpp/roswasm/detail/industrial_portable.hpp'
            if '#include <platform/' in text
            else 'roswasm/detail/industrial_portable.hpp'
        )
        portable = '#include <' + include + '>\n'
    elif source.name == 'crc.hpp' and 'uwvm_unitree_go_lowcmd_pack_crc' in text:
        dependency = re.search(r'#include [<"]([^>"\n]*crc.h)[>"]', text)
        if not dependency:
            raise ValueError('complete Unitree CRC C dependency missing')
        helper = (
            'platform/ros/cpp/roswasm/detail/unitree_crc_portable.hpp'
            if '#include <platform/' in text
            else 'roswasm/detail/unitree_crc_portable.hpp'
        )
        portable = '#include <' + dependency.group(1) + '>\n#include <' + helper + '>\n'
    elif source.name in ('sport.hpp', 'b2_sport.hpp') and 'uwvm_unitree_' in text:
        portable = _basic_portable(text).replace('#include <span>', '#include <roswasm/views.hpp>')
        portable = re.sub(r'std::span<([^>]+)>', r'::roswasmcpp::ArrayView<\1>', portable)
        portable = re.sub(
            r'return (uwvm_unitree_(?:b2_)?sport_prepare)\(([^,]+),id,\{([^}]*)\}([^;]*)\);',
            lambda m: 'uwvm_unitree_sport_arguments arguments={'
            + (m.group(3) or '0')
            + '};return '
            + m.group(1)
            + '('
            + m.group(2)
            + ',id,arguments'
            + m.group(4)
            + ');',
            portable,
        )
    if portable is None:
        return body, None
    return _old_branch(text, portable).encode(), dict(
        kind='complete-cpp-source-profile-v1',
        standards=list(STANDARDS),
        source_sha256=hashlib.sha256(body).hexdigest(),
        original_modern_branch_preserved=True,
        implicit_permissions=[],
    )


def catalog_guard(kind, entries):
    """@brief Derive a complete semantic catalog guard without source whitespace.

    @details Hashes full record/interface fingerprints, including fields/defaults
    and native identities. Cosmetic documentation/formatting does not supply the
    semantic input. No file or registry is changed.
    @param kind Guard category for the selected record/interface catalog.
    @param entries Resolved semantic records or interfaces in catalog order.
    @return A stable uppercase preprocessor identifier for those exact entries.
    @see definition_guard
    """
    identities = [
        record_guard(row) if hasattr(row, 'members') else interface_guard(row, 'CATALOG')
        for row in entries
    ]
    return (
        'UWVM_ROS_'
        + kind
        + '_'
        + hashlib.sha256(json.dumps(identities, sort_keys=True).encode()).hexdigest().upper()
    )


def definition_guard(kind, symbol, identity):
    """@brief Deduplicate exact definitions and reject conflicting named layouts.

    @details
    Eight 32-bit preprocessor words retain the full schema fingerprint without
    requiring an old-standard 64-bit integer literal extension for the guard.
    @param kind Guard category, independent of source-file whitespace.
    @param symbol Exact generated C record/interface symbol.
    @param identity JSON-serializable full semantic identity, fields and defaults.
    @return Preprocessor source lines retaining all 256 fingerprint bits.
    @see catalog_guard
    """
    digest = hashlib.sha256(
        json.dumps(identity, sort_keys=True, separators=(',', ':')).encode()
    ).hexdigest()
    prefix = 'UWVM_ROS_' + kind + '_' + symbol.upper()
    lines = [
        '#if defined(' + prefix + ')',
        '#if '
        + ' || '.join(
            prefix + '_' + str(i) + ' != 0x' + digest[i * 8 : (i + 1) * 8] + 'UL' for i in range(8)
        ),
        '#error "Conflicting same-name bounded record/interface ABI profiles"',
        '#endif',
        '#else',
        '#define ' + prefix + ' 1',
    ]
    lines += [
        '#define ' + prefix + '_' + str(i) + ' 0x' + digest[i * 8 : (i + 1) * 8] + 'UL'
        for i in range(8)
    ]
    return lines


def record_guard(record):
    """@brief Fingerprint every resolved record layout/default/identity input.

    @details Includes version, native/codec identity, profile, wire bounds,
    constants and all member metadata. No source text or permission is substituted.
    @param record Resolved full-field bounded record.
    @return Complete definition-guard source lines.
    @see definition_guard
    """
    shape = [vars(f) for f in record.members]
    return definition_guard(
        'BOUNDED_RECORD',
        record.c_symbol,
        [
            record.version,
            record.name,
            record.identity,
            record.codec_identity,
            record.profile,
            record.minimum,
            record.maximum,
            record.aggregate_wire_bytes,
            record.cartesian_maximum,
            record.constants,
            shape,
        ],
    )


def interface_guard(interface, prefix):
    """@brief Fingerprint an interface and all actual component identities.

    @details Includes Service/Action kind, version, native/codec identities and
    each component's name/codec/bound. It neither registers nor invokes an endpoint.
    @param interface Resolved complete interface.
    @param prefix Exact generated C operation prefix.
    @return Complete definition-guard source lines.
    @see record_guard
    """
    components = {
        role: [record.name, record.identity, record.codec_identity, record.maximum]
        for role, record in interface.components.items()
    }
    return definition_guard(
        'BOUNDED_INTERFACE',
        prefix,
        [
            interface.version,
            interface.name,
            interface.kind,
            interface.identity,
            interface.codec_identity,
            components,
        ],
    )


def c_float_literal(width, value):
    """@brief Emit a bit-preserving ISO C++98-or-newer floating constant.

    @details
    Nine/seventeen significant decimal digits round-trip binary32/binary64.
    Keep negative zero, force floating lexical form, and verify the exact
    target representation before any generated source is returned.
    @param width Exactly 32 or 64 bits, selecting IEEE binary32/binary64 storage.
    @param value Finite numeric input; negative zero is preserved.
    @return A floating decimal literal, with F for binary32. Invalid widths,
    nonfinite values or a failed representation check raise ValueError.
    @see portable_c_float_defaults
    """
    import math
    import struct

    if width not in (32, 64):
        raise ValueError('exact IEEE scalar width required')
    fmt = '<f' if width == 32 else '<d'
    original = struct.pack(fmt, value)
    rounded = struct.unpack(fmt, original)[0]
    if not math.isfinite(rounded):
        raise ValueError('finite IEEE default required')
    literal = format(rounded, '.9g' if width == 32 else '.17g')
    if '.' not in literal and 'e' not in literal.lower():
        literal += '.0'
    if struct.pack(fmt, float(literal)) != original:
        raise ValueError('default literal changed IEEE bits')
    return literal + ('F' if width == 32 else '')


def portable_c_float_defaults(text):
    """@brief Adapt retained C hexadecimal defaults for old C++ parsing.

    @details Rewrites only recognized hexadecimal floating tokens outside
    comments and character/string literals. Exact binary32/64 representation is
    checked; field layout, default value bits and canonical identities remain.
    @param text Complete retained generated C header source.
    @return Updated source text; unsupported/nonfinite literals raise ValueError.
    @see c_float_literal
    """
    pattern = r'''(?P<quoted>"(?:\\.|[^"\\])*"|'(?:\\.|[^'\\])*'|//[^\n]*|/\*[\s\S]*?\*/)|(?<![A-Za-z0-9_])(?P<number>-?0x[0-9a-fA-F]+(?:\.[0-9a-fA-F]*)?[pP][+-]?[0-9]+)(?P<suffix>[fF]?)'''
    return re.sub(
        pattern,
        lambda m: (
            m.group(0)
            if m.group('quoted')
            else c_float_literal(32 if m.group('suffix') else 64, float.fromhex(m.group('number')))
        ),
        text,
    )
