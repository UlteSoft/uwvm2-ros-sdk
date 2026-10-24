"""Operation-specific documentation for the exact numeric ROS Guest ABI.

@brief Render language-valid API documentation from reviewed ABI contracts.
@details This module performs no I/O and computes no schema/native identity.
Unknown parameters fail closed instead of receiving an invented description.
Documentation generation establishes no build, permission or platform support.
@see sdk/share/platform/ros/native_languages/API-CONTRACT.md
"""

import textwrap

__all__ = (
    "comment",
    "raw_function",
    "record_type",
    "record_member",
    "record_metadata",
    "record_codec",
    "interface_function",
    "attach_nim",
)

_PARAMETERS = {
    "memory": (
        "in",
        "Unsigned Guest memory index. Pointer convenience APIs use "
        "memory0; a raw call may name only memory admitted by its Runtime.",
    ),
    "handle": (
        "in",
        "Opaque nonzero u64 handle obtained from this backend and "
        "Instance. Borrow it for this call; never synthesize or transfer it.",
    ),
    "source_handle": (
        "in",
        "Separately authorized source owner in this Instance "
        "and backend. The observer does not confer source rights.",
    ),
    "observer_handle": (
        "in",
        "Separately authorized event.observe owner paired " "with the selected source by trusted Host policy.",
    ),
    "alias_offset": (
        "in",
        "Byte offset of the alias UTF-8 input in memory. Keep "
        "its backing storage stable and unchanged through return.",
    ),
    "alias_length": (
        "in",
        "Alias byte count, 1..255; strict UTF-8 with no NUL. "
        "The alias selects an existing trusted grant, never a new resource.",
    ),
    "handle_out_offset": (
        "out",
        "Byte offset of a writable eight-byte little-endian "
        "handle slot. Read its nonzero value only after status 0.",
    ),
    "payload_offset": (
        "in",
        "Byte offset of the complete canonical selected-type "
        "payload. It is not a native ROS object or host pointer.",
    ),
    "payload_length": (
        "in",
        "Payload extent in bytes, within memory and the " "selected type/alias/envelope quota. Zero is type-dependent.",
    ),
    "request_offset": (
        "in",
        "Byte offset of the exact canonical operation request. "
        "Borrow input until return; an empty request changes no policy.",
    ),
    "request_length": (
        "in",
        "Request byte extent. The ABI request-data ceiling is "
        "4193786 bytes; the selected schema/grant may require less.",
    ),
    "response_offset": (
        "out",
        "Byte offset of caller-owned writable response "
        "storage. Publish decoded values only after status/length checks.",
    ),
    "output_offset": (
        "out",
        "Byte offset of caller-owned writable event/readiness "
        "storage; readiness writes 32 bytes, polls use capacity.",
    ),
    "capacity": (
        "in",
        "Writable output extent in bytes. This allocation does not " "increase an alias quota or reserve an event.",
    ),
    "length_out_offset": (
        "out",
        "Byte offset of an eight-byte LE length slot. "
        "Initialize it to UINT64_MAX. Error 90 may leave it untouched; "
        "only an overwritten sentinel reports a required extent.",
    ),
    "request_id_out_offset": (
        "out",
        "Byte offset of an eight-byte LE request-ID "
        "slot written on successful admission. Acknowledgement "
        "does not mean that the native service completed.",
    ),
    "correlation": (
        "in",
        "Exact owned u64 outgoing-goal ID for a selected Action "
        "data watch; metadata-only watches use 0. It grants no ownership.",
    ),
}

