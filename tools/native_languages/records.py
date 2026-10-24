"""Full-field extensions over the existing admitted bounded Record/Interface IR.

No schema is reparsed here and no native identity is computed. Use the original
source loader, its complete field/default/constant grammar and its source pins.
These outputs are source candidates until each actual compiler/Guest/native
matrix has receipts. Never replace a missing field with an opaque byte value.
"""

import itertools
import json
import re
import struct
from documentation import record_type, record_member, record_metadata, record_codec, attach_nim

TYPES = {
    "swift": ("Bool", "UInt8", "Int8", "UInt16", "Int16", "UInt32", "Int32", "UInt64", "Int64", "Float", "Double"),
    "nim": ("bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64"),
    "d": ("bool", "ubyte", "byte", "ushort", "short", "uint", "int", "ulong", "long", "float", "double"),
    "odin": ("bool", "u8", "i8", "u16", "i16", "u32", "i32", "u64", "i64", "f32", "f64"),
    "haskell": ("Bool", "Word8", "Int8", "Word16", "Int16", "Word32", "Int32", "Word64", "Int64", "Float", "Double"),
    "zig": ("bool", "u8", "i8", "u16", "i16", "u32", "i32", "u64", "i64", "f32", "f64"),
}
SCALARS = ("bool", "uint8", "int8", "uint16", "int16", "uint32", "int32", "uint64", "int64", "float32", "float64")
WIDTH = dict(zip(SCALARS, (1, 1, 1, 2, 2, 4, 4, 8, 8, 4, 8)))


def member(language, name):
    # Always spell admitted names reversibly. Original ROS member identities
    # remain the Field.name values in the independent receipt.
    if language == "swift":
        return "`" + name + "`"
    if language == "nim":
        return "`" + name + "`"
    if language == "haskell":
        return "field_" + name
    return "field_" + name


def element(language, r, m, records):
    if m.type == "string":
        if m.string_encoding == "raw_bytes":
            return {
                "swift": "[UInt8]",
                "nim": "seq[byte]",
                "d": "const(ubyte)[]",
                "odin": "[]u8",
                "haskell": "B.ByteString",
                "zig": "[]const u8",
            }[language]
        return {
            "swift": "String",
            "nim": "string",
            "d": "const(ubyte)[]",
            "odin": "string",
            "haskell": "T.Text",
            "zig": "[]const u8",
        }[language]
    if m.type in SCALARS:
        return TYPES[language][SCALARS.index(m.type)]
    return records[(r.version, m.type)].symbol


def type_name(language, r, m, records):
    t = element(language, r, m, records)
    if not m.array:
        return t
    if language == "swift":
        return "[" + t + "]"
    if language == "nim":
        return f"array[{m.count},{t}]" if m.array == "array" else "seq[" + t + "]"
    if language == "d":
        return t + (f"[{m.count}]" if m.array == "array" else "[]")
    if language == "odin":
        return (f"[{m.count}]" if m.array == "array" else "[]") + t
    if language == "haskell":
        return "[" + t + "]"
    return f"[{m.count}]{t}" if m.array == "array" else "[]" + t


def literal(language, t, value):
    # Revalidate admitted normalized values, including full-width signed MIN.
    if t == "bool":
        if value not in ("True", "False"):
            raise ValueError("normalized bool required")
        return value if language == "haskell" else value.lower()
    if t.startswith("float"):
        width = 32 if t == "float32" else 64
        raw = struct.pack("<f" if width == 32 else "<d", float(value))
        bits = int.from_bytes(raw, "little")
        return {
            "swift": f'{"Float" if width==32 else "Double"}(bitPattern: 0x{bits:x})',
            "nim": f"cast[float{width}](0x{bits:x}'u{width})",
            "haskell": f'castWord{width}To{"Float" if width==32 else "Double"} 0x{bits:x}',
            "zig": f"@as(f{width},@bitCast(@as(u{width},0x{bits:x})))",
            "d": struct.unpack("<f" if width == 32 else "<d", raw)[0].hex() + ("F" if width == 32 else ""),
            "odin": f"transmute(f{width})u{width}(0x{bits:x})",
        }[language]
    if not re.fullmatch(r"-?(0|[1-9][0-9]*)", value):
        raise ValueError("normalized integer required")
    if language == "d":
        if t == "int64" and value == "-9223372036854775808":
            return "(-9223372036854775807L-1L)"
        return value + ("UL" if t == "uint64" else "L" if t == "int64" else "U" if t == "uint32" else "")
    if language == "nim":
        return value + "'" + ("u" if t.startswith("u") else "i") + re.search("[0-9]+", t)[0]
    return value


