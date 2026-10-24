#!/usr/bin/env python3
"""@brief Document and format generated sources before they enter the review SDK.

@details All formatter inputs/outputs are temporary local files or standard
streams. No guest is compiled or executed. The AssemblyScript adapter verifies
unchanged parsed syntax. A refused formatter never publishes its source output.
"""

import hashlib
import importlib.util
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile
import textwrap

CLANG = Path(os.getenv("UNITREE_FORMAT_CLANG") or shutil.which("clang-format") or "clang-format")
GOFMT = Path(os.getenv("UNITREE_FORMAT_GOFMT") or shutil.which("gofmt") or "gofmt")
RUSTFMT = Path(os.getenv("UNITREE_FORMAT_RUSTFMT") or shutil.which("rustfmt") or "rustfmt")
NODE_ROOT = Path(os.getenv("UNITREE_FORMAT_NODE_ROOT") or Path.cwd() / "node_modules")
BLACK = os.getenv("UNITREE_FORMAT_BLACK") or shutil.which("black") or "black"


def shared_sdk(selected):
    """@brief Find maintained common generator sources without encoded parent hops."""
    if (selected / "tools/industrial/vendor_profile.py").is_file():
        return selected
    for candidate in selected.parents:
        current = candidate / "sdk"
        if (current / "tools/industrial/vendor_profile.py").is_file():
            return current
    raise ValueError("The maintained common SDK generator source is unavailable")


def block(lines, indent=""):
    """@brief Render professional English Doxygen with bounded readable line width."""
    output = [indent + "/**"]
    for line in lines:
        output.extend(
            indent + " * " + item
            for item in textwrap.wrap(
                line,
                width=110 - len(indent),
                break_long_words=False,
                break_on_hyphens=False,
            )
        )
    output.append(indent + " */")
    return "\n".join(output) + "\n"


def native_doc(function, *arguments):
    """@brief Adapt the maintained IR-specific documentation to Doxygen blocks."""
    lines = function("rust", *arguments)
    return block([line.removeprefix("/// ") for line in lines])


def format_source(common, extension, source):
    """@brief Return fully formatted source or raise before publication.

    @param common Maintained common SDK used only for formatter/configuration paths.
    @param extension Actual original source extension; no source is renamed.
    @param source Complete source text, borrowed unchanged by this process.
    @return Complete formatted UTF-8 source with its final newline.
    @details Formatting tools are not compiler/runtime qualification. No binary
    executable or WebAssembly artifact is created by this function.
    """
    if extension in ("h", "hpp", "c", "cpp", "m"):
        policy = common / "tools/language/c/.clang-format"
        if not policy.is_file():
            raise ValueError("Install the shared SDK C-family formatting policy")
        command = [
            str(CLANG),
            "--style=file:" + str(policy),
            "--assume-filename=unitree." + extension,
        ]
    elif extension == "go":
        # Go's printer deliberately preserves a short multi-statement body.
        # Expand this generated primitive before invoking the genuine printer.
        source = source.replace(
            "func boundedPut(out []byte, at *int, b []byte) { copy(out[*at:], b); *at += len(b) }",
            "func boundedPut(out []byte, at *int, b []byte) {\n    copy(out[*at:], b)\n    *at += len(b)\n}",
        )
        command = [str(GOFMT)]
    elif extension == "rs":
        command = [str(RUSTFMT), "--edition", "2021", "--emit", "stdout"]
    elif extension == "ts":
        command = ["node", str(Path(__file__).with_name("format_assemblyscript.mjs"))]
    elif extension == "mjs":
        command = [
            str(NODE_ROOT / ".bin/prettier"),
            "--parser",
            "babel",
            "--tab-width",
            "4",
            "--print-width",
            "120",
            "--single-quote",
        ]
    elif extension == "lua":
        with tempfile.TemporaryDirectory(prefix="unitree-format-") as temporary:
            path = Path(temporary) / "source.lua"
            path.write_text(source)
            subprocess.run(
                [
                    str(NODE_ROOT / ".bin/stylua"),
                    "--indent-type",
                    "Spaces",
                    "--indent-width",
                    "4",
                    "--column-width",
                    "120",
                    str(path),
                ],
                check=True,
                capture_output=True,
            )
            return path.read_text()
    elif extension == "py":
        command = [BLACK, "--quiet", "-"]
    else:
        raise ValueError("Unsupported source formatter: " + extension)
    environment = dict(os.environ, ROSWASM_FORMAT_NODE_ROOT=str(NODE_ROOT))
    result = subprocess.run(
        command,
        input=source,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
        env=environment,
    )
    if result.returncode:
        raise ValueError("Formatter refused " + extension + ": " + result.stderr[-4000:])
    return result.stdout