_DETAILS = {
    "abi_version": "This query creates no owner, endpoint, queue, timer or ROS context.",
    "capability_open": "Reserve local owner/slot storage before calling. A failed "
    "open creates no usable local owner; success must still return a nonzero handle.",
    "capability_close": "Retire all local copies before notification. Gateway cleanup "
    "failure does not restore the retired generation; never retry the old handle.",
    "capability_revoke": "Revocation invalidates sibling handles for this alias in "
    "the current principal. It is not physical controller stop or global policy administration.",
    "topic_publish": "Encode the full selected schema before this one effectful "
    "call. Acknowledgement is not a physical actuator-completion certificate.",
    "topic_subscribe": "Activation and payload consumption are separate. Poll on "
    "the Guest execution thread; no native callback re-enters the Guest.",
    "event_poll": "This is the legacy receive contract: an insufficient buffer "
    "may already have consumed its event. Do not implement automatic resize/replay.",
    "event_poll_v1": "Decode the complete 64-byte versioned header and bounded "
    "payload. Capacity 90 retains the pinned event; 11 is idle, not a delivered value.",
    "event_watch": "Keep observer and source owners independently alive. A metadata "
    "watch neither activates payload traffic nor inherits business-operation rights.",
    "event_ready": "Decode four LE u64 values. This snapshot neither reserves an "
    "admission slot nor guarantees that a later poll has the same capacity.",
    "service_submit": "Register correlation/cleanup state before admission. Observe "
    "service-response and resource-error events explicitly; never replay unknown delivery.",
    "service_call": "Use the exact request/response canonical identity selected "
    "by the Host. The finite deadline belongs to trusted policy, not a Guest-supplied route.",
    "service_advertise": "The server owns only requests actually delivered to it. "
    "A responder is a separate grant; advertising does not grant arbitrary responses.",
    "service_respond": "Prefix the response with the actually delivered request ID. "
    "This legacy operation does not implement the separate owned-native raw12 protocol.",
    "action_send_goal": "Keep the returned nonzero ID exactly as u64. Record "
    "submission before callbacks, and distinguish admitted, terminal and cancelled states.",
    "action_cancel_own_goal": "The ID must belong to the calling principal. A "
    "cancel acknowledgement is distinct from terminal result and physical stopping.",
    "action_cancel_any_goal": "This operation needs its own any-cancel grant. "
    "The permitted zero selector here must never leak into own-goal APIs.",
    "action_receive_feedback": "Check the complete returned ID prefix before "
    "decoding feedback. A copied ID is a value, not a new native ownership grant.",
    "action_receive_result": "Check ID and terminal outcome before publishing the "
    "decoded value. Successful terminal consumption retires that goal ownership.",
    "action_advertise": "The empty activation request does not choose another "
    "Action/type. Handle incoming goals on the caller-driven Guest executor.",
    "action_respond": "Keep ID, kind and the complete selected feedback/result "
    "body. Sending one terminal result must not be replayed after an unknown outcome.",
    "tf_lookup": "The request is u64 nanoseconds in the admitted clock domain;0 "
    "selects latest. Source/target frames remain fixed by the independent grant.",
    "tf_broadcast": "Preserve every TransformStamped field and unit. Neither "
    "normalizing a quaternion nor changing frame names is an implicit codec step.",
    "parameter_get": "Decode only the value kind fixed by the capability. An empty "
    "request does not add node, parameter-name or parent-namespace authority.",
    "parameter_set": "Validate the complete typed value and all element bounds "
    "before the effect. Timeout does not establish that the native parameter stayed unchanged.",
    "parameter_delete": "ROS1 only. Delete exactly the granted key; authority over "
    "a child key is not authority over its parent namespace.",
    "parameter_exists": "ROS1 only. Decode one strict canonical Bool; an error "
    "must not be converted into a false existence result.",
    "parameter_list": "Decode the bounded canonical String result for the selected "
    "scope. Returned names do not themselves grant get/set/delete access.",
    "parameter_search": "ROS1 only. Parent search is a separately configured "
    "opt-in and remains constrained by allowed-name-prefix before every native query.",
    "parameter_describe": "ROS2 only. Returned metadata describes the selected "
    "resource; it neither declares a parameter nor authorizes a value mutation.",
    "parameter_declare": "ROS2 local Gateway node only. Validate the selected "
    "kind/default before the call; no remote declaration emulation is supplied.",
    "parameter_undeclare": "ROS2 local Gateway node only. An unsupported remote "
    "operation remains unsupported rather than being replaced by delete or set.",
    "parameter_subscribe_events": "ROS2 only. Activate the separate projection "
    "grant and consume its exact event codec; do not pass the seven RPC arguments.",
    "lifecycle_get_state": "ROS2 only. Decode state ID and canonical label together; "
    "an error is not a lifecycle state or evidence that a transition completed.",
    "lifecycle_change_state": "ROS2 only. The single transition is fixed by trusted "
    "policy. A timeout/unknown result must not automatically replay controller changes.",
    "log_write": "Encode one complete canonical String for the selected ROS "
    "logger. Ordinary stderr is separate and does not require this ROS logging grant.",
}