def initial(language, r, m, records):
    t = element(language, r, m, records)
    if m.native_default is not None:
        base = literal(language, m.type, m.native_default)
    elif m.type == "string":
        base = {
            "swift": "[]" if m.string_encoding == "raw_bytes" else '""',
            "nim": "@[]" if m.string_encoding == "raw_bytes" else '""',
            "haskell": "B.empty" if m.string_encoding == "raw_bytes" else "T.empty",
            "d": "null",
            "odin": "nil" if m.string_encoding == "raw_bytes" else '""',
            "zig": "&.{}",
        }[language]
    elif m.type == "bool":
        base = "False" if language == "haskell" else "false"
    elif m.type in SCALARS:
        base = "0"
    else:
        base = {
            "swift": t + "()",
            "nim": "init" + t + "()",
            "haskell": "default" + t,
            "d": t + ".init",
            "odin": t + "{}",
            "zig": ".{}",
        }[language]
    if not m.array:
        return base
    if m.array == "sequence":
        return {"swift": "[]", "nim": "@[]", "haskell": "[]", "d": "null", "odin": "nil", "zig": "&.{}"}[language]
    return {
        "swift": f"Array(repeating: {base}, count: {m.count})",
        "nim": "[" + ",".join([base] * m.count) + "]",
        "haskell": f"replicate {m.count} ({base})",
        "d": base,
        "odin": f"[{m.count}]{t}" + "{" + ",".join([base] * m.count) + "}",
        "zig": f"[_]{t}" + "{" + base + f"}} ** {m.count}",
    }[language]


def predicates(language, profile, r, value):
    rule = profile.standard_semantics(r)

    def field(n):
        return value + "." + member(language, n)

    if rule.startswith("normalized-"):
        a = field("nanosec" if r.version == 2 else "nsec")
        return ([a + " < 0"] if rule == "normalized-duration" else []) + [a + " >= 1000000000"]
    if rule != "joint-state-optional-equal-length-arrays":
        return []

    def size(n):
        a = field(n)
        return {
            "swift": a + ".count",
            "nim": "len(" + a + ")",
            "d": a + ".length",
            "odin": "len(" + a + ")",
            "zig": a + ".len",
        }[language]

    sizes = [size(n) for n in ("name", "position", "velocity", "effort")]
    op = " and " if language == "nim" else " && "
    return [op.join([a + " != 0", b + " != 0", a + " != " + b]) for a, b in itertools.combinations(sizes, 2)]


