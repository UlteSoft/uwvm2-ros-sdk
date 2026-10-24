"""@brief Author complete Haskell, Embedded Swift and Odin catalog records.

@details Every emitter consumes the admitted IR, retains original fields and
constants, and writes actual source-language codecs. It never substitutes a C
record layout, computes a native identity, executes a compiler or grants ROS
authority. Complete field documentation is generated from each original IR.
"""

import json
from record_emitters import (
    docs,
    field_details,
    KINDS,
    literal,
    constant_type,
    declared_default,
    owned_default,
    semantic_predicates,
)


TYPES = {
    "haskell": ["Bool", "Word8", "Int8", "Word16", "Int16", "Word32", "Int32", "Word64", "Int64", "Float", "Double"],
    "swift": ["Bool", "UInt8", "Int8", "UInt16", "Int16", "UInt32", "Int32", "UInt64", "Int64", "Float", "Double"],
    "odin": ["bool", "u8", "i8", "u16", "i16", "u32", "i32", "u64", "i64", "f32", "f64"],
}
WIDTHS = dict(zip(KINDS, [1, 1, 1, 2, 2, 4, 4, 8, 8, 4, 8]))


def atom(language, record, member, records):
    """@brief Select an exact native element type without changing original width.

    @param language Genuine source language.
    @param record Complete enclosing record.
    @param member Original source field.
    @param records Complete backend dependency map.
    @return Complete native scalar, owned text or nested record type.
    """
    if member.type == "string":
        if language == "odin":
            return f"wire.Text({member.string_bound}, {str(member.string_encoding == 'raw_bytes').lower()})"
        return "[Word8]" if language == "haskell" else "[UInt8]"
    if member.type in KINDS:
        return TYPES[language][KINDS.index(member.type)]
    return records[(record.version, member.type)].symbol


def type_name(language, record, member, records):
    """@brief Preserve original scalar/fixed-array/sequence shape.

    @param language Genuine source language.
    @param record Complete original record.
    @param member Original field with its admitted finite count.
    @param records Complete backend dependency map.
    @return Complete native-language field type; codecs enforce exact bounds.
    """
    base = atom(language, record, member, records)
    if not member.array:
        return base
    if language in ("haskell", "swift"):
        return "[" + base + "]"
    return f"[{member.count}]{base}" if member.array == "array" else f"wire.Sequence({base}, {member.count})"