def comment(language, fields, indent=""):
    """@brief Render reviewed documentation fields as native source comments.

    @details This pure renderer preserves field text and order; it never parses,
    reformats or executes program statements. Haskell escapes literal at-signs
    for Haddock. Returned strings are fresh and contain no language declarations.
    @param language Supported source-language identifier from the native emitter.
    @param fields Ordered nonempty English documentation lines, including tags.
    @param indent Existing declaration indentation; used only before comment markers.
    @return A new list of language-valid documentation-comment source lines.
    @raises ValueError Unknown language or a multiline field would break emission.
    @see raw_function; sdk/share/platform/ros/native_languages/API-CONTRACT.md
    """
    prefixes = {
        "c": "///",
        "rust": "///",
        "zig": "///",
        "swift": "///",
        "d": "///",
        "go": "//",
        "tinygo": "//",
        "odin": "//",
        "nim": "##",
        "haskell": "--",
    }
    if language not in prefixes or any("\n" in line or "\r" in line for line in fields):
        raise ValueError("Known source language and one-line documentation fields required")
    lines = []
    for index, line in enumerate(fields):
        prefix = prefixes[language]
        if language == "haskell":
            prefix += " |" if index == 0 else ""
            line = line.replace("@", "\\@")
        lines.append(indent + prefix + " " + line)
    return lines


def attach_nim(source):
    """@brief Attach reviewed leading docs to their actual Nim declarations.

    @details Nim's frontend treats free leading comments as module text. For
    this closed emitter/source grammar, move an immediately leading public-API
    comment to the routine body, object/enum body or trailing declaration comment
    consumed by jsondoc. Emit native reST inline literals so @param[in/out]
    remains exact text rather than an unresolved hyperlink. Program expressions are preserved;
    an inline routine expression moves intact to its normal indented body.
    This is documentation attachment, not a formatter or a general Nim parser.
    Genuine Nim2.2.4/nimpretty and parser-bound inventory checks remain mandatory.
    @param source Trusted complete owned Nim source; no I/O or execution occurs.
    @return Fresh source with attached literal documentation; a second application
    is byte-identical. No semicolon, expression or statement is split/reordered.
    @raises ValueError A reviewed public routine lacks a bounded body delimiter.
    @see comment; numeric.raw_source; records.document_records
    """
    lines = source.splitlines()
    output, pending = [], []

    def block(comments, indent):
        fields = [line.lstrip()[2:].lstrip() for line in comments]
        if fields and fields[0] == "::":
            fields = fields[1:]
        fields = [field for field in fields if field]
        if any("``" in field for field in fields):
            raise ValueError("Closed Nim contract prose must not contain literal delimiters")
        wrapped = [
            part
            for field in fields
            for part in textwrap.wrap(
                field, width=max(40, 100 - len(indent) - 7), break_long_words=False, break_on_hyphens=False
            )
        ]
        return [indent + "## ``" + part + "``" for part in wrapped]

    index = 0
    while index < len(lines):
        line = lines[index]
        stripped = line.lstrip()
        indent = line[: len(line) - len(stripped)]
        if stripped.startswith("##"):
            pending.append(line)
            index += 1
            continue
        if not pending:
            output.append(line)
            index += 1
            continue
        same_indent = all(item[: len(item) - len(item.lstrip())] == indent for item in pending)
        already_attached = pending[0].lstrip()[2:].strip() == "::"
        already_literal = pending[0].lstrip()[2:].strip().startswith("``")
        routine = stripped.startswith("proc ") and "*" in stripped.split("(", 1)[0]
        declaration = (
            "*" in stripped.split("=", 1)[0].split(":", 1)[0] or stripped.startswith("rpc_") and "=" in stripped
        )
        if already_attached:
            comment_indent = pending[0][: len(pending[0]) - len(pending[0].lstrip())]
            output += block(pending, comment_indent) + [line]
            pending = []
            index += 1
            continue
        if not same_indent or already_literal or not (routine or declaration):
            output += pending + [line]
            pending = []
            index += 1
            continue
        if routine:
            # Locate only the body delimiter in this closed routine-header
            # grammar. Parenthesized defaults/pragmas and quoted text are not
            # statement syntax and cannot be mistaken for the body delimiter.
            depth, quote, escaped = 0, None, False
            header = []
            found = False
            for stop in range(index, min(index + 32, len(lines))):
                part = lines[stop]
                for column, character in enumerate(part):
                    if quote is not None:
                        if escaped:
                            escaped = False
                        elif character == "\\":
                            escaped = True
                        elif character == quote:
                            quote = None
                        continue
                    if character in ('"', "'"):
                        # Nim's integer suffix, e.g. 0'u64, is not a character literal.
                        if character == "'" and column and part[column - 1].isdigit():
                            continue
                        quote = character
                    elif character in "([{":
                        depth += 1
                    elif character in ")]}":
                        depth -= 1
                    elif character == "=" and depth == 0:
                        header.append(part[: column + 1])
                        output += header + block(pending, indent + "  ")
                        remainder = part[column + 1 :].lstrip()
                        if remainder:
                            output.append(indent + "  " + remainder)
                        index = stop + 1
                        found = True
                        break
                if found:
                    break
                header.append(part)
            if not found:
                raise ValueError("Owned public Nim routine body delimiter missing: " + stripped)
        elif stripped.rstrip().endswith(("= object", "= ref object", "= enum")) or "= object of " in stripped:
            output += [line] + block(pending, indent + "  ")
            index += 1
        else:
            # Nimpretty0.2 repeatedly shifts continuations of a multiline
            # trailing field comment. A single native trailing doc comment
            # avoids that unstable layout. Its reST inline literal preserves
            # Doxygen direction brackets without creating broken hyperlinks.
            text = " ".join(item.lstrip()[2:].strip() for item in pending)
            if "``" in text:
                raise ValueError("Closed Nim trailing-doc text must not contain literal delimiters")
            output.append(line + " ## ``" + text + "``")
            index += 1
        pending = []
    output += pending
    return "\n".join(output) + "\n"