def swift(profile, records, ordered):
    out = ["// Generated complete canonical values. No I/O or authority.", "import RosWasm"]
    for r in ordered:
        s = r.symbol
        out += [
            f"public struct {s}: Canonical {{",
            f" public static let maximumWireBytes = {r.maximum}",
            " public static let codecIdentity = " + json.dumps(r.codec_identity),
            " public static let nativeType = " + json.dumps(r.name),
            " public static let nativeIdentity: String? = " + ("nil" if r.identity is None else json.dumps(r.identity)),
        ]
        for c in r.constants:
            t = TYPES["swift"][SCALARS.index(c["type"])]
            out += [f' public static let {member("swift",c["name"])}: {t} = {literal("swift",c["type"],c["value"])}']
        for m in r.members:
            out += [
                f' public var {member("swift",m.name)}: {type_name("swift",r,m,records)} = {initial("swift",r,m,records)}'
            ]
        out += [" public init() {}", " public func write(to w: inout WireWriter) throws {"]
        for condition in predicates("swift", profile, r, "self"):
            out += ["  if " + condition + " { throw RosError(22) }"]
        for m in r.members:
            a = "self." + member("swift", m.name)
            if m.array:
                out += [
                    f'  guard {a}.count {"==" if m.array=="array" else "<="} {m.count} else {{ throw RosError(22) }}'
                ]
                if m.array == "sequence":
                    out += [f"  try w.integer(UInt32({a}.count))"]
                out += [f"  for e in {a} {{"]
                a = "e"
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        f"  guard {a}.count <= {m.string_bound} else {{ throw RosError(22) }}",
                        f"  try w.integer(UInt32({a}.count)); try w.append({a})",
                    ]
                else:
                    out += [f"  try w.string({a},bound:{m.string_bound})"]
            elif m.type in SCALARS:
                method = {"bool": "boolean", "float32": "float32", "float64": "float64"}.get(m.type, "integer")
                out += [f"  try w.{method}({a})"]
            else:
                out += [f"  try {a}.write(to:&w)"]
            if m.array:
                out += ["  }"]
        out += [" }", f" public static func read(from r: inout WireReader) throws -> {s} {{", f"  var v = {s}()"]
        for index, m in enumerate(r.members):
            a = "v." + member("swift", m.name)
            if m.array:
                count = f"count{index}"
                if m.array == "sequence":
                    out += [
                        f"  let raw{count} = try r.integer(UInt32.self)",
                        f"  guard raw{count} <= {m.count} else {{ throw RosError(22) }}",
                        f"  let {count} = Int(raw{count})",
                    ]
                else:
                    out += [f"  let {count} = {m.count}"]
                out += [f"  {a} = []; {a}.reserveCapacity({count})", f"  for _ in 0..<{count} {{"]
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    n = f"size{index}"
                    out += [
                        f"  let raw{n}=try r.integer(UInt32.self); guard raw{n}<={m.string_bound} else {{ throw RosError(22) }}",
                        f"  let {n}=Int(raw{n})",
                    ]
                    expr = f"try r.take({n})"
                else:
                    expr = f"try r.string(bound:{m.string_bound})"
            elif m.type in SCALARS:
                method = {"bool": "boolean()", "float32": "float32()", "float64": "float64()"}.get(
                    m.type, "integer(" + element("swift", r, m, records) + ".self)"
                )
                expr = "try r." + method
            else:
                expr = "try " + element("swift", r, m, records) + ".read(from:&r)"
            out += [f"  {a}.append({expr})" if m.array else f"  {a} = {expr}"]
            if m.array:
                out += ["  }"]
        for condition in predicates("swift", profile, r, "v"):
            out += ["  if " + condition + " { throw RosError(22) }"]
        out += ["  return v", " }", "}"]
    return "\n".join(out) + "\n"


