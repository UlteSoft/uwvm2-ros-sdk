"""@brief Generate all complete typed platform message, service and action endpoints.

@details This is a source-maintenance input, never a consumer build prerequisite.
Every body is a concrete generated record codec. Roles remain explicitly owned
and separately granted; no endpoint or native type qualification is fabricated.
"""

from __future__ import annotations

import re
from pathlib import Path


def documentation(brief: str, parameters: list[tuple[str, str]], result: str) -> list[str]:
    """@brief Document one concrete synchronous endpoint operation.

    @param brief Exact operation and lifetime description.
    @param parameters Complete named parameter contracts.
    @param result Complete result/error contract.
    @return English Doxygen lines with explicit ownership and no-replay rules.
    """
    return [
        "/**",
        " * @brief " + brief,
        *[f" * @param {name} {contract}" for name, contract in parameters],
        " * @return " + result,
        " * @details All inputs are borrowed for this synchronous call. Returned",
        " * values/bytes are owned. Serialize retained owners; no hidden acquisition,",
        " * retry, resize, callback or permission expansion occurs. Local invalid",
        " * values/wire yield22 while original transport errno/length facts remain.",
        " */",
    ]


def endpoint_source(language: str, interface, namespace: str) -> tuple[str, str]:
    """@brief Emit one complete concrete typed interface in the selected language.

    @param language java or csharp target syntax.
    @param interface Complete original bounded interface and all components.
    @param namespace Validated public package or CLR namespace for this profile.
    @return Class name and full source with concrete typed operations.
    """
    java = language == "java"
    name = f"Ros{interface.version}Api" + "".join(
        part[:1].upper() + part[1:] for part in re.split(r"[^A-Za-z0-9_]", interface.name)
    )
    preface = (
        [
            f"package {namespace};",
            "",
            "import java.util.Arrays;",
            "import uwvm.ros.ActionSet;",
            "import uwvm.ros.Operations;",
            "import uwvm.ros.Owner;",
            "import uwvm.ros.Wire;",
            "",
        ]
        if java
        else ["using System;", "using Uwvm.Ros;", "", f"namespace {namespace}", "{"]
    )
    lines = [
        "/**",
        f" * @brief Complete typed ROS {interface.version} {interface.name} {interface.kind} interface.",
        " * @details Concrete component records preserve the complete original schema.",
        " * An Owner/ActionSet is explicitly acquired and closed by the caller. Each",
        " * operation requires its independently granted role and qualified native",
        " * identity. This facade neither invents identities nor registers endpoints.",
        " */",
        f"public {'final' if java else 'static'} class {name}",
        "{",
    ]
    if java:
        lines += [
            f"    /** @brief Prevent construction of this static typed interface. */",
            f"    private {name}() {{}}",
        ]
    status = "status" if java else "Status"
    data = "bytes" if java else "Bytes"
    value = "value" if java else "Data"
    correlation = "correlation" if java else "Correlation"
    kind = "kind" if java else "Kind"
    failure = "failure" if java else "Failure"
    encode, decode = ("encode", "decode") if java else ("Encode", "Decode")
    u64 = "long" if java else "ulong"
    integer = "int" if java else "uint"
    invalid = "IllegalArgumentException" if java else "ArgumentException"
    size = "length" if java else "Length"
    methods = {
        key: key if java else key[0].upper() + key[1:]
        for key in (
            "publish",
            "subscribe",
            "read",
            "call",
            "advertise",
            "poll",
            "respond",
            "send",
            "feedback",
            "result",
            "respondFeedback",
            "respondResult",
        )
    }
    request, poll = ("request", "poll") if java else ("Request", "Poll")

    def add(brief, params, result, signature, body):
        """@brief Append one complete documented method. @return None; modifies local source lines."""
        lines.append("")
        lines.extend("    " + line for line in documentation(brief, params, result))
        lines.extend(["    public static " + signature, "    {"])
        lines.extend("        " + line for line in body)
        lines.append("    }")

    def fail(type_name, code="22"):
        """@brief Construct a typed local failure without import. @return Source statement."""
        return f"return new Owner.Value<{type_name}>(Owner.Reply.{failure}({code}));"

    def type_result(type_name, reply, prefix=0, goal=False, terminal=False):
        """@brief Validate whole typed payload before commit. @return Complete concrete statements."""
        body = [
            f"Owner.Reply reply = {reply};",
            f"Owner.Value<{type_name}> result = new Owner.Value<{type_name}>(reply);",
            f"if (reply.{status} == 0)",
            "{",
            "    try",
            "    {",
        ]
        if prefix:
            body += [
                f'        if (reply.{data}.{size} < {prefix}) {{ throw new {invalid}("Truncated correlation envelope"); }}'
            ]
            if not goal:
                body += [
                    f"        result.{correlation} = Wire.{'get64' if java else 'Get64'}(reply.{data}, 0);",
                    f'        if (result.{correlation} == 0) {{ throw new {invalid}("Zero correlation ID"); }}',
                ]
            else:
                body += [f"        result.{correlation} = goal;"]
            payload = (
                f"Arrays.copyOfRange(reply.{data}, {prefix}, reply.{data}.{size})"
                if java
                else f"Slice(reply.{data}, {prefix})"
            )
        else:
            payload = f"reply.{data}"
        body += [f"        {type_name} next = {type_name}.{decode}({payload});"]
        if terminal:
            body += [
                f"        {integer} committed = actions.{'commitTerminal' if java else 'CommitTerminal'}(goal);",
                f"        if (committed != 0) {{ reply.{status} = committed; return result; }}",
                f"        result.{kind} = reply.{data}[8];",
            ]
        body += [
            f"        result.{value} = next;",
            "    }",
            f"    catch ({invalid} invalid)",
            "    {",
            f"        reply.{status} = 22;",
            "    }",
            "}",
            "return result;",
        ]
        return body

    owner_param = ("owner", "Borrowed live capability with this exact operation's independent grant.")
    zero = "Owner.Reply." + failure + "(22)"
    if interface.kind == "message":
        record = interface.components["message"]
        t = record.symbol
        add(
            "Publish one complete typed topic value exactly once.",
            [owner_param, ("value", "Borrowed stable complete record.")],
            "Owned primary-status report; no publish is replayed.",
            f"Owner.Reply {methods['publish']}(Owner owner, {t} value)",
            [
                f"if (owner == null) {{ return {zero}; }}",
                "try",
                "{",
                f"    return Owner.Reply.{failure}(owner.{'publish' if java else 'Publish'}({t}.{encode}(value)));",
                "}",
                f"catch ({invalid} invalid) {{ return {zero}; }}",
            ],
        )
        add(
            "Activate the caller's retained subscription owner.",
            [owner_param],
            "Actual activation errno; owner remains caller-owned.",
            f"{integer} {methods['subscribe']}(Owner owner)",
            [f"return owner == null ? 22 : owner.{'activate' if java else 'Activate'}(false);"],
        )
        add(
            "Read one complete typed topic sample without a hidden polling loop.",
            [owner_param],
            "Owned typed sample on success, or original error/length observations.",
            f"Owner.Value<{t}> {methods['read']}(Owner owner)",
            [f"if (owner == null) {{ {fail(t)} }}"] + type_result(t, f"owner.{poll}({t}.MAX_WIRE_BYTES)"),
        )
    elif interface.kind == "service":
        req, res = (interface.components[key].symbol for key in ("request", "response"))
        add(
            "Call one complete typed service exactly once.",
            [owner_param, ("value", "Borrowed stable complete request.")],
            "Owned complete typed response or actual transport/codec failure.",
            f"Owner.Value<{res}> {methods['call']}(Owner owner, {req} value)",
            [
                f"if (owner == null) {{ {fail(res)} }}",
                "byte[] input;",
                "try",
                "{",
                f"    input = {req}.{encode}(value);",
                "}",
                f"catch ({invalid} invalid) {{ {fail(res)} }}",
            ]
            + type_result(res, f"owner.{request}(Operations.SERVICE_CALL, input, {res}.MAX_WIRE_BYTES)"),
        )
        add(
            "Activate the caller's retained service-advertise owner.",
            [owner_param],
            "Actual activation errno; activation supplies no response grant.",
            f"{integer} {methods['advertise']}(Owner owner)",
            [f"return owner == null ? 22 : owner.{'activate' if java else 'Activate'}(true);"],
        )
        add(
            "Poll one complete service request with its exact nonzero response ticket.",
            [owner_param],
            "Owned complete request and correlation ticket; idle remains errno11.",
            f"Owner.Value<{req}> {methods['poll']}(Owner owner)",
            [f"if (owner == null) {{ {fail(req)} }}"] + type_result(req, f"owner.{poll}({req}.MAX_WIRE_BYTES + 8)", 8),
        )
        add(
            "Respond once to one exact native-correlated service ticket.",
            [
                owner_param,
                ("ticket", "Nonzero ticket returned by this service's poll."),
                ("value", "Borrowed complete response record."),
            ],
            "Owned empty-success report or actual response error; no replay.",
            f"Owner.Reply {methods['respond']}(Owner owner, {u64} ticket, {res} value)",
            [
                f"if (owner == null || ticket == 0) {{ return {zero}; }}",
                "byte[] input;",
                "try",
                "{",
                f"    input = {'frame' if java else 'Frame'}({res}.{encode}(value), ticket, 0);",
                "}",
                f"catch ({invalid} invalid) {{ return {zero}; }}",
                f"Owner.Reply reply = owner.{request}(Operations.SERVICE_RESPOND, input, 0);",
                f"if (reply.{status} == 0 && reply.{data}.{size} != 0) {{ reply.{status} = 22; }}",
                "return reply;",
            ],
        )
    elif interface.kind == "action":
        goal_type, feedback, result_type = (interface.components[key].symbol for key in ("goal", "feedback", "result"))
        boxed = "Long" if java else "ulong"
        action_param = ("actions", "Borrowed live independently acquired action role set and goal table.")
        add(
            "Send a complete typed goal and retain its validated exact local ownership.",
            [action_param, ("value", "Borrowed complete goal record.")],
            "Owned report and nonzero goal ID only after successful validated send.",
            f"Owner.Value<{boxed}> {methods['send']}(ActionSet actions, {goal_type} value)",
            [
                f"if (actions == null) {{ {fail(boxed)} }}",
                "byte[] input;",
                "try",
                "{",
                f"    input = {goal_type}.{encode}(value);",
                "}",
                f"catch ({invalid} invalid) {{ {fail(boxed)} }}",
                f"Owner.Reply reply = actions.{'send' if java else 'Send'}(input);",
                f"Owner.Value<{boxed}> result = new Owner.Value<{boxed}>(reply);",
                f"if (reply.{status} == 0)",
                "{",
                f"    result.{correlation} = Wire.{'get64' if java else 'Get64'}(reply.{data}, 0);",
                f"    result.{value} = result.{correlation};",
                "}",
                "return result;",
            ],
        )
        for selected, t, prefix, terminal in (("feedback", feedback, 8, False), ("result", result_type, 9, True)):
            add(
                f"Receive one complete typed {selected} for a locally owned exact goal.",
                [action_param, ("goal", "Full nonzero locally tracked goal ID.")],
                "Owned complete typed value; only validated terminal result removes ownership.",
                f"Owner.Value<{t}> {methods[selected]}(ActionSet actions, {u64} goal)",
                [f"if (actions == null) {{ {fail(t)} }}"]
                + type_result(
                    t,
                    f"actions.{'receive' if java else 'Receive'}(goal, {str(terminal).lower()}, {t}.MAX_WIRE_BYTES + {prefix})",
                    prefix,
                    True,
                    terminal,
                ),
            )
        add(
            "Activate one independently granted action-advertise owner.",
            [owner_param],
            "Owned empty-success report; no action callback or hidden loop is installed.",
            f"Owner.Reply {methods['advertise']}(Owner owner)",
            [
                f"if (owner == null) {{ return {zero}; }}",
                f"Owner.Reply reply = owner.{request}(Operations.ACTION_ADVERTISE, new byte[0], 0);",
                f"if (reply.{status} == 0 && reply.{data}.{size} != 0) {{ reply.{status} = 22; }}",
                "return reply;",
            ],
        )
        add(
            "Poll one complete advertised goal and its exact native-correlated ID.",
            [owner_param],
            "Owned complete goal and nonzero correlation; idle remains errno11.",
            f"Owner.Value<{goal_type}> {methods['poll']}(Owner owner)",
            [f"if (owner == null) {{ {fail(goal_type)} }}"]
            + type_result(goal_type, f"owner.{poll}({goal_type}.MAX_WIRE_BYTES + 8)", 8),
        )
        for selected, t, terminal in (("respondFeedback", feedback, False), ("respondResult", result_type, True)):
            parameters = [owner_param, ("goal", "Exact nonzero incoming advertised-goal ID.")]
            if terminal:
                parameters.append(("kind", "Explicit registered terminal-kind value in 2..4."))
            parameters.append(("value", "Borrowed complete typed response body."))
            extra = ", int kind" if java and terminal else ", byte kind" if terminal else ""
            check = " || kind < 2 || kind > 4" if terminal else ""
            add(
                "Respond once with complete typed action " + ("terminal result." if terminal else "feedback."),
                parameters,
                "Owned empty-success report or actual host error; terminal authority is host-enforced.",
                f"Owner.Reply {methods[selected]}(Owner owner, {u64} goal{extra}, {t} value)",
                [
                    f"if (owner == null || goal == 0{check}) {{ return {zero}; }}",
                    "byte[] input;",
                    "try",
                    "{",
                    f"    input = {'frame' if java else 'Frame'}({t}.{encode}(value), goal, {'kind' if terminal else '1'});",
                    "}",
                    f"catch ({invalid} invalid) {{ return {zero}; }}",
                    f"Owner.Reply reply = owner.{request}(Operations.ACTION_RESPOND, input, 0);",
                    f"if (reply.{status} == 0 && reply.{data}.{size} != 0) {{ reply.{status} = 22; }}",
                    "return reply;",
                ],
            )
    else:
        raise ValueError("Review new genuine interface kind before generation")
    if interface.kind != "message":
        lines += [
            "",
            "    /**",
            "     * @brief Own an exact correlation envelope around a complete typed body.",
            "     * @param body Borrowed complete already-validated canonical bytes.",
            "     * @param id Exact nonzero ticket/goal ID.",
            "     * @param kind Zero for service envelope, 1..4 for action response.",
            "     * @return Newly owned exact envelope; no host operation occurs.",
            "     */",
            f"    private static byte[] {'frame' if java else 'Frame'}(byte[] body, {u64} id, int kind)",
            "    {",
            "        int prefix = kind == 0 ? 8 : 9;",
            f"        byte[] bytes = new byte[body.{size} + prefix];",
            f"        Wire.{'put64' if java else 'Put64'}(bytes, 0, id);",
            "        if (kind != 0) { bytes[8] = (byte)kind; }",
            (
                "        System.arraycopy(body, 0, bytes, prefix, body.length);"
                if java
                else "        Array.Copy(body, 0, bytes, prefix, body.Length);"
            ),
            "        return bytes;",
            "    }",
        ]
    if not java:
        lines += [
            "",
            "    /**",
            "     * @brief Own a complete payload suffix after a checked correlation prefix.",
            "     * @param bytes Borrowed complete response bytes.",
            "     * @param prefix Validated prefix byte count.",
            "     * @return Newly owned exact typed-body bytes; invalid extents throw.",
            "     */",
            "    private static byte[] Slice(byte[] bytes, int prefix)",
            "    {",
            "        byte[] body = new byte[bytes.Length - prefix];",
            "        Array.Copy(bytes, prefix, body, 0, body.Length);",
            "        return body;",
            "    }",
        ]
    lines.append("}")
    if not java:
        lines = ["    " + line if line else "" for line in lines] + ["}"]
    return name, "\n".join(preface + lines) + "\n"