def raw_function(language, row, public_name=None, backend=None, indent=""):
    """@brief Document one original ABI operation using its reviewed contract.

    @details The operation description is the pinned ABI schema text. Additional
    lifetime, failure and permission statements are operation-specific below.
    Unknown names/parameters fail instead of acquiring generic placeholder text.
    This generator is pure, reentrant and makes no compiler/Guest/support claim.
    @param language Source language consumed by comment.
    @param row Exact ABI function metadata with name/form/params/description.
    @param public_name Actual exported spelling; omitted for original ABI names.
    @param backend Selected ROS backend number, or the bridge's admitted backend list.
    @param indent Declaration indentation, without changing language namespaces.
    @return Fresh native documentation lines, with all required documentation fields.
    @raises ValueError An unknown operation/parameter lacks a reviewed description.
    @see comment; sdk/share/abi/abi-v1.json
    """
    name = row["name"]
    if name.startswith("graph_"):
        detail = (
            "Use the exact trusted "
            + name.removeprefix("graph_").replace("_", " ")
            + " filter. Returned sorted canonical String rows confer no discovery or business-operation rights."
        )
    elif name.startswith("time_read_"):
        domain = name.removeprefix("time_read_")
        detail = (
            "Read exact u64 nanoseconds in the separately authorized "
            + domain
            + " domain. Do not treat steady time as an epoch or borrow another clock grant."
        )
    else:
        try:
            detail = _DETAILS[name]
        except KeyError as error:
            raise ValueError("Operation-specific documentation required: " + name) from error
    exported = public_name or name
    lines = [exported + ": " + row["description"], "@brief " + row["description"], "@details " + detail]
    for parameter in row["params"]:
        direction, text = _PARAMETERS[parameter["name"]]
        lines.append("@param[" + direction + "] " + parameter["name"] + " " + text)
    if row["form"] == "version":
        lines += [
            "@return Unsigned ABI version 1; this value is not an errno.",
            "@permissions None beyond module admission; this query creates no ROS rights.",
            "@failure Missing module/signature prevents instantiation; no Host substitute is used.",
        ]
    else:
        lines += [
            "@return Unsigned Host status 0 on success; nonzero is the original ABI errno.",
            "@permissions A trusted Host grant for this exact Instance/backend, alias, "
            "operation, type, direction, quota and deadline; SDK selection grants none.",
            "@failure Preserve 13 denial, 9 stale/foreign handle, 11 idle/quota, 90 capacity, 95 "
            "unsupported, 107 disconnect, 110 unknown timeout and 125 revoke. Do not replay effects.",
        ]
    lines += [
        "@lifetime All input/output spans must remain live, stable and correctly bounded "
        "until synchronous return; integer offsets are not GC roots or host pointers.",
        "@thread Call from the admitted Guest execution thread. No native callback, "
        "background executor or asynchronous re-entry is created by this wrapper.",
    ]
    available = [backend] if backend is not None else row.get("backends", [1, 2])
    lines += [
        "@version ABI 1; exact selected "
        + "/".join("ROS " + str(item) for item in available)
        + " import contract. A private bridge returns 95 for an operation absent from its selected backend.",
        "@see share/platform/ros/"
        + ("rs" if language == "rust" else language)
        + "/API-CONTRACT.md; share/platform/ros/"
        + ("rs" if language == "rust" else language)
        + "/XMAKE-EXAMPLES.md",
    ]
    return comment(language, lines, indent)