def document(common, language, source, ordered):
    """@brief Attach exact complete-record ownership, field, and codec contracts."""
    import sys

    sys.path.insert(0, str(common / "tools/native_languages"))
    from records import document_records
    from documentation import record_type, record_member

    if language in ("rs", "go", "tinygo"):
        source = document_records("rust" if language == "rs" else language, source, ordered)
        lines = []
        for line in source.splitlines():
            match = re.match(r"^(\s*//[/!]?) (.*)$", line)
            if match and not line.lstrip().startswith("//go:"):
                prefix, prose = match.groups()
                lines.extend(
                    prefix + " " + part
                    for part in textwrap.wrap(
                        prose,
                        width=max(48, 112 - len(prefix)),
                        break_long_words=False,
                        break_on_hyphens=False,
                    )
                )
            else:
                lines.append(line)
        return "\n".join(lines) + "\n"
    if language == "js":
        source = source.replace(
            "export class UnitreeCodecError extends Error {",
            block(
                [
                    "@brief Preserve one original numeric complete-record codec refusal.",
                    (
                        "@details Numeric code 22 identifies invalid values or malformed complete input; 90 identifies "
                        "an exceeded finite byte ceiling. This local language error is independent from ROS transport "
                        "and owner cleanup failures."
                    ),
                    "@ownership The thrown Error owns its message and code; no native pointer or capability is retained.",
                ]
            )
            + "export class UnitreeCodecError extends Error {",
        )
        source = source.replace(
            "    constructor(code) {",
            block(
                [
                    "@brief Construct one local original numeric codec refusal.",
                    "@param[in] code Unsigned original codec status, normally 22 or 90.",
                    (
                        "@details Construction performs no native operation and does not alter a transport owner. "
                        "JavaScript allocation failure is independent from this numeric code."
                    ),
                ],
                "    ",
            )
            + "    constructor(code) {",
            1,
        )
        source = source.replace(
            "        this.code = code;",
            block(
                [
                    "@brief Original numeric canonical codec refusal status.",
                    "@details Read with the thrown Error; it does not replace the independent numeric ROS transport or cleanup result.",
                ],
                "        ",
            )
            + "        this.code = code;",
            1,
        )
    if language == "cpp":
        return source
    if language == "c":
        contracts = {
            "copy": [
                "@brief Copy exactly one initialized primitive or UTF-8 byte extent.",
                (
                    "@details Internal synchronous helper. Caller establishes sufficient nonoverlapping storage "
                    "before use; this function performs no bounds check or ROS operation."
                ),
                "@param[out] out Exclusive writable caller storage of at least n bytes.",
                "@param[in] in Immutable initialized input of at least n bytes.",
                "@param[in] n Exact byte count; zero copies no bytes.",
                "@ownership Both buffers remain caller-owned and stable through return.",
            ],
            "get": [
                "@brief Read an unsigned little-endian primitive without native structure padding.",
                (
                    "@details Internal caller establishes the complete initialized extent before entry. No "
                    "allocation, pointer retention, or transport operation occurs."
                ),
                "@param[in] p Immutable initialized input of at least n bytes.",
                "@param[in] n Primitive byte width, from 1 through 8.",
                "@return Exact zero-extended unsigned bit pattern.",
            ],
            "put": [
                "@brief Write an unsigned little-endian primitive without native structure padding.",
                (
                    "@details Internal caller establishes sufficient exclusive output before entry. No allocation, "
                    "pointer retention, or transport operation occurs."
                ),
                "@param[out] p Exclusive caller-owned writable storage of at least n bytes.",
                "@param[in] v Unsigned primitive bit pattern.",
                "@param[in] n Primitive byte width, from 1 through 8.",
            ],
            "utf8": [
                "@brief Validate the complete strict Unicode scalar UTF-8 extent.",
                (
                    "@details Reject embedded NUL, malformed continuations, overlong forms, surrogates, and "
                    "out-of-range codepoints. The immutable input is borrowed synchronously with no allocation."
                ),
                "@param[in] p Initialized immutable input of n bytes.",
                "@param[in] n Exact active byte extent; zero is a valid empty string.",
                "@return Nonzero only when every byte is admitted by the canonical string profile.",
            ],
            "overlap": [
                "@brief Refuse intersecting caller storage extents before transactional codec writes.",
                (
                    "@details Address-range arithmetic checks prevent overflow. This helper does not dereference "
                    "either input and retains no pointer."
                ),
                "@param[in] a First caller storage base.",
                "@param[in] an First storage extent in bytes.",
                "@param[in] b Second caller storage base.",
                "@param[in] bn Second storage extent in bytes.",
                "@return Nonzero for overlap or an unrepresentable address extent; zero for disjoint extents.",
            ],
        }
        source = re.sub(
            r"(?m)^((?:static inline|inline static) [^\n]*?\b(?:unitree_ros[12]|uwvm)_bounded_(copy|get|put|utf8|overlap)\()",
            lambda match: block(contracts[match[2]]) + match[1],
            source,
        )
    if language == "c":

        def owned_sequence(match):
            scalar, count, name = match.groups()
            return (
                block(
                    [
                        "@brief Own a bounded canonical sequence or UTF-8 byte string inline.",
                        "@details The active size is 0 through "
                        + count
                        + (
                            ". Unused capacity is never serialized or read. This Guest storage is neither a native ROS "
                            "allocation nor an authority token."
                        ),
                    ]
                )
                + "typedef struct {\n"
                + block(
                    [
                        "@brief Number of initialized active elements.",
                        "@details Must be no greater than "
                        + count
                        + "; decoders and encoders reject larger values without truncation.",
                    ],
                    "    ",
                )
                + "    uint32_t size;\n"
                + block(
                    [
                        "@brief Caller-owned complete finite element capacity.",
                        (
                            "@details Only the initialized active size prefix is meaningful. Retain that prefix unchanged "
                            "through synchronous encoding; no native pointer or permission is stored."
                        ),
                    ],
                    "    ",
                )
                + "    "
                + scalar
                + " data["
                + count
                + "];\n} "
                + name
                + ";"
            )

        source = re.sub(
            r"typedef struct \{uint32_t size;([A-Za-z_][A-Za-z0-9_ ]*) data\[([0-9]+)\];\} ([A-Za-z_][A-Za-z0-9_]*);",
            owned_sequence,
            source,
        )
    by_symbol = {record.c_symbol if language == "c" else record.symbol: record for record in ordered}
    output = []
    current = None
    for line in source.splitlines():
        stripped = line.lstrip()
        if language == "c":
            found = re.match(r"typedef struct (\w+)\s*\{?", stripped)
        elif language == "as":
            found = re.match(r"export class (\w+)(?:\s|\{)", stripped)
        else:
            found = re.match(r"export const (\w+)Codec\s*=", stripped)
        if found and found[1] in by_symbol:
            current = by_symbol[found[1]]
            output.append(native_doc(record_type, current).rstrip())
        elif current is not None:
            for member in current.members:
                match = (
                    re.match(r"(?:\w+\s+)+" + re.escape(member.name) + r"(?:\[|;)", stripped)
                    if language == "c"
                    else (re.match(re.escape(member.name) + r"\s*:", stripped) if language == "as" else None)
                )
                if match:
                    output.append(native_doc(record_member, current, member).rstrip())
                    break
        if language == "c":
            function = re.match(r"static inline (?:\w+\s+)+?(roswasmc_bounded_\w+)\(", stripped)
            if function:
                symbol = function[1]
                record = next(
                    (record for key, record in by_symbol.items() if symbol.startswith(key + "_")),
                    None,
                )
                if record is not None:
                    operation = symbol[len(record.c_symbol) + 1 :]
                    meanings = {
                        "valid": (
                            "Validate every field of " + record.name + ".",
                            ["@param[in] value Complete immutable record; NULL is refused."],
                            "Nonzero only when all active fields satisfy the finite canonical profile.",
                        ),
                        "wire_size": (
                            "Measure the complete active canonical extent of " + record.name + ".",
                            ["@param[in] value Complete already validated record, borrowed through return."],
                            "Exact initialized wire byte count; native structure padding is excluded.",
                        ),
                        "write_fields": (
                            "Append all fields of " + record.name + " to an internal canonical buffer.",
                            [
                                "@param[in] value Complete prevalidated immutable record.",
                                "@param[out] p Sufficient exclusive output storage established by the public encoder.",
                                "@param[in,out] offset Exclusive initialized writer cursor.",
                            ],
                            "No value; internal caller guarantees the measured capacity.",
                        ),
                        "read_fields": (
                            "Decode the full ordered field prefix of " + record.name + ".",
                            [
                                "@param[in] p Borrowed canonical bytes, stable through return.",
                                "@param[in] n Available input extent in bytes.",
                                "@param[in,out] offset Exclusive initialized reader cursor.",
                                "@param[out] value Private temporary record; discard it on failure.",
                            ],
                            "Nonzero only after complete prefix validation; enclosing fields may remain unread.",
                        ),
                        "encode": (
                            "Encode the complete " + record.name + " record transactionally.",
                            [
                                "@param[in] value Complete immutable record.",
                                "@param[out] output Exclusive caller-owned byte storage, disjoint from value and length.",
                                "@param[in] capacity Available writable byte count.",
                                "@param[out] length Exact initialized byte count, written only on success.",
                            ],
                            "Status 0 on success, 22 for invalid/overlapping values, or 90 for insufficient capacity.",
                        ),
                        "decode": (
                            "Decode exactly one complete " + record.name + " record transactionally.",
                            [
                                "@param[in] input Immutable complete canonical body, disjoint from value.",
                                "@param[in] length Exact input byte count; trailing bytes are refused.",
                                "@param[out] value Caller-owned complete record; unchanged on every refusal.",
                            ],
                            "Status 0 on complete success, otherwise 22; no partial record is exposed.",
                        ),
                    }
                    if operation in meanings:
                        brief, parameters, returned = meanings[operation]
                        output.append(
                            block(
                                [
                                    "@brief " + brief,
                                    (
                                        "@details Preserve the original declared field order, widths, signedness and finite bounds. This "
                                        "pure synchronous codec performs no ROS operation or allocation. Caller owns every buffer and "
                                        "inline record; serialize mutation."
                                    ),
                                ]
                                + parameters
                                + [
                                    "@return " + returned,
                                    "@ownership Borrowed inputs remain stable until return; successful output belongs entirely to the caller.",
                                ]
                            ).rstrip()
                        )
        output.append(line)
    source = "\n".join(output) + "\n"
    if language == "c":
        documented = []
        for line in source.splitlines():
            stripped = line.lstrip()
            if re.match(
                r"#define ROSWASMC_BOUNDED_.*_(MAX_WIRE_BYTES|MIN_WIRE_BYTES|CODEC_IDENTITY) ",
                stripped,
            ):
                if "MAX_WIRE_BYTES" in stripped:
                    brief, details = (
                        "Maximum complete canonical record extent in bytes.",
                        "A finite acceptance ceiling, never native sizeof, an actual payload length, or a transport reservation.",
                    )
                elif "MIN_WIRE_BYTES" in stripped:
                    brief, details = (
                        "Minimum complete canonical record extent in bytes.",
                        "Decoders reject shorter bodies before exposing any successful original record.",
                    )
                else:
                    brief, details = (
                        "Exact complete finite canonical codec identity.",
                        (
                            "Binds every original field, order, width, shape, and quota. This is distinct from the "
                            "independently observed native ROS type identity."
                        ),
                    )
                documented.append(block(["@brief " + brief, "@details " + details]).rstrip())
            documented.append(line)
        source = "\n".join(documented) + "\n"
    source = re.sub(
        r"/\*\*(.*?)\*/",
        lambda match: (match[0] if "@brief" in match[1] else "/** @brief" + match[1] + "*/"),
        source,
        flags=re.S,
    )
    if language in ("as", "js"):
        source = format_source(common, "ts" if language == "as" else "mjs", source)
        lines = source.splitlines()
        output = []
        helper_class = None
        for line in lines:
            stripped = line.lstrip()
            indent = line[: len(line) - len(stripped)]
            if language == "as":
                class_match = re.match(r"(?:export )?class (\w+)", stripped)
                if class_match:
                    helper_class = class_match[1]
                if stripped.startswith("constructor(") and helper_class in (
                    "VendorEncoded",
                    "VendorDecoded",
                ):
                    parameters = ["@param[in] status Original unsigned codec status; zero admits the complete result."]
                    if helper_class == "VendorEncoded":
                        parameters.append(
                            "@param[in] bytes Owned complete canonical bytes; meaningful only with status 0."
                        )
                    output.append(
                        block(
                            [
                                "@brief Construct one owned local checked codec result.",
                                (
                                    "@details Construction performs no validation, ROS operation, capability acquisition, or native "
                                    "allocation. Successful managed byte/value storage remains owned by this result."
                                ),
                            ]
                            + parameters
                            + [
                                "@ownership The caller retains supplied managed references; serialize mutation while the result is used."
                            ],
                            indent,
                        ).rstrip()
                    )
                if re.match(r"export class .*Codec implements VendorCodec", stripped):
                    output.append(
                        block(
                            [
                                "@brief Provide a complete checked original Unitree record codec.",
                                (
                                    "@details Every field and finite schema quota is preserved. Successful values and byte arrays "
                                    "own their managed storage; numeric refusal exposes no accepted partial result. Construction "
                                    "creates no native object or authority."
                                ),
                            ],
                            indent,
                        ).rstrip()
                    )
                if re.match(
                    r"static readonly (maxWireBytes|aggregateWireBytes|cartesianWireBytes|codecIdentity):",
                    stripped,
                ):
                    output.append(
                        block(
                            [
                                "@brief Describe the exact selected complete canonical record profile.",
                                (
                                    "@details Byte ceilings are finite acceptance bounds, not actual lengths or native sizeof. Codec "
                                    "identity binds the original field order and quotas and is distinct from installed native ROS "
                                    "identity. This constant creates no allocation or permission."
                                ),
                            ],
                            indent,
                        ).rstrip()
                    )
                helper_docs = {
                    "export class VendorEncoded": [
                        "@brief Own one checked canonical encoding result.",
                        (
                            "@details Status 0 admits the complete owned byte array. Nonzero status 22/90 exposes no "
                            "successful encoding. Construction performs no ROS call."
                        ),
                    ],
                    "export class VendorDecoded": [
                        "@brief Own one checked complete-record decoding result.",
                        (
                            "@details A value is accepted only when status is 0 and value is nonnull. Managed storage "
                            "belongs to this object; failed decoding exposes no partial value."
                        ),
                    ],
                    "export interface VendorCodec": [
                        "@brief Describe a complete transactional Unitree record codec.",
                        (
                            "@details Each operation validates every original field and finite quota. Construction and "
                            "encoding create no capability or native ROS identity."
                        ),
                    ],
                }
                for prefix, docs in helper_docs.items():
                    if stripped.startswith(prefix):
                        output.append(block(docs, indent).rstrip())
                if stripped.startswith("value: T | null"):
                    output.append(
                        block(
                            [
                                "@brief Owned complete record, or null when no accepted value exists.",
                                "@details Read only after checked decoding returns status 0. No native memory or capability is retained.",
                            ],
                            indent,
                        ).rstrip()
                    )
                if stripped.startswith("public status:") or stripped.startswith("constructor(public status:"):
                    output.append(
                        block(
                            [
                                "@brief Original unsigned codec status; zero admits the complete result.",
                                (
                                    "@details Numeric errors preserve 22 for invalid input and 90 for exceeded canonical capacity. "
                                    "This value is independent from transport and cleanup errors."
                                ),
                            ],
                            indent,
                        ).rstrip()
                    )
                if stripped.startswith("public bytes:"):
                    output.append(
                        block(
                            [
                                "@brief Entire owned canonical record body for successful encoding.",
                                "@details Read only with status 0; mutable bytes must remain exclusive while consumed by a synchronous transport call.",
                            ],
                            indent,
                        ).rstrip()
                    )
            if language == "js":
                metadata = {
                    "codecIdentity:": (
                        "Exact finite canonical codec identity.",
                        (
                            "Binds every original field, width, order, and profile quota; it is distinct from an "
                            "independently installed native ROS identity."
                        ),
                    ),
                    "maxWireBytes:": (
                        "Maximum complete canonical record extent in bytes.",
                        "A finite acceptance ceiling, never native sizeof, actual message length, or transport reservation.",
                    ),
                    "minWireBytes:": (
                        "Minimum complete canonical record extent in bytes.",
                        "Decoders refuse shorter bodies before exposing any successful value.",
                    ),
                    "cartesianMaxWireBytes:": (
                        "Independent field-bound Cartesian extent in bytes.",
                        "A descriptive BigInt maximum; active data and aggregate quotas determine the actual encoded size.",
                    ),
                    "aggregateWireBytes:": (
                        "Selected aggregate profile budget in bytes.",
                        "Zero means no additional aggregate budget. Individual original field bounds remain mandatory.",
                    ),
                    "constants:": (
                        "Immutable original declared schema constants.",
                        "Constants occupy no canonical instance field bytes and grant no native operation or authority.",
                    ),
                }
                for prefix, (brief, details) in metadata.items():
                    if stripped.startswith(prefix):
                        output.append(block(["@brief " + brief, "@details " + details], indent).rstrip())
            match = re.match(
                (
                    "(?:static )?(wireSize|statusValue|validValue|writeControl|readControl|encodeChecked|decodeChecke"
                    "d|encode|decode|valid|defaultValue|validateValue)\\s*(?:<[^>]+>)?\\("
                ),
                stripped,
            )
            if match:
                name = match[1]
                details = {
                    "wireSize": (
                        "Validate and measure the exact active canonical record.",
                        [],
                        "Exact initialized byte count, or a negative original 22/90 codec status.",
                    ),
                    "statusValue": (
                        "Validate every initialized record field and finite bound.",
                        [],
                        "Unsigned status 0 for a valid record, otherwise original codec error 22 or 90.",
                    ),
                    "validValue": (
                        "Test complete value validity without transport or allocation.",
                        [],
                        "True only when every initialized field satisfies this canonical profile.",
                    ),
                    "writeControl": (
                        "Append the complete prevalidated record to its internal writer.",
                        ["@param[in,out] w Exclusive canonical writer with sufficient measured capacity."],
                        "No record value; the internal writer retains its original failure.",
                    ),
                    "readControl": (
                        "Read every declared field from the internal canonical reader.",
                        ["@param[in,out] r Exclusive reader; discard returned storage if reader validation fails."],
                        "Owned record prefix; only decodeChecked may publish a validated complete value.",
                    ),
                    "encodeChecked": (
                        "Validate and encode every declared field into owned canonical bytes.",
                        ["@param[in] value Complete immutable record, borrowed synchronously."],
                        "Owned bytes with status 0, or original 22/90 refusal with no successful body.",
                    ),
                    "decodeChecked": (
                        "Validate and decode exactly one entire canonical record.",
                        ["@param[in] bytes Complete immutable canonical input, borrowed through return."],
                        "Owned complete value with status 0; nonzero status exposes no accepted value.",
                    ),
                    "encode": (
                        "Encode every field through the selected language codec contract.",
                        ["@param[in] value Complete immutable original record."],
                        "Owned canonical bytes; checked variants retain numeric failure details.",
                    ),
                    "decode": (
                        "Decode one complete record through the selected language codec contract.",
                        ["@param[in] bytes Entire immutable canonical body; no trailing bytes are accepted."],
                        "Owned record. Use decodeChecked in AssemblyScript to distinguish refusal from its default value.",
                    ),
                    "valid": (
                        "Validate one entire canonical byte sequence without a ROS operation.",
                        ["@param[in] bytes Entire immutable canonical body."],
                        "True only when complete decoding succeeds; false preserves no partial record.",
                    ),
                    "defaultValue": (
                        "Construct every original zero, empty, nested, or declared field default.",
                        [],
                        "Fresh owned ordinary record, with no native identity or permission.",
                    ),
                    "validateValue": (
                        "Validate every field of one complete original record.",
                        ["@param[in] value Immutable complete record."],
                        "True on complete validity; JavaScript throws the original numeric codec error on refusal.",
                    ),
                }[name]
                brief, parameters, returned = details
                output.append(
                    block(
                        [
                            "@brief " + brief,
                            (
                                "@details Synchronous local canonical operation. It creates no native ROS object, capability, "
                                "task, timer, or permission. Keep mutable value/cursor storage exclusive until return."
                            ),
                        ]
                        + parameters
                        + [
                            "@return " + returned,
                            (
                                "@ownership Managed successful values and byte arrays own their storage. Allocation failure or a "
                                "language trap is not a numeric transport result."
                            ),
                        ],
                        indent,
                    ).rstrip()
                )
            output.append(line)
        source = "\n".join(output) + "\n"
    return source