def nim(profile, records, ordered):
    out = [
        "# Generated complete canonical values; no I/O or implicit capabilities.",
        "import roswasm",
        "import roswasm/wire",
    ]
    for r in ordered:
        s = r.symbol
        out += [f"type {s}* = object"]
        out += [f'  {member("nim",m.name)}*: {type_name("nim",r,m,records)}' for m in r.members]
        out += [
            f"const {s}MaximumWireBytes* = {r.maximum}",
            f"const {s}CodecIdentity* = " + json.dumps(r.codec_identity),
            f"const {s}NativeType* = " + json.dumps(r.name),
            f"const {s}NativeIdentity* = " + json.dumps(r.identity or ""),
        ]
        for c in r.constants:
            out += [
                f'const {s}_{c["name"]}*: {TYPES["nim"][SCALARS.index(c["type"])]} = {literal("nim",c["type"],c["value"])}'
            ]
        out += [f"proc init{s}*(): {s} ="]
        out += [f'  result.{member("nim",m.name)} = {initial("nim",r,m,records)}' for m in r.members] or ["  discard"]
        out += [f"proc writeFields*(value: {s}; w: var Writer) ="]
        if not r.members:
            out += ["  discard"]
        for condition in predicates("nim", profile, r, "value"):
            out += [f"  if {condition}: fail(22)"]
        for m in r.members:
            a = "value." + member("nim", m.name)
            indent = "  "
            if m.array:
                if m.array == "sequence":
                    out += [f"  if {a}.len > {m.count}: fail(22)", f"  putInteger(w,uint32({a}.len))"]
                out += [f"  for e in {a}:"]
                a = "e"
                indent = "    "
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        indent + f"if {a}.len > {m.string_bound}: fail(22)",
                        indent + f"putInteger(w,uint32({a}.len)); put(w,{a})",
                    ]
                else:
                    out += [indent + f"putString(w,{a},{m.string_bound})"]
            elif m.type in SCALARS:
                method = {"bool": "putBool", "float32": "putFloat32", "float64": "putFloat64"}.get(m.type, "putInteger")
                out += [indent + f"{method}(w,{a})"]
            else:
                out += [indent + f"writeFields({a},w)"]
        out += [f"proc read{s}*(r: var Reader): {s} =", f"  result = init{s}()"]
        for index, m in enumerate(r.members):
            a = "result." + member("nim", m.name)
            indent = "  "
            if m.array:
                n = f"count{index}"
                if m.array == "sequence":
                    out += [
                        f"  let raw{n} = getInteger(r,uint32)",
                        f"  if raw{n} > {m.count}: fail(22)",
                        f"  let {n} = int(raw{n})",
                    ]
                else:
                    out += [f"  let {n} = {m.count}"]
                if m.array == "sequence":
                    out += [f'  {a} = newSeq[{element("nim",r,m,records)}]({n})']
                out += [f"  for i in 0..<{n}:"]
                a += "[i]"
                indent = "    "
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    n = f"size{index}"
                    out += [
                        indent + f"let raw{n}=getInteger(r,uint32)",
                        indent + f"if raw{n}>{m.string_bound}: fail(22)",
                        indent + f"let {n}=int(raw{n})",
                    ]
                    expr = f"take(r,{n})"
                else:
                    expr = f"getString(r,{m.string_bound})"
            elif m.type in SCALARS:
                expr = {"bool": "getBool(r)", "float32": "getFloat32(r)", "float64": "getFloat64(r)"}.get(
                    m.type, "getInteger(r," + element("nim", r, m, records) + ")"
                )
            else:
                expr = "read" + element("nim", r, m, records) + "(r)"
            out += [indent + a + " = " + expr]
        for condition in predicates("nim", profile, r, "result"):
            out += [f"  if {condition}: fail(22)"]
        out += [
            f"proc encode*(value: {s}): seq[byte] =",
            f"  var w = initWriter({r.maximum})",
            "  writeFields(value,w)",
            "  w.bytes",
            f"proc decode{s}*(b: seq[byte]): {s} =",
            f"  var r = initReader(b,{r.maximum})",
            f"  result = read{s}(r)",
            "  finish(r)",
        ]
    return "\n".join(out) + "\n"