def _reference(language):
    return "share/platform/ros/" + ("rs" if language == "rust" else language) + "/API-CONTRACT.md"


def record_type(language, record, indent=""):
    """@brief Describe a complete record without inventing native compatibility.

    @details The admitted IR supplies the original type, backend, codec identity
    and exact finite wire interval. Field definitions remain the schema authority.
    @param language Native comment language accepted by comment.
    @param record Admitted bounded Record; borrowed and never modified.
    @param indent Existing declaration indentation.
    @return Fresh documentation lines for the generated value type.
    @see record_member; record_codec
    """
    fields = [
        "@brief Complete ROS " + str(record.version) + " " + record.name + " value.",
        "@details All " + str(len(record.members)) + " declared fields are retained in source order. "
        "The canonical representation occupies "
        + str(record.minimum)
        + ".."
        + str(record.maximum)
        + " bytes and is identified by "
        + record.codec_identity
        + ".",
        "@ownership This is a Guest value, not a native ROS allocation or capability. "
        "Copying it creates no publisher, subscriber, service or Action owner.",
        "@thread Ordinary value access needs caller synchronization. The codec creates no "
        "task or callback; mutable readers/writers must not be shared during a call.",
        "@permissions None for construction or pure encoding; transport needs a separate exact grant.",
        "@version The selected finite schema profile fixes field order, bounds and constants.",
        "@see " + _reference(language),
    ]
    if record.identity is None:
        fields.insert(2, "@native No native identity is established by this source record.")
    else:
        fields.insert(
            2,
            "@native Original selected identity: "
            + record.identity
            + ". Compilation of matching native traits is a separate qualification.",
        )
    return comment(language, fields, indent)


def record_member(language, record, member, indent=""):
    """@brief Document one exact declared record field and its finite bounds.

    @details Physical units are never guessed from an identifier. The original
    pinned definition remains authoritative when the IR carries no unit metadata.
    @param language Supported source-comment language.
    @param record Owning admitted record; borrowed for this pure rendering call.
    @param member Exact admitted field, including string/array/default metadata.
    @param indent Existing field indentation.
    @return Field-specific documentation lines; no declaration is emitted.
    @see record_type; record_metadata
    """
    shape = member.type
    if member.array == "array":
        shape += "; exactly " + str(member.count) + " elements"
    elif member.array == "sequence":
        shape += "; 0.." + str(member.count) + " elements"
    if member.type == "string":
        shape += (
            "; each string is 0.."
            + str(member.string_bound)
            + " bytes; "
            + (
                "raw bytes are retained without Unicode conversion"
                if member.string_encoding == "raw_bytes"
                else "strict UTF-8 with no embedded NUL"
            )
        )
    default = (
        "Schema default " + member.native_default + "."
        if member.native_default is not None
        else "The generated initializer supplies the declared zero/empty/nested default."
    )
    fields = [
        "@brief " + record.name + "." + member.name + ": " + shape + ".",
        "@details " + default + " Encoding preserves the original field position and "
        "signedness; invalid bounds fail instead of truncating the value.",
        "@units Use the units and frame/clock domain of the pinned native definition. "
        "The codec performs no scaling, frame conversion or normalization.",
        "@lifetime Retain referenced string/sequence backing storage for each encoding call. "
        "Decoded borrowing and allocator ownership follow the enclosing decode function.",
        "@see " + record.symbol + "; " + _reference(language),
    ]
    return comment(language, fields, indent)


