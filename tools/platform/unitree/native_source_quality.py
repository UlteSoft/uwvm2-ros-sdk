#!/usr/bin/env python3
"""@brief Document native Unitree adapters before their formatted publication.

@details Native declarations remain complete and byte-equivalent. Documentation
describes cold schema metadata and synchronous conversion, without treating
registration as transport authority or an installed robot SDK qualification.
"""

import re
from source_quality import block, prepare_source


def native_documentation(name, source):
    """@brief Attach exact contracts to native metadata and conversion operations.

    @param name One native adapter product basename, never a caller file path.
    @param source Complete raw generated C++ source, borrowed without execution.
    @return Complete source with documented types, fields and native operations.
    @details This preparation changes comments and declaration layout only. No
    native identity, quota, type, expression, or registration is synthesized.
    """
    source = re.sub(r"/\*\*.*?\*/", "", source, flags=re.S)
    purpose = {
        "manifest.hpp": (
            "Describe the immutable complete canonical Unitree registry.",
            "Installed native identities were read independently and are checked again by the native provider. "
            "Only the selected observation topics are registered. Schema registration grants no alias or ROS operation.",
        ),
        "native_constants.hpp": (
            "Check source-declared constants without creating a ROS participant.",
            "The selected Unitree observation declarations contain no constants. Validation therefore succeeds "
            "vacuously; field shapes and independently observed native identities are checked elsewhere.",
        ),
        "native_ros2.hpp": (
            "Convert complete installed ROS 2 Unitree messages and canonical values.",
            "Compile-time field checks retain original scalar types and array shapes. Runtime conversion preserves "
            "every declared field, rejects invalid bounds or nonfinite floats, and creates no communication authority.",
        ),
        "native_ros1.hpp": (
            "Convert complete installed ROS 1 Unitree messages and canonical values.",
            "Compile-time field checks retain original scalar types and array shapes. Runtime conversion preserves "
            "every declared field, rejects invalid bounds or nonfinite floats, and creates no communication authority.",
        ),
    }[name]
    output = [
        block(
            ["@file " + name, "@brief " + purpose[0], "@details " + purpose[1]]
        ).rstrip()
    ]
    source = source.replace(
        "std::string_view type, fields;",
        "std::string_view type;\n        std::string_view fields;",
    )
    for line in source.splitlines():
        stripped = line.lstrip()
        indent = line[: len(line) - len(stripped)]
        docs = None
        shape = re.match(
            r"struct (fixed_shape|sequence_shape|string_shape|empty_component)",
            stripped,
        )
        if shape:
            docs = [
                "@brief Inspect the installed native "
                + shape[1].replace("_", " ")
                + " at compile time.",
                "@details Unsupported layouts retain a disabled or zero-sized default. Specializations inspect actual "
                "native declarations and allocate nothing; they do not relax canonical field quotas.",
            ]
        elif stripped.startswith("struct complete_vendor_native_traits"):
            docs = [
                "@brief Admit this exact complete Unitree native message to the selected provider.",
                "@details The associated codec independently checks every declared field shape and native type identity. "
                "This cold trait does not construct a node, expose a partial message, or authorize publication.",
            ]
        elif re.match(r"struct Ros[12].*Codec", stripped):
            docs = [
                "@brief Preserve every original field in one installed native Unitree message.",
                "@details Native and canonical types remain distinct. Converters borrow immutable inputs synchronously. "
                "Only complete validated conversions can be committed to public output; caller owns all resulting storage.",
            ]
        elif stripped.startswith("struct definition_entry"):
            docs = [
                "@brief Borrow one normalized original ROS declaration subsection.",
                "@details Both string views refer to immutable program-lifetime literals. This is source metadata, "
                "never a native hash algorithm or proof that a communication endpoint exists.",
            ]
        elif stripped in ("std::string_view type;", "std::string_view fields;"):
            docs = [
                "@brief "
                + (
                    "Original fully qualified native type name."
                    if " type;" in stripped
                    else "All normalized original field declarations in order."
                ),
                "@details Borrowed immutable program-lifetime text; no allocation, mutable ownership, or authority is retained.",
            ]
        elif stripped.startswith("using "):
            alias = stripped.split()[1]
            docs = [
                "@brief Name the exact "
                + (
                    "installed native message"
                    if alias == "Native"
                    else (
                        "canonical inline record"
                        if alias == "Record"
                        else "compile-time native field or element type"
                    )
                )
                + ".",
                (
                    "@details Type-only alias; it creates no storage. The adjacent static assertions reject "
                    "incompatible installed declarations."
                ),
            ]
        elif re.match(r"(?:inline )?static constexpr", stripped):
            docs = [
                "@brief Retain immutable native shape, identity, quota, or declaration metadata.",
                "@details Values and referenced literal storage have program lifetime. Identities and finite byte ceilings "
                "are distinct from active payload lengths, native sizeof, and operation permissions.",
            ]
        elif stripped.startswith("inline constexpr custom_"):
            if "_entries()" in stripped:
                kind = stripped.split("custom_", 1)[1].split("_", 1)[0]
                docs = [
                    "@brief Return the selected immutable " + kind + " registry view.",
                    "@details The view borrows program-lifetime descriptor storage. Empty registries remain empty. "
                    "No endpoint, allocation, alias, or communication permission is created.",
                    "@return A non-owning descriptor pointer/count pair, valid for program lifetime.",
                ]
            else:
                docs = [
                    "@brief Describe one complete canonical record, field shape, or selected native topic.",
                    "@details Immutable descriptor storage has program lifetime. Every child, field order, quota, "
                    "and independently bound identity belongs to this exact profile; no operation authority is granted.",
                ]
        function = re.match(r"(?:static |inline )*bool (\w+)\((.*)", stripped)
        if function:
            operation = function[1]
            parameters = []
            returned = "True on complete validation, otherwise false; no transport status is implied."
            details = "Synchronous pure conversion with no ROS operation. Keep borrowed mutable storage stable until return."
            if operation == "encoded_size":
                brief = "Validate every native field and measure the exact canonical extent."
                parameters = [
                    "@param[in] value Complete immutable installed native message.",
                    "@param[out] out Exact byte count, committed only after all fields validate.",
                ]
            elif operation == "to_record":
                brief = "Copy every native field into an exclusively owned temporary canonical record."
                parameters = [
                    "@param[in] value Complete immutable native message.",
                    "@param[out] record Private temporary; discard its contents on false.",
                ]
                returned = "True only after complete canonical validation; false exposes no accepted record."
            elif operation == "from_record":
                brief = "Populate every native field from a prevalidated complete canonical record."
                parameters = [
                    "@param[in] record Complete already validated canonical value.",
                    "@param[out] value Fresh private native temporary; discard it on false.",
                ]
                details += " Native dynamic allocations may throw; only the enclosing decoder commits the completed temporary."
            elif operation == "validate" and name == "native_constants.hpp":
                brief = "Validate the empty set of source-declared constants without creating a ROS participant."
                returned = "True; the selected observation declarations contain no source constants."
            elif operation in ("valid", "validate"):
                brief = "Validate the complete native message without exposing a canonical prefix."
                parameters = [
                    "@param[in] value Complete immutable native message, borrowed through return."
                ]
            elif operation == "encode":
                brief = "Encode every native field as one complete canonical body."
                parameters = ["@param[in] value Complete immutable native message."]
                if "capacity" in stripped:
                    parameters += [
                        "@param[out] out Exclusive caller buffer, disjoint from the source record.",
                        "@param[in] capacity Must equal the measured complete active wire length.",
                    ]
                    returned = "True after complete output; false for invalid values, overlap, or a nonexact capacity."
                else:
                    parameters += [
                        "@param[out] out Caller-owned vector, replaced only after complete successful encoding."
                    ]
                    details += " The sole output allocation may throw; no partial successful vector is committed."
            elif operation == "decode":
                brief = "Decode exactly one complete canonical body into a fresh native message."
                parameters = [
                    "@param[in] bytes Complete immutable input, stable and disjoint from out.",
                    "@param[in] size Exact body extent; trailing bytes are refused.",
                    "@param[out] out Caller-owned native value, committed only after complete conversion.",
                ]
                details += " Native allocation failure may throw before commit."
            elif operation in ("constants", "validate") or (
                name == "native_constants.hpp" and operation == "validate"
            ):
                brief = "Validate original source-declared constants without constructing a ROS participant."
            elif operation == "native_accessible":
                brief = "Check whether borrowed native element storage is readable synchronously."
            elif operation == "zero":
                brief = "Check the native layout-only dummy of an empty interface component."
            elif operation == "initialize":
                brief = "Initialize the native layout-only dummy of an empty interface component."
            else:
                brief = None
            if brief:
                docs = (
                    ["@brief " + brief, "@details " + details]
                    + parameters
                    + [
                        "@return " + returned,
                        "@ownership Caller retains inputs and exclusively owns every committed output.",
                    ]
                )
        if stripped.startswith("static void initialize("):
            docs = [
                "@brief Initialize the layout-only dummy of a native empty component.",
                (
                    "@details The caller supplies an exclusive private native temporary. No canonical wire field, "
                    "allocation, or ROS operation is created; the dummy is never serialized as a declared field."
                ),
                "@return No value; initialization cannot report a transport status.",
            ]
        if " native_schema()" in stripped:
            docs = [
                "@brief Return the complete immutable original native declaration schema.",
                (
                    "@details Every field name, type, array shape, bound, and source constant remains in original "
                    "order. The returned view borrows program-lifetime descriptor storage and creates no native "
                    "object or transport authority."
                ),
                "@return A non-owning record pointer/count view, valid for program lifetime.",
            ]
        if docs:
            output.append(block(docs, indent).rstrip())
        output.append(line)
    return "\n".join(output) + "\n"


def prepare_native_source(sdk, name, source, ordered=()):
    """@brief Fully document and format one native product before returning it.

    @param sdk Reviewed SDK root used to locate maintained formatter dependencies.
    @param name Exact native adapter product basename.
    @param source Raw complete product text; no file is published before success.
    @param ordered Complete canonical IR records used for C field documentation.
    @return Formatted, documented UTF-8 native source with unchanged semantics.
    """
    if name == "bounded_records.h":
        source = re.sub(
            r"/\*\*.*?\*/",
            block(
                [
                    "@file bounded_records.h",
                    "@brief Preserve every complete selected canonical Unitree record inline.",
                    (
                        "@details Every dynamic field has finite caller-owned capacity. Encoding validates and measures "
                        "before output. Decoding commits one complete temporary only after validation; partial records "
                        "and overlapping buffers are refused."
                    ),
                ]
            ),
            source,
            count=1,
            flags=re.S,
        )
        return prepare_source(sdk, "c", "h", source, ordered)
    return prepare_source(sdk, "cpp", "hpp", native_documentation(name, source))