def haskell(backend, records, ordered, semantics, namespace, profile):
    """@brief Author all complete Haskell records and pure whole-value codecs.

    @param backend Exact ROS catalog family.
    @param records Complete dependency map.
    @param ordered Every admitted complete record/component in dependency order.
    @param semantics Original source-paired semantic rule selector.
    @return Genuine Haskell source retaining every original field and constant.
    """
    out = [
        "-- | @file Records.hs",
        f"-- @brief Complete original {namespace} ROS {backend} Haskell records and codecs.",
        "-- @details Owned immutable values preserve all fields; constructing them grants no ROS authority.",
        f"module {namespace.capitalize()}.{profile.capitalize()}.Records where",
        "import Data.Int",
        "import Data.Word",
        "import Data.Bits",
        "import GHC.Float",
        "import qualified Data.Text as T",
        "import Control.Monad (replicateM)",
        "import qualified Native.Wire as W",
        "",
    ]
    for r in ordered:
        s = r.symbol
        lower = s[0].lower() + s[1:]
        field = lambda m: lower + "_" + m.name
        out += docs(
            "haskell",
            f"Complete original {r.name} value.",
            f"Retain every original field in declaration order. Canonical extent {r.minimum}..{r.maximum} bytes.",
        )
        out.append("data " + s + " = " + s)
        for index, m in enumerate(r.members):
            out.append("    " + ("{" if index == 0 else ","))
            out += docs("haskell", f"Original {r.name}.{m.name} field.", field_details(m), "    ")
            out.append("      " + field(m) + " :: " + type_name("haskell", r, m, records))
        if r.members:
            out.append("    }")
        out.append("    deriving (Eq, Show)")
        out += docs(
            "haskell",
            "Construct every declared original default with independent values.",
            "Nested defaults and fixed arrays retain their exact source semantics; no ROS authority is created.",
            returns="Complete immutable original value.",
        )
        out += ["default" + s + " :: " + s, "default" + s + " =", "    " + s]
        for m in r.members:
            out.append("        (" + owned_default("haskell", r, m, records) + ")")
        out += docs(
            "haskell",
            "Exact complete canonical codec identity.",
            "This identifies field order and finite bounds; it is not a native registration hash.",
        )
        out += [
            lower + "CodecIdentity :: String",
            lower + "CodecIdentity =",
            "    " + json.dumps(r.codec_identity),
        ]
        for c in r.constants:
            ctype = constant_type("haskell", c["type"])
            value = literal("haskell", c["type"], c["value"])
            out += docs(
                "haskell",
                f"Original {r.name}.{c['name']} constant.",
                "The immutable original constant consumes no canonical instance field.",
            )
            out += [lower + "_" + c["name"] + " :: " + ctype, lower + "_" + c["name"] + " = " + value]

        def enc(m, expression):
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    return f"rawText {m.string_bound} ({expression})"
                return f"W.putText {m.string_bound} ({expression})"
            if m.type == "bool":
                return "Right (W.putBool (" + expression + "))"
            if m.type in ("float32", "float64"):
                width = WIDTHS[m.type]
                cast = "castFloatToWord32" if width == 4 else "castDoubleToWord64"
                return f"finite{width} ({expression}) {cast}"
            if m.type in KINDS:
                return f"Right (W.putNumber {WIDTHS[m.type]} ({expression}))"
            return "encode" + atom("haskell", r, m, records) + " (" + expression + ")"

        out += docs(
            "haskell",
            f"Encode every field of complete {r.name}.",
            (
                "Immutable owned output preserves original units and exact scalar bits. Invalid fields or counts"
                " return 22 before a valid whole result is published."
            ),
            parameters=(("value", "Complete immutable owned record."),),
            returns="Complete canonical bytes or error 22.",
        )
        out += ["encode" + s + " :: " + s + " -> Either Word32 [Word8]", "encode" + s + " value = do"]
        for condition in semantic_predicates("haskell", backend, r, semantics, "value"):
            atoms = condition.split(" && ")
            out += ["    if", "        (" + atoms[0]]
            out += ["        && " + atom for atom in atoms[1:]]
            out.append("        ) then Left 22 else Right ()")
        chunks = []
        for index, m in enumerate(r.members):
            expression = field(m) + " value"
            if m.array:
                compare = "==" if m.array == "array" else "<="
                out.append(f"    if length ({expression}) {compare} {m.count} then Right () else Left 22")
                out += [
                    f"    item{index} <-",
                    "        concat <$> mapM",
                    "            (\\element -> " + enc(m, "element") + ")",
                    "            (" + expression + ")",
                ]
                if m.array == "sequence":
                    out += [
                        f"    chunk{index} <- Right (",
                        f"        W.putNumber 4 (length ({expression}))",
                        f"        ++ item{index}",
                        "        )",
                    ]
                else:
                    out.append(f"    chunk{index} <- Right item{index}")
            else:
                out.append(f"    chunk{index} <- " + enc(m, expression))
            chunks.append("chunk" + str(index))
        if chunks:
            out += ["    let bytes =", "            concat"]
            out += ["                " + ("[ " if index == 0 else ", ") + name for index, name in enumerate(chunks)]
            out.append("                ]")
        else:
            out.append("    let bytes = []")
        out.append(f"    if length bytes > {r.maximum} then Left 22 else Right bytes")

        def parser(m):
            if m.type == "string":
                return f"readRaw {m.string_bound}" if m.string_encoding == "raw_bytes" else f"W.text {m.string_bound}"
            if m.type == "bool":
                return "W.boolean"
            if m.type in ("float32", "float64"):
                return (
                    "castWord32ToFloat . fromIntegral <$> W.number 4"
                    if m.type == "float32"
                    else "castWord64ToDouble <$> W.number 8"
                )
            if m.type in KINDS:
                return f"fromIntegral <$> W.number {WIDTHS[m.type]}"
            return "read" + atom("haskell", r, m, records)

        out += docs(
            "haskell",
            f"Read every field of nested {r.name}.",
            (
                "The parser advances one exclusive immutable input cursor. Finite bounds are checked before "
                "sequence construction; no host action occurs."
            ),
            returns="Complete owned record through the canonical parser, or original error 22.",
        )
        out += ["read" + s + " :: W.Parser " + s, "read" + s + " = do"]
        values = []
        for index, m in enumerate(r.members):
            name = "value" + str(index)
            if m.array == "sequence":
                out += [
                    f"    count{index} <- W.number 4",
                    f"    if count{index} > {m.count} then W.reject else pure ()",
                    f"    {name} <- replicateM (fromIntegral count{index}) (" + parser(m) + ")",
                ]
            elif m.array == "array":
                out.append(f"    {name} <- replicateM {m.count} (" + parser(m) + ")")
            else:
                out.append("    " + name + " <- " + parser(m))
            values.append(name)
        out += ["    let value =", "            " + s]
        out += ["                " + name for name in values]
        out += [
            "    case encode" + s + " value of",
            "        Left _ -> W.reject",
            "        Right _ -> pure value",
        ]
        out += docs(
            "haskell",
            f"Decode exactly one complete {r.name}.",
            "Require the whole bounded canonical extent and reject every trailing byte before publishing a value.",
            parameters=(("bytes", "Complete immutable canonical input."),),
            returns="Independent complete record or error 22.",
        )
        out += [
            "decode" + s + " :: [Word8] -> Either Word32 " + s,
            "decode" + s + " bytes",
            f"    | length bytes < {r.minimum} || length bytes > {r.maximum} = Left 22",
            "    | otherwise = do",
            "        (value, remaining) <- W.parse read" + s + " bytes",
            "        if null remaining then Right value else Left 22",
            "",
        ]
    out += [
        "-- | @brief Preserve a raw-byte string domain.",
        "-- | @param capacity Finite bound.",
        "-- @param bytes Owned original bytes.",
        "-- @return Count and bytes or error 22.",
        "rawText :: Int -> [Word8] -> Either Word32 [Word8]",
        "rawText capacity bytes = if length bytes > capacity then Left 22",
        "    else Right (W.putNumber 4 (length bytes) ++ bytes)",
        "-- | @brief Read bounded raw text without Unicode coercion.",
        "-- | @return Owned parser value.",
        "readRaw :: Int -> W.Parser [Word8]",
        "readRaw capacity = do",
        "    count <- W.number 4",
        "    if count > fromIntegral capacity then W.reject else W.takeBytes (fromIntegral count)",
        "-- | @brief Encode finite Float32 bits unchanged.",
        "-- | @return Four bytes or error 22.",
        "finite4 :: Float -> (Float -> Word32) -> Either Word32 [Word8]",
        "finite4 value cast = if isNaN value || isInfinite value then Left 22",
        "    else Right (W.putNumber 4 (cast value))",
        "-- | @brief Encode finite Float64 bits unchanged.",
        "-- | @return Eight bytes or error 22.",
        "finite8 :: Double -> (Double -> Word64) -> Either Word32 [Word8]",
        "finite8 value cast = if isNaN value || isInfinite value then Left 22",
        "    else Right (W.putNumber 8 (cast value))",
        "",
    ]
    return "\n".join(out) + "\n"