def record_metadata(language, record, key, constant=None, indent=""):
    """@brief Describe one generated metadata value or original schema constant.

    @details Metadata is descriptive; it cannot install a native type or grant
    transport access. Unknown keys fail rather than acquiring placeholder docs.
    @param language Native documentation-comment language.
    @param record Exact admitted owning record.
    @param key One of maximum, codec, native_type, native_identity or constant.
    @param constant Original constant mapping; required only for constant.
    @param indent Declaration indentation.
    @return Documentation lines naming the actual record and metadata value.
    @raises ValueError An unknown metadata key or missing constant is supplied.
    @see record_type
    """
    meanings = {
        "maximum": (
            "Maximum canonical extent of " + record.name + " in bytes.",
            "The inclusive bound is "
            + str(record.maximum)
            + " bytes for this selected profile; it is not a native sizeof or a queue reservation.",
        ),
        "codec": (
            "Canonical codec identity of " + record.name + ".",
            "Exact identity "
            + record.codec_identity
            + " binds field order, shape and bounds. It does not replace the native type identity.",
        ),
        "native_type": (
            "Original ROS type name for " + record.name + ".",
            "This exact name is descriptive and cannot select a different alias, endpoint or resource.",
        ),
        "native_identity": (
            "Selected original native identity for " + record.name + ".",
            (
                "Absent: this source profile establishes no native identity."
                if record.identity is None
                else "Exact selected identity "
                + record.identity
                + "; matching installed native metadata still needs independent verification."
            ),
        ),
        "cartesian": (
            "Cartesian field-bound maximum of " + record.name + " in bytes.",
            "Exact independently combined field-bound extent "
            + str(record.cartesian_maximum)
            + "; aggregate profile constraints may impose a smaller usable wire ceiling.",
        ),
        "aggregate": (
            "Aggregate profile byte budget of " + record.name + ".",
            "The selected aggregate constraint is "
            + str(record.aggregate_wire_bytes)
            + " bytes. It does not change individual field bounds or reserve transport capacity.",
        ),
    }
    if key == "constant":
        if constant is None:
            raise ValueError("Original constant metadata required")
        brief = record.name + "." + constant["name"] + ": original " + constant["type"] + " constant."
        details = (
            "Exact admitted value "
            + constant["value"]
            + ". This constant occupies no field bytes and is not an authority or operation selector."
        )
    else:
        if key not in meanings:
            raise ValueError("Unknown record metadata: " + key)
        brief, details = meanings[key]
    return comment(
        language,
        ["@brief " + brief, "@details " + details, "@see " + record.symbol + "; " + _reference(language)],
        indent,
    )