def haskell(profile, records, ordered):
    out = [
        "-- Generated complete canonical values; all field selectors are record-qualified.",
        "module RosWasm.Records where",
        "import Data.Int",
        "import Data.Word",
        "import qualified Data.ByteString as B",
        "import qualified Data.Text as T",
        "import GHC.Float",
        "import Control.Monad (replicateM)",
        "import qualified RosWasm.Wire as W",
        "import RosWasm.Typed (Canonical(..))",
    ]
    for r in ordered:
        s = r.symbol

        def field(m):
            return s[:1].lower() + s[1:] + "_" + m.name

        if r.members:
            out += ["data " + s + " = " + s]
            for index, m in enumerate(r.members):
                out += ["  " + ("{" if index == 0 else ",")]
                out += record_member("haskell", r, m, "    ")
                out += ["    " + field(m) + " :: " + type_name("haskell", r, m, records)]
            out += ["  } deriving (Eq, Show)"]
        else:
            out += ["data " + s + " = " + s + " deriving (Eq, Show)"]
        out += [
            f"default{s} :: {s}",
            f"default{s} = " + s + " " + " ".join("(" + initial("haskell", r, m, records) + ")" for m in r.members),
            f"{s[:1].lower()+s[1:]}CodecIdentity :: String",
            f"{s[:1].lower()+s[1:]}CodecIdentity = " + json.dumps(r.codec_identity),
        ]
        for c in r.constants:
            name = s[:1].lower() + s[1:] + "_" + c["name"]
            out += [
                name + " :: " + TYPES["haskell"][SCALARS.index(c["type"])],
                name + " = " + literal("haskell", c["type"], c["value"]),
            ]
        out += [f"encode{s} :: {s} -> Either Word32 B.ByteString", f"encode{s} value = do"]
        rule = profile.standard_semantics(r)
        if rule.startswith("normalized-"):
            name = "nanosec" if r.version == 2 else "nsec"
            a = field(next(m for m in r.members if m.name == name)) + " value"
            condition = f"({a}) >= 1000000000" + (f" || ({a}) < 0" if rule == "normalized-duration" else "")
            out += [f"  if {condition} then Left 22 else Right ()"]
        if rule == "joint-state-optional-equal-length-arrays":
            sizes = [
                "length (" + field(next(m for m in r.members if m.name == n)) + " value)"
                for n in ("name", "position", "velocity", "effort")
            ]
            out += [
                "  if "
                + " || ".join(f"({a} /= 0 && {b} /= 0 && {a} /= {b})" for a, b in itertools.combinations(sizes, 2))
                + " then Left 22 else Right ()"
            ]
        chunks = []

        def enc(m, a):
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    return (
                        f"(\\b -> do prefix <- W.encodeCount {m.string_bound} (B.length b); pure (prefix <> b)) ({a})"
                    )
                return f"W.encodeText {m.string_bound} True ({a})"
            if m.type == "bool":
                return "W.encodeBool (" + a + ")"
            if m.type in ("float32", "float64"):
                return "W.encode" + m.type.title() + " (" + a + ")"
            if m.type in SCALARS:
                return (
                    "W.encode"
                    + ("Signed" if m.type.startswith("int") else "Unsigned")
                    + f" {WIDTH[m.type]} (fromIntegral ({a}))"
                )
            return "encode" + element("haskell", r, m, records) + " (" + a + ")"

        for index, m in enumerate(r.members):
            a = field(m) + " value"
            b = f"b{index}"
            chunks += [b]
            if m.array:
                out += [f'  if length ({a}) {"/=" if m.array=="array" else ">"} {m.count} then Left 22 else Right ()']
                if m.array == "sequence":
                    pre = f"prefix{index}"
                    out += [f"  {pre} <- W.encodeCount {m.count} (length ({a}))"]
                    chunks.insert(len(chunks) - 1, pre)
                out += [f"  {b} <- B.concat <$> mapM (\\e -> " + enc(m, "e") + f") ({a})"]
            else:
                out += [f"  {b} <- " + enc(m, a)]
        out += [f"  W.bounded {r.maximum} [" + ", ".join(chunks) + "]", f"read{s} :: W.Decoder {s}", f"read{s} = do"]
        args = []

        def dec(m):
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    return f"(W.count {m.string_bound} >>= W.bytes)"
                return f"W.text {m.string_bound} True"
            if m.type == "bool":
                return "W.boolean"
            if m.type.startswith("float"):
                return "W." + m.type
            if m.type in SCALARS:
                return (
                    "fromIntegral <$> W."
                    + ("signed" if m.type.startswith("int") else "unsigned")
                    + " "
                    + str(WIDTH[m.type])
                )
            return "read" + element("haskell", r, m, records)

        for index, m in enumerate(r.members):
            a = f"a{index}"
            args += [a]
            if m.array == "sequence":
                out += [f"  count{index} <- W.count {m.count}", f"  {a} <- replicateM count{index} (" + dec(m) + ")"]
            elif m.array == "array":
                out += [f"  {a} <- replicateM {m.count} (" + dec(m) + ")"]
            else:
                out += [f"  {a} <- " + dec(m)]
        out += [
            "  let value = " + s + " " + " ".join(args),
            f"  case encode{s} value of",
            "    Left c -> W.failure c",
            "    Right _ -> pure value",
            f"decode{s} :: B.ByteString -> Either Word32 {s}",
            f"decode{s} = W.runDecoder {r.maximum} read{s}",
            f"instance Canonical {s} where",
            f"  maximumBytes _ = {r.maximum}",
            f"  encodeValue = encode{s}",
            f"  readValue = read{s}",
        ]
    return "\n".join(out) + "\n"