def swift(backend, records, ordered, semantics, namespace, profile):
    """@brief Author every complete Embedded Swift record and full-field codec.

    @param backend Exact ROS family.
    @param records Complete dependency map.
    @param ordered All original admitted complete records in dependency order.
    @param semantics Original source semantic rule selector.
    @return Actual Swift source preserving all fields and exact finite shapes.
    """
    out = [
        "/// @file Records.swift",
        f"/// @brief Complete original {namespace} ROS {backend} Embedded Swift values and codecs.",
        "/// @details Bytes are owned arrays; no Foundation, native ROS object or implicit authority is used.",
        "",
    ]

    def initial(r, m):
        base = (
            "[]"
            if m.type == "string"
            else "false"
            if m.type == "bool"
            else "0"
            if m.type in KINDS
            else atom("swift", r, m, records) + "()"
        )
        if m.native_default is not None:
            if m.array:
                return declared_default("swift", r, m, records)
            base = declared_default("swift", r, m, records)
        if m.array == "array":
            return f"Array(repeating: {base}, count: {m.count})"
        return "[]" if m.array == "sequence" else base

    for r in ordered:
        s = r.symbol
        out += docs(
            "swift",
            f"Complete original {r.name} value.",
            (
                f"Retain all {len(r.members)} fields and {len(r.constants)} constants in source order. "
                f"Canonical extent {r.minimum}..{r.maximum} bytes."
            ),
        )
        out.append("public struct " + s + " {")
        for m in r.members:
            out += docs("swift", f"Original {r.name}.{m.name} field.", field_details(m), "    ")
            out.append(
                "    public var field_" + m.name + ": " + type_name("swift", r, m, records) + " = " + initial(r, m)
            )
        for c in r.constants:
            out += docs(
                "swift",
                f"Original {r.name}.{c['name']} constant.",
                "An immutable original source constant consumes no instance or wire field.",
                "    ",
            )
            ctype = constant_type("swift", c["type"])
            value = literal("swift", c["type"], c["value"])
            out.append(f"    public static let constant_{c['name']}: {ctype} = {value}")
        out += docs(
            "swift",
            "Construct the declared original zero/empty value.",
            "No ROS allocation, host action or authority is obtained.",
            "    ",
            returns="Independent complete ordinary value.",
        )
        out.append("    public init() {}")
        out += docs(
            "swift",
            "Traverse all original fields in their declared order.",
            "Only an exclusive local canonical cursor is advanced. Failed values remain unusable.",
            "    ",
            parameters=(("cursor", "Exclusive bounded reader or writer."),),
        )
        out.append("    mutating func fields(_ cursor: inout NativeCursor) {")
        for index, m in enumerate(r.members):
            expression = "field_" + m.name
            indent = "        "
            if m.array:
                count = f"count{index}"
                if m.array == "sequence":
                    out.append(indent + f"let {count} = Int(cursor.number(UInt64({expression}.count), 4))")
                    condition = f"{count} > {m.count}"
                else:
                    out.append(indent + f"let {count} = {m.count}")
                    condition = f"cursor.writing && {expression}.count != {m.count}"
                out += [
                    indent + "if " + condition + " || cursor.failed {",
                    indent + "    cursor.failed = true",
                    indent + "    return",
                    indent + "}",
                ]
                base = (
                    "[]"
                    if m.type == "string"
                    else (
                        "false" if m.type == "bool" else "0" if m.type in KINDS else atom("swift", r, m, records) + "()"
                    )
                )
                out += [
                    indent + f"if !cursor.writing {{ {expression} = Array(repeating: {base}, count: {count}) }}",
                    indent + f"for index in 0..<{count} {{",
                ]
                expression += "[index]"
                indent += "    "
            if m.type == "string":
                out.append(indent + expression + f" = cursor.text({expression}, {m.string_bound})")
            elif m.type == "bool":
                out.append(indent + expression + f" = cursor.boolean({expression})")
            elif m.type in KINDS:
                width = WIDTHS[m.type]
                native = atom("swift", r, m, records)
                if m.type.startswith("float"):
                    bits = "UInt32" if width == 4 else "UInt64"
                    out.append(
                        indent
                        + expression
                        + (
                            f" = {native}(bitPattern: {bits}(truncatingIfNeeded: "
                            f"cursor.number(UInt64({expression}.bitPattern), {width})))"
                        )
                    )
                    out.append(indent + f"if !{expression}.isFinite {{ cursor.failed = true }}")
                elif m.type.startswith("int"):
                    unsigned = "UInt" + str(width * 8)
                    out.append(
                        indent
                        + expression
                        + (
                            f" = {native}(bitPattern: {unsigned}(truncatingIfNeeded: "
                            f"cursor.number(UInt64({unsigned}(bitPattern: {expression})), {width})))"
                        )
                    )
                else:
                    out.append(
                        indent
                        + expression
                        + f" = {native}(truncatingIfNeeded: cursor.number(UInt64({expression}), {width}))"
                    )
            else:
                out.append(indent + expression + ".fields(&cursor)")
            if m.array:
                out.append("        }")
        for condition in semantic_predicates("swift", backend, r, semantics, "self"):
            out.append("        if " + condition + " { cursor.failed = true }")
        out.append("    }")
        out += docs(
            "swift",
            f"Encode every complete {r.name} field.",
            (
                "Caller owns the record; the returned array is independent. Invalid fields, counts or output "
                "extent return 22."
            ),
            "    ",
            returns="Complete owned bytes/status; bytes are empty on failure.",
        )
        out += [
            "    public mutating func encode() -> (bytes: [UInt8], status: UInt32) {",
            f"        var cursor = NativeCursor(bytes: [UInt8](repeating: 0, count: {r.maximum}),",
            f"                               limit: {r.maximum}, writing: true)",
            "        fields(&cursor)",
            "        if cursor.failed { return ([], 22) }",
            "        return (Array(cursor.bytes[0..<cursor.at]), 0)",
            "    }",
        ]
        out += docs(
            "swift",
            f"Decode exactly one complete {r.name}.",
            "Reject malformed fields, finite bounds and trailing bytes before publishing a whole owned record.",
            "    ",
            parameters=(("bytes", "Complete immutable canonical bytes."),),
            returns="Independent complete value/status; value is nil on failure.",
        )
        out += [
            "    public static func decode(_ bytes: [UInt8]) -> (value: Self?, status: UInt32) {",
            f"        if bytes.count < {r.minimum} || bytes.count > {r.maximum} {{ return (nil, 22) }}",
            "        var cursor = NativeCursor(bytes: bytes, limit: bytes.count)",
            "        var value = Self()",
            "        value.fields(&cursor)",
            "        if cursor.failed || cursor.at != cursor.limit { return (nil, 22) }",
            "        return (value, 0)",
            "    }",
            "}",
            "",
        ]
    return "\n".join(out) + "\n"