def record_codec(language, record, operation, parameters=(), indent=""):
    """@brief Describe an exact generated record codec operation.

    @details Ownership distinguishes managed copies from arena-backed sequences
    and wire-buffer borrowing. The operation controls whether trailing bytes are
    permitted and whether the caller's writer/reader cursor advances.
    @param language Supported native source language.
    @param record Exact complete Record consumed by the codec.
    @param operation init, measure, write, read, encode or decode.
    @param parameters Ordered triples of direction, actual name and contract.
    @param indent Existing declaration indentation.
    @return Detailed documentation lines; encoding semantics are unchanged.
    @raises ValueError The operation lacks an explicitly reviewed codec contract.
    @see record_type; record_member
    """
    meaning = {
        "init": (
            "Construct the declared defaults of " + record.name + ".",
            "Initialize every field without transport access. Fixed arrays retain their exact shape; "
            "sequence and string defaults are empty unless the schema declares a supported scalar default.",
        ),
        "measure": (
            "Validate and measure one complete " + record.name + " value.",
            "Check every active field, finite bound and selected semantic invariant before "
            "returning its exact initialized wire extent. This is not maximum capacity, "
            "native sizeof, an allocation request or a transport operation.",
        ),
        "write": (
            "Append every canonical field of " + record.name + ".",
            "Validate profile invariants and finite element bounds while advancing the caller writer. "
            "This nested operation does not promise rollback of a partially advanced writer.",
        ),
        "read": (
            "Read the ordered canonical fields of " + record.name + ".",
            "Advance the caller reader and validate the resulting record. Nested decoding deliberately "
            "leaves subsequent enclosing fields unread; discard partial values on any failure.",
        ),
        "encode": (
            "Encode one complete " + record.name + " value.",
            "Preserve every declared field, signed integer and floating-point bit pattern allowed by "
            "the profile. Validate all finite bounds; never silently truncate or issue a Host call.",
        ),
        "decode": (
            "Decode exactly one complete " + record.name + " value.",
            "Require the complete "
            + str(record.minimum)
            + ".."
            + str(record.maximum)
            + "-byte canonical representation. Reject truncation, invalid fields and trailing bytes "
            "before publishing a successful value.",
        ),
    }
    if operation not in meaning:
        raise ValueError("Unknown record codec operation: " + operation)
    brief, details = meaning[operation]
    fields = ["@brief " + brief, "@details " + details]
    fields += ["@param[" + direction + "] " + name + " " + contract for direction, name, contract in parameters]
    if operation in ("read", "decode") and language in ("d", "odin", "zig"):
        lifetime = (
            "Decoded strings/raw bytes borrow the input buffer. Decoded sequences and nested "
            "allocations belong to the caller allocator/arena; keep both alive while using the value. "
            "Use an arena region and discard it after any failed decode, including partial allocations."
        )
    elif operation == "encode" and language in ("d", "odin", "zig"):
        lifetime = (
            "The initialized output prefix belongs to the caller output buffer; returned slices "
            "borrow that buffer. Retain it unchanged while using encoded bytes. Input value/backing "
            "storage remains stable until synchronous return; no ownership is transferred to Native."
        )
    else:
        lifetime = (
            "Managed decoded values retain/copy their required backing storage. Keep input values "
            "stable during synchronous encoding; do not share mutable cursors during a call."
        )
    if operation == "init":
        returned = "A fresh ordinary value with all generated defaults."
    elif operation == "measure":
        returned = (
            "Exact validated initialized wire extent in bytes through the language result/error "
            "contract; this value is not maximum capacity or a reservation."
        )
    elif operation == "write":
        returned = (
            "True after all fields were appended; false preserves the writer error code."
            if language in ("d", "odin")
            else "No record value. Success appends all selected fields to the caller writer; "
            "the language exception/error contract reports refusal."
        )
    elif operation == "read":
        returned = {
            "d": "True with the complete out-value, or false with the reader error code; discard partial out-values.",
            "odin": "Complete record and true, or a partial unusable record and false with the reader error code.",
            "haskell": "A pure decoder for this complete record prefix; its execution preserves the original unsigned refusal.",
        }.get(language, "A complete decoded record through the native language value/exception/error contract.")
    elif operation == "encode":
        returned = {
            "d": "Unsigned status 0 and the initialized output length; nonzero is the original codec refusal.",
            "odin": "Initialized caller-buffer prefix and status 0, or the original nonzero codec refusal.",
            "zig": "Initialized immutable caller-buffer prefix through the native error union; the slice borrows output.",
        }.get(language, "Owned complete canonical bytes through the native language result/exception/error contract.")
        if language == "rust" and any(name == "out" for _, name, _ in parameters):
            returned = (
                "Exact initialized caller-output extent in bytes through Result; no output allocation "
                "is returned or transferred. Ignore partial output on Err."
            )
    else:
        returned = (
            "Unsigned status 0 with the complete decoded out-value; nonzero is the original codec refusal."
            if language == "d"
            else (
                "Complete decoded record and status 0, or the original nonzero codec refusal."
                if language == "odin"
                else "A complete decoded record through the native language value/result/exception/error contract."
            )
        )
    fields += ["@return " + returned]
    if operation != "init":
        fields += [
            "@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. "
            "Partial cursors, buffers and out-values are unusable after refusal. Allocation traps "
            "and runtime exceptions follow the actual language runtime; not every failure is a "
            "recoverable codec status. No Host, network or asynchronous side effect is issued."
        ]
    fields += [
        "@lifetime " + lifetime,
        "@thread Synchronous caller-thread operation; independent values/cursors may be used independently.",
        "@see " + record.symbol + "; " + _reference(language),
    ]
    return comment(language, fields, indent)