def products(parent, profile, records, ordered, interfaces):
    """Return isolated per-language sources and immutable full-field facts."""
    out = {
        "swift/Records.swift": swift(profile, records, ordered),
        "nim/records.nim": nim(profile, records, ordered),
        "haskell/RosWasm/Records.hs": haskell(profile, records, ordered),
    }
    control = all(r.profile == profile.CONTROL_PROFILE for r in ordered)
    out["rust/bounded_records.rs"] = (profile.emit_control_rust if control else profile.emit_rust)(
        parent, records, ordered
    )
    out["rust/bounded_records.rs"] = (
        out["rust/bounded_records.rs"]
        .replace(
            "extern crate alloc;",
            "extern crate alloc;\nextern crate core;\nextern crate roswasm;\nuse self::core::convert::TryInto;",
        )
        .replace("use alloc::", "use self::alloc::")
        .replace("use roswasm::", "use self::roswasm::")
    )
    go = (profile.emit_control_go if control else profile.emit_go)(parent, records, ordered)
    out["go/bounded_records.go"] = go
    out["tinygo/bounded_records.go"] = go
    for name, body in list(out.items()):
        out[name] = document_records(name.split("/")[0], body, ordered)
    out["native-records.json"] = (
        json.dumps(
            {
                "kind": "complete-native-language-records-v1",
                "status": "SOURCE_ONLY",
                "default_authority": [],
                "native_registry_emitted": False,
                "record_outputs": sorted({name.split("/")[0] for name in out}),
                "records": [
                    {
                        "type": r.name,
                        "ros_version": r.version,
                        "symbol": r.symbol,
                        "native_identity": r.identity,
                        "codec_identity": r.codec_identity,
                        "minimum_wire_bytes": r.minimum,
                        "maximum_wire_bytes": r.maximum,
                        "constants": r.constants,
                        "members": [dict(vars(m)) for m in r.members],
                        "member_map": {
                            "rust": {
                                m.name: (
                                    profile.control_rust_member(m.name) if control else profile.rust_member_name(m.name)
                                )
                                for m in r.members
                            },
                            "go": {m.name: m.name[:1].upper() + m.name[1:] for m in r.members},
                            "tinygo": {m.name: m.name[:1].upper() + m.name[1:] for m in r.members},
                            "haskell": {m.name: r.symbol[:1].lower() + r.symbol[1:] + "_" + m.name for m in r.members},
                            **{
                                lang: {m.name: member(lang, m.name) for m in r.members}
                                for lang in ("swift", "nim", "d", "odin", "zig")
                            },
                        },
                    }
                    for r in ordered
                ],
                "interfaces": [
                    {
                        "type": i.name,
                        "ros_version": i.version,
                        "kind": i.kind,
                        "native_identity": i.identity,
                        "codec_identity": i.codec_identity,
                        "components": {k: v.symbol for k, v in i.components.items()},
                    }
                    for i in interfaces
                ],
            },
            indent=2,
        )
        + "\n"
    )
    return out