def odin(backend, records, ordered, semantics, namespace, profile):
    """@brief Author every original complete Odin record and full-field codec.

    @param backend Exact original ROS catalog family.
    @param records Complete original dependency map.
    @param ordered Every complete admitted record/component in dependency order.
    @param semantics Original source-paired semantic rule selector.
    @return Genuine Odin source with finite owned arrays and no omitted field.
    """
    out = [
        "// @file records.odin",
        f"// @brief Complete owned original {namespace} ROS {backend} records and codecs.",
        "// @details No generated record owns a native ROS object or grants a capability.",
        "package records",
        'import wire "native:odin/wire"',
        "",
    ]
    for r in ordered:
        s = r.symbol
        out += docs(
            "odin",
            f"Complete original {r.name} value.",
            (
                f"Retain all {len(r.members)} original fields and {len(r.constants)} constants. "
                f"Wire extent {r.minimum}..{r.maximum} bytes."
            ),
        )
        out.append(s + " :: struct {")
        for m in r.members:
            out += docs("odin", f"Original {r.name}.{m.name} field.", field_details(m), "    ")
            out.append("    field_" + m.name + ": " + type_name("odin", r, m, records) + ",")
        out.append("}")
        out += docs(
            "odin",
            "Construct all declared original defaults with independent storage.",
            "Nested records retain their own defaults; no native owner or permission is created.",
            returns="Complete independently owned original value.",
        )
        out += ["init_" + s + ' :: proc "contextless"() -> ' + s + " {", "    result: " + s]
        for m in r.members:
            target = "result.field_" + m.name
            if m.native_default is not None:
                out.append("    " + target + " = " + owned_default("odin", r, m, records))
            elif m.type not in KINDS and m.type != "string":
                expression = owned_default("odin", r, m, records)
                if m.array == "array":
                    out += [
                        f"    for index in 0 ..< {m.count} {{",
                        "        " + target + "[index] = " + expression,
                        "    }",
                    ]
                elif not m.array:
                    out.append("    " + target + " = " + expression)
        out += ["    return result", "}"]
        for suffix, value in (
            ("Minimum_Wire_Bytes", str(r.minimum)),
            ("Maximum_Wire_Bytes", str(r.maximum)),
            ("Codec_Identity", json.dumps(r.codec_identity)),
        ):
            out += docs(
                "odin",
                f"Original complete {r.name} {suffix.lower().replace('_', ' ')}.",
                "Canonical metadata is independent from native object size, allocation and registration proof.",
            )
            out.append(s + "_" + suffix + " :: " + value)
        for c in r.constants:
            out += docs(
                "odin",
                f"Original {r.name}.{c['name']} constant.",
                "The immutable source constant consumes no canonical instance field.",
            )
            value = literal("odin", c["type"], c["value"])
            out.append(s + "_" + c["name"] + " :: " + value)
        out += docs(
            "odin",
            f"Traverse every original field of complete {r.name}.",
            (
                "Fields own fixed arrays; no decoded field borrows the canonical input. Only the exclusive local"
                " cursor is advanced."
            ),
            parameters=(
                ("value", "Complete exclusive owned native record."),
                ("cursor", "Exclusive canonical reader/writer."),
            ),
        )
        out += ["fields_" + s + ' :: proc "contextless"(', "    value: ^" + s + ", cursor: ^wire.Cursor)", "{"]
        for index, m in enumerate(r.members):
            expression = "value.field_" + m.name
            indent = "    "
            if m.array:
                if m.array == "sequence":
                    out += [
                        indent + expression + ".size = u32(wire.number(cursor, u64(" + expression + ".size), 4))",
                        indent + f"if {expression}.size > {m.count} {{ cursor.code = 22; return }}",
                        indent + f"for index in 0..<int({expression}.size) {{",
                    ]
                    expression += ".items[index]"
                else:
                    out.append(indent + f"for index in 0..<{m.count} {{")
                    expression += "[index]"
                indent += "    "
            if m.type == "string":
                out.append(indent + "wire.text(cursor, &" + expression + ")")
            elif m.type == "bool":
                out.append(indent + expression + " = wire.boolean(cursor, " + expression + ")")
            elif m.type in ("float32", "float64"):
                out.append(indent + expression + " = wire." + m.type + "(cursor, " + expression + ")")
            elif m.type in KINDS:
                native = atom("odin", r, m, records)
                width = WIDTHS[m.type]
                if m.type.startswith("int"):
                    unsigned = "u" + str(width * 8)
                    out.append(
                        indent
                        + expression
                        + " = transmute("
                        + native
                        + ")"
                        + unsigned
                        + "(wire.number(cursor, u64(transmute("
                        + unsigned
                        + ")"
                        + expression
                        + f"), {width}))"
                    )
                else:
                    out.append(
                        indent + expression + " = " + native + f"(wire.number(cursor, u64({expression}), {width}))"
                    )
            else:
                out.append(indent + "fields_" + atom("odin", r, m, records) + "(&" + expression + ", cursor)")
            if m.array:
                out.append("    }")
        for condition in semantic_predicates("odin", backend, r, semantics, "value"):
            out.append("    if " + condition + " { cursor.code = 22 }")
        out.append("}")
        out += docs(
            "odin",
            f"Encode every complete original {r.name} field.",
            (
                "Preserve field order, original units and scalar bits. Failure invalidates any partial output; "
                "no host call occurs."
            ),
            parameters=(
                ("value", "Complete exclusive owned record."),
                ("output", "Disjoint exclusive writable canonical bytes."),
            ),
            returns="Complete initialized extent and zero, or unusable zero extent/error 22.",
        )
        out += [
            "encode_" + s + ' :: proc "contextless"(',
            "    value: ^" + s + ", output: []u8) -> (int, u32)",
            "{",
            f"    cursor := wire.Cursor{{bytes = output[:min(len(output), {r.maximum})], writing = true}}",
            "    fields_" + s + "(value, &cursor)",
            "    if cursor.code != 0 { return 0, cursor.code }",
            "    return cursor.at, 0",
            "}",
        ]
        out += docs(
            "odin",
            f"Decode exactly one complete original {r.name}.",
            (
                "Reject malformed fields, finite bound violations and trailing bytes before publishing an "
                "independent complete value."
            ),
            parameters=(("bytes", "Complete immutable canonical input; no reference escapes."),),
            returns="Complete owned value/zero, or an unusable value/error 22.",
        )
        out += [
            "decode_" + s + ' :: proc "contextless"(',
            "    bytes: []u8) -> (value: " + s + ", code: u32)",
            "{",
            f"    if len(bytes) < {r.minimum} || len(bytes) > {r.maximum} {{ return value, 22 }}",
            "    cursor := wire.Cursor{bytes = bytes}",
            "    fields_" + s + "(&value, &cursor)",
            "    if cursor.code != 0 { return value, cursor.code }",
            "    if cursor.at != len(bytes) { return value, 22 }",
            "    return value, 0",
            "}",
            "",
        ]
    return "\n".join(out) + "\n"