def prepare_source(selected, language, extension, source, ordered=()):
    """@brief Stage, document, format, and statically review before returning bytes."""
    common = shared_sdk(selected)
    if language == "c" and extension == "h":
        # Normalize actual generated declarations before formatting so the same
        # public header remains warning-clean in both real C and C++ frontends.
        source_path = common / "tools/language/c/strict_headers.py"
        spec = importlib.util.spec_from_file_location("unitree_strict_c_headers", source_path)
        module = importlib.util.module_from_spec(spec)
        spec.loader.exec_module(module)
        source = module.normalize(source, records="#include <limits.h>" in source)
    with tempfile.TemporaryDirectory(prefix="unitree-reviewed-source-") as temporary:
        staged = Path(temporary) / ("source." + extension)
        staged.write_text(source)
        if ordered:
            source = document(common, language, source, ordered)
        if extension in ("h", "hpp", "c", "cpp", "m", "ts"):
            normalized = []
            for line in source.splitlines():
                match = re.match(r"^(\s*)(.*?;)\s*/\*\*<\s*@brief (.*?)\*/\s*$", line)
                if match:
                    indent, declaration, brief = match.groups()
                    normalized.append(
                        block(
                            [
                                "@brief " + brief.strip(),
                                (
                                    "@details The enclosing value owns this field. Its documented presence and error conditions "
                                    "govern when it may be read; serialize mutable access and retain borrowed inputs through "
                                    "synchronous use."
                                ),
                            ],
                            indent,
                        ).rstrip()
                    )
                    normalized.append(indent + declaration.strip())
                else:
                    normalized.append(line)
            source = "\n".join(normalized) + "\n"
        if extension == "go":
            normalized = []
            for line in source.splitlines():
                match = re.match(r"^(\s*)(.*?)\s+// @brief (.*)$", line)
                if match:
                    indent, declaration, brief = match.groups()
                    normalized.extend(
                        [
                            indent + "// @brief " + brief,
                            indent
                            + "// @details Enclosing result ownership and presence/error conditions govern this field; serialize shared mutation.",
                            indent + declaration,
                        ]
                    )
                else:
                    normalized.append(line)
            source = "\n".join(normalized) + "\n"
        if extension == "rs":
            lines = source.splitlines()
            normalized = []
            for index, line in enumerate(lines):
                if (
                    line.lstrip().startswith("pub ")
                    and ":" in line
                    and line.rstrip().endswith(",")
                    and index
                    and "@brief" in lines[index - 1]
                    and not line.lstrip().startswith("pub const")
                ):
                    indent = line[: len(line) - len(line.lstrip())]
                    normalized.append(
                        indent
                        + "/// @details The enclosing owned result and its documented presence/error conditions govern this field."
                    )
                normalized.append(line)
            source = "\n".join(normalized) + "\n"
        source = format_source(common, extension, source)
        if extension == "ts" and ("assemblyscript/codecs" in source or "sdk/origin" in source):
            raise ValueError("Stale AssemblyScript module path refused before publication")
        oversized = [number for number, line in enumerate(source.splitlines(), 1) if len(line) > 180]
        if oversized:
            raise ValueError("Unreviewable source width refused before publication: " + str(oversized[:12]))
        if "\x00" in source or not source.endswith("\n"):
            raise ValueError("Malformed source output refused before publication")
        staged.write_text(source)
        return source