def document_records(language, source, ordered):
    """@brief Attach IR-specific documentation to the closed generated grammar.

    @details Only complete declaration-line prefixes emitted by the reviewed
    record templates are matched. No program token, statement, semicolon or
    body is rewritten. A record context is selected by its exact type spelling;
    existing field docs in structured Haskell declarations are retained.
    @param language One of the nine native record-output language identifiers.
    @param source Complete trusted emitter output, borrowed as immutable text.
    @param ordered Original admitted complete Record values in emission order.
    @return Fresh source containing declarations with their semantic comments.
    @see documentation.record_type; documentation.record_codec
    """
    records_by_start = {}
    for record in ordered:
        symbol = record.symbol
        prefix = {
            "swift": "public struct ",
            "nim": "type ",
            "d": "struct ",
            "odin": "",
            "haskell": "data ",
            "zig": "pub const ",
            "rust": "pub struct ",
            "go": "type ",
            "tinygo": "type ",
        }[language]
        records_by_start[prefix + symbol] = record
    output = []
    current = None
    for line in source.splitlines():
        stripped = line.lstrip()
        indent = line[: len(line) - len(stripped)]
        selected = next(
            (
                record
                for start, record in records_by_start.items()
                if stripped.startswith(start + ("*" if language == "nim" else " "))
                or language == "zig"
                and stripped.startswith(start + "=struct")
            ),
            None,
        )
        if selected is not None:
            current = selected
            output += record_type(language, current, indent)
        elif current is not None:
            symbol = current.symbol
            member_match = None
            for member_ir in current.members:
                spelling = (
                    member("swift", member_ir.name)
                    if language == "swift"
                    else (
                        member("nim", member_ir.name) + "*"
                        if language == "nim"
                        else (
                            member_ir.name[:1].upper() + member_ir.name[1:]
                            if language in ("go", "tinygo")
                            else (
                                ("r#" + member_ir.name if member_ir.name == "fn" else member_ir.name)
                                if language == "rust"
                                else member(language, member_ir.name)
                            )
                        )
                    )
                )
                prefix = "public var " if language == "swift" else "pub " if language == "rust" else ""
                if stripped.startswith(prefix + spelling + (":" if language not in ("go", "tinygo") else " ")):
                    member_match = member_ir
                    break
                if language == "d" and (" " + spelling + "=") in stripped and stripped.endswith(";"):
                    member_match = member_ir
                    break
            if member_match is not None and language != "haskell":
                output += record_member(language, current, member_match, indent)
            else:
                metadata = None
                for key, spellings in {
                    "maximum": (
                        "maximumWireBytes",
                        "maximum_wire_bytes",
                        "MAX_WIRE_BYTES",
                        symbol + "MaximumWireBytes",
                        symbol + "_Maximum_Wire_Bytes",
                        symbol + "MaxWireBytes",
                    ),
                    "codec": (
                        "codecIdentity",
                        "codec_identity",
                        "CODEC_IDENTITY",
                        symbol + "CodecIdentity",
                        symbol + "_Codec_Identity",
                        symbol[:1].lower() + symbol[1:] + "CodecIdentity",
                    ),
                    "native_type": ("nativeType", "native_type", symbol + "NativeType", symbol + "_Native_Type"),
                    "native_identity": (
                        "nativeIdentity",
                        "native_identity",
                        symbol + "NativeIdentity",
                        symbol + "_Native_Identity",
                    ),
                }.items():
                    if any(
                        token in stripped.split("=")[0].replace(":", " ").replace("*", " ").split()
                        for token in spellings
                    ):
                        metadata = key
                        break
                if any(
                    token in stripped.split("=")[0].replace(":", " ").split()
                    for token in ("CARTESIAN_WIRE_BYTES", symbol + "CartesianMaxWireBytes")
                ):
                    metadata = "cartesian"
                if any(
                    token in stripped.split("=")[0].replace(":", " ").split()
                    for token in ("AGGREGATE_WIRE_BYTES", symbol + "AggregateWireBytes")
                ):
                    metadata = "aggregate"
                if metadata is not None:
                    output += record_metadata(language, current, metadata, indent=indent)
                else:
                    operation = None
                    if stripped.startswith(
                        (
                            "public init(",
                            "proc init" + symbol + "*(",
                            "init_" + symbol + " :: proc(",
                            "default" + symbol + " ::",
                            "func Default" + symbol + "(",
                            "impl Default for " + symbol + " ",
                        )
                    ):
                        operation = "init"
                    elif stripped.startswith(("pub fn wire_size(", "func(value " + symbol + ") WireSize(")):
                        operation = "measure"
                    elif stripped.startswith(
                        (
                            "public func write(",
                            "proc writeFields*(",
                            "bool writeFields(",
                            "pub fn writeFields(",
                            "write_" + symbol + " :: proc(",
                        )
                    ):
                        operation = "write"
                    elif stripped.startswith(
                        (
                            "public static func read(",
                            "proc read" + symbol + "*(",
                            "static bool readFields(",
                            "pub fn readFields(",
                            "read_" + symbol + " :: proc(",
                            "read" + symbol + " ::",
                        )
                    ):
                        operation = "read"
                    elif stripped.startswith(
                        (
                            "public func encode(",
                            "proc encode*(",
                            "uint encode(",
                            "pub fn encode(",
                            "encode_" + symbol + " :: proc(",
                            "encode" + symbol + " ::",
                            "pub fn encode_into(",
                            "fn encode(",
                            "func(value " + symbol + ") Encode(",
                        )
                    ):
                        operation = "encode"
                    elif stripped.startswith(
                        (
                            "public static func decode(",
                            "proc decode" + symbol + "*(",
                            "static uint decode(",
                            "pub fn decode(",
                            "decode_" + symbol + " :: proc(",
                            "decode" + symbol + " ::",
                            "fn decode(",
                            "func Decode" + symbol + "(",
                        )
                    ):
                        operation = "decode"
                    if operation is not None:
                        contracts = {
                            "value": (
                                "in",
                                "Complete selected record; retain all field storage unchanged during encoding.",
                            ),
                            "self": (
                                "in",
                                "Complete selected record borrowed unchanged during the synchronous codec call.",
                            ),
                            "v": ("in", "Non-nil pointer to the complete selected record; borrow until return."),
                            "w": (
                                "in,out",
                                "Exclusive mutable canonical writer; a refused nested write may leave a consumed prefix.",
                            ),
                            "r": (
                                "in,out",
                                "Exclusive mutable canonical reader; nested decoding advances only this record prefix.",
                            ),
                            "output": (
                                "out",
                                "Caller-owned writable output bytes; keep alive and exclusive until return.",
                            ),
                            "out": (
                                "out",
                                "Caller-owned writable output bytes; success returns only the initialized prefix extent.",
                            ),
                            "b": (
                                "in",
                                "Complete canonical input bytes; no truncation or trailing bytes are accepted.",
                            ),
                            "bytes": (
                                "in",
                                "Complete canonical input bytes; keep unchanged while decoded borrowed fields are live.",
                            ),
                            "allocator": (
                                "in",
                                "Caller-owned allocator; retain its allocated sequence/nested regions for the decoded value.",
                            ),
                            "arena": (
                                "in,out",
                                "Dedicated caller arena region for decoded sequence/nested storage; discard after partial failure.",
                            ),
                            "length": (
                                "out",
                                "Initialized output extent in bytes, meaningful only on successful status 0.",
                            ),
                        }
                        parameter_names = {
                            "swift": {"write": ("w",), "read": ("r",)},
                            "nim": {"write": ("value", "w"), "read": ("r",), "encode": ("value",), "decode": ("b",)},
                            "d": {
                                "write": ("w",),
                                "read": ("r", "arena", "value"),
                                "encode": ("output", "length"),
                                "decode": ("bytes", "arena", "value"),
                            },
                            "odin": {
                                "write": ("v", "w"),
                                "read": ("r", "allocator"),
                                "encode": ("v", "output"),
                                "decode": ("bytes", "allocator"),
                            },
                            "zig": {
                                "write": ("self", "w"),
                                "read": ("r", "allocator"),
                                "encode": ("self", "output"),
                                "decode": ("bytes", "allocator"),
                            },
                            "rust": {"measure": ("self",), "encode": ("self",), "decode": ("bytes",)},
                            "go": {"measure": ("value",), "encode": ("value",), "decode": ("b",)},
                            "tinygo": {"measure": ("value",), "encode": ("value",), "decode": ("b",)},
                            "haskell": {"encode": ("value",)},
                        }[language].get(operation, ())
                        if language == "rust" and stripped.startswith("pub fn encode_into("):
                            parameter_names += ("out",)
                        parameters = []
                        for name in parameter_names:
                            direction, contract = contracts[name]
                            if language == "d" and name == "value":
                                direction, contract = "out", "Decoded record; inspect only after a successful return."
                            parameters.append((direction, name, contract))
                        output += record_codec(language, current, operation, parameters, indent)
                    else:
                        for constant in current.constants:
                            spelling = (
                                constant["name"]
                                if language == "rust"
                                else (
                                    member(language, constant["name"])
                                    if language in ("swift", "d", "zig")
                                    else (
                                        symbol + "_" + constant["name"]
                                        if language in ("nim", "odin", "go", "tinygo")
                                        else symbol[:1].lower() + symbol[1:] + "_" + constant["name"]
                                    )
                                )
                            )
                            if spelling in stripped.split("=")[0].replace(":", " ").replace("*", " ").split():
                                output += record_metadata(language, current, "constant", constant, indent)
                                break
        output.append(line)
    result = "\n".join(output) + "\n"
    return attach_nim(result) if language == "nim" else result