def interface_function(language, interface, operation, parameters=(), indent=""):
    """@brief Describe a concrete typed interface method and its protocol role.

    @details The interface IR supplies the exact original type and selected
    components. No generic byte wrapper is described as native compatibility.
    @param language Native documentation-comment language.
    @param interface Exact admitted non-control registered Interface.
    @param operation namespace, publish, poll, call, incoming, respond, send, feedback or result.
    @param parameters Ordered direction/name/contract triples for the actual declaration.
    @param indent Declaration indentation.
    @return Operation-specific documentation lines preserving all semantic tags.
    @raises ValueError An unreviewed operation is requested.
    @see record_codec; raw_function
    """
    meanings = {
        "namespace": (
            "Typed " + interface.kind + " entry points for " + interface.name + ".",
            "The selected original ROS "
            + str(interface.version)
            + " interface and every component record are fixed by the finite schema profile.",
        ),
        "publish": (
            "Publish one complete " + interface.name + " message.",
            "Encode the complete message before the single effectful publish. "
            "A successful return acknowledges transport admission, not physical controller completion.",
        ),
        "poll": (
            "Poll and decode one complete " + interface.name + " message.",
            "Consume at most one legacy event and decode every field. Idle is an error/status, "
            "not a default message; a capacity refusal may already have consumed the event.",
        ),
        "call": (
            "Call the selected " + interface.name + " service.",
            "Encode the exact request and decode the complete response using the separately granted "
            "legacy service-call operation. Timeout means delivery/completion may be unknown; never replay automatically.",
        ),
        "incoming": (
            "Receive an actually delivered " + interface.name + " service request.",
            "Retain its exact nonzero request ID with the decoded request. Activation and "
            "response permissions are separate; receipt grants no authority over other requests.",
        ),
        "respond": (
            "Respond once to a delivered " + interface.name + " service request.",
            "Prefix the complete selected response with its owned request ID. This legacy "
            "response path is not the separate owned-native raw12 service protocol.",
        ),
        "send": (
            "Submit a complete " + interface.name + " Action goal.",
            "Validate and encode the entire goal before admission. Return its exact nonzero u64 "
            "ownership ID; admission is distinct from acceptance, feedback, cancellation and terminal completion.",
        ),
        "feedback": (
            "Receive typed feedback for an owned " + interface.name + " goal.",
            "Require the exact nonzero u64 goal ID and matching feedback prefix before "
            "decoding. Idle does not retire ownership and is not an all-zero feedback value.",
        ),
        "result": (
            "Consume the terminal result for an owned " + interface.name + " goal.",
            "Check the exact goal-ID prefix and terminal outcome together with every result field. "
            "Successful terminal consumption retires that goal; cancellation acknowledgement alone does not.",
        ),
    }
    if operation not in meanings:
        raise ValueError("Unknown typed interface operation: " + operation)
    brief, details = meanings[operation]
    components = ", ".join(role + "=" + value.symbol for role, value in interface.components.items())
    fields = ["@brief " + brief, "@details " + details + " Components: " + components + "."]
    if operation == "namespace":
        fields += [
            "@permissions Referencing this stateless namespace creates no resource or grant.",
            "@version Selected ABI 1 legacy interfaces; owned raw12 control Services are excluded.",
            "@see " + _reference(language),
        ]
        return comment(language, fields, indent)
    fields += ["@param[" + direction + "] " + name + " " + contract for direction, name, contract in parameters]
    fields += [
        "@permissions The live same-Instance/backend owner must already carry this exact "
        "interface, operation, direction, quota and trusted deadline grant. Source generation grants none.",
        "@failure Preserve SDK/Host denial, stale ownership, idle, capacity, revoke, unsupported "
        "and unknown timeout errors; publish no successful typed value after a failed decode.",
        "@lifetime Borrow owners, input values and caller buffers until synchronous return. "
        "Arena-backed returned values additionally borrow the documented decode storage.",
        "@thread Call on the admitted Guest executor thread; no callback or background executor is started.",
        "@version Selected ABI 1 legacy interface; owned raw12 control interfaces are excluded.",
        "@see " + _reference(language),
    ]
    if operation != "namespace":
        fields.insert(2, "@return The typed operation result on success; language error/status on refusal.")
    return comment(language, fields, indent)
