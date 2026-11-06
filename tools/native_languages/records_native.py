"""D, Odin and Zig complete typed codecs over the admitted bounded IR."""

import json
from records import SCALARS, WIDTH, TYPES, member, element, type_name, initial, literal, predicates, document_records


def d(profile, records, ordered):
    out = [
        "// Generated complete bounded values; BetterC, caller buffers, no authority.",
        "module roswasm.records;",
        "import roswasm.wire;",
        "@nogc nothrow:",
    ]
    for r in ordered:
        s = r.symbol
        out += [
            f"struct {s} {{",
            f" enum size_t maximumWireBytes={r.maximum};",
            " enum codecIdentity=" + json.dumps(r.codec_identity) + ";",
            " enum nativeType=" + json.dumps(r.name) + ";",
            " enum nativeIdentity=" + json.dumps(r.identity or "") + ";",
        ]
        for c in r.constants:
            out += [
                f' enum {TYPES["d"][SCALARS.index(c["type"])]} {member("d",c["name"])}={literal("d",c["type"],c["value"])};'
            ]
        for m in r.members:
            out += [f' {type_name("d",r,m,records)} {member("d",m.name)}={initial("d",r,m,records)};']
        out += [" bool writeFields(ref Writer w) const {"]
        for condition in predicates("d", profile, r, "this"):
            out += [f"  if({condition}) {{ w.code=22; return false; }}"]
        for m in r.members:
            a = "this." + member("d", m.name)
            if m.array:
                if m.array == "sequence":
                    out += [
                        f"  if({a}.length>{m.count}) {{ w.code=22; return false; }}",
                        f"  if(!w.integer(cast(uint){a}.length)) return false;",
                    ]
                out += [f"  foreach(ref e; {a}) {{"]
                a = "e"
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        f"  if({a}.length>{m.string_bound}) {{ w.code=22; return false; }}",
                        f"  if(!w.integer(cast(uint){a}.length) || !w.put({a})) return false;",
                    ]
                else:
                    out += [f"  if(!w.text({a},{m.string_bound})) return false;"]
            elif m.type in SCALARS:
                method = {"bool": "boolean", "float32": "float32", "float64": "float64"}.get(m.type, "integer")
                out += [f"  if(!w.{method}({a})) return false;"]
            else:
                out += [f"  if(!{a}.writeFields(w)) return false;"]
            if m.array:
                out += ["  }"]
        out += [
            "  return true;",
            " }",
            f" static bool readFields(ref Reader r, ref Arena arena, out {s} value) {{",
            f"  value={s}.init;",
        ]
        for index, m in enumerate(r.members):
            a = "value." + member("d", m.name)
            if m.array:
                if m.array == "sequence":
                    n = f"count{index}"
                    out += [
                        f"  uint {n}; if(!r.integer({n})) return false;",
                        f"  if({n}>{m.count}) {{ r.code=22; return false; }}",
                        f'  {a}=arena.allocate!({element("d",r,m,records)})({n});',
                        f"  if({a}.length!={n}) {{ r.code=90; return false; }}",
                    ]
                out += [f"  foreach(ref e; {a}) {{"]
                a = "e"
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        f"  uint size{index}; if(!r.integer(size{index})) return false;",
                        f"  if(size{index}>{m.string_bound}) {{ r.code=22; return false; }}",
                        f"  if(!r.take(size{index},{a})) return false;",
                    ]
                else:
                    out += [f"  if(!r.text({a},{m.string_bound})) return false;"]
            elif m.type in SCALARS:
                method = {"bool": "boolean", "float32": "float32", "float64": "float64"}.get(m.type, "integer")
                out += [f"  if(!r.{method}({a})) return false;"]
            else:
                out += [f'  if(!{element("d",r,m,records)}.readFields(r,arena,{a})) return false;']
            if m.array:
                out += ["  }"]
        for condition in predicates("d", profile, r, "value"):
            out += [f"  if({condition}) {{ r.code=22; return false; }}"]
        out += [
            "  return true;",
            " }",
            " uint encode(ubyte[] output, out size_t length) const {",
            "  Writer measure; measure.measuring=true; measure.limit=maximumWireBytes;",
            "  if(!writeFields(measure)) return measure.code;",
            "  if(output.length<measure.position) return 90;",
            "  Writer writer; writer.storage=output; writer.limit=maximumWireBytes;",
            "  if(!writeFields(writer)) return writer.code; length=writer.position; return 0;",
            " }",
            f" static uint decode(const(ubyte)[] bytes, ref Arena arena, out {s} value) {{",
            f"  if(bytes.length<{r.minimum} || bytes.length>{r.maximum}) return 22;",
            "  Reader reader; reader.storage=bytes;",
            "  if(!readFields(reader,arena,value) || !reader.finish()) return reader.code;",
            "  return 0;",
            " }",
            "}",
        ]
    return document_records("d", "\n".join(out) + "\n", ordered)


def zig(profile, records, ordered):
    out = [
        "//! Generated complete bounded values; all allocation is explicit.",
        'const std=@import("std");',
        'const wire=@import("roswire");',
    ]
    for r in ordered:
        s = r.symbol
        out += [
            f"pub const {s}=struct {{",
            f" pub const maximum_wire_bytes: usize={r.maximum};",
            " pub const codec_identity=" + json.dumps(r.codec_identity) + ";",
            " pub const native_type=" + json.dumps(r.name) + ";",
            " pub const native_identity: ?[]const u8="
            + ("null" if r.identity is None else json.dumps(r.identity))
            + ";",
        ]
        for c in r.constants:
            out += [
                f' pub const {member("zig",c["name"])}: {TYPES["zig"][SCALARS.index(c["type"])]}={literal("zig",c["type"],c["value"])};'
            ]
        for m in r.members:
            out += [f' {member("zig",m.name)}: {type_name("zig",r,m,records)}={initial("zig",r,m,records)},']
        out += [" pub fn writeFields(self: *const @This(), w: *wire.Writer) wire.Error!void {"]
        if not r.members:
            out += ["  _=self; _=w;"]
        for condition in predicates("zig", profile, r, "self"):
            out += [f"  if({condition}) return error.Invalid;"]
        for m in r.members:
            a = "self." + member("zig", m.name)
            if m.array:
                if m.array == "sequence":
                    out += [
                        f"  if({a}.len>{m.count}) return error.Invalid;",
                        f"  try w.integer(@as(u32,@intCast({a}.len)));",
                    ]
                out += [f"  for({a}) |e| {{"]
                a = "e"
            if m.type == "string":
                out += [f'  try w.string({a},{m.string_bound},{str(m.string_encoding=="raw_bytes").lower()});']
            elif m.type in SCALARS:
                method = {"bool": "boolean", "float32": "float32", "float64": "float64"}.get(m.type, "integer")
                out += [f"  try w.{method}({a});"]
            else:
                out += [f"  try {a}.writeFields(w);"]
            if m.array:
                out += ["  }"]
        out += [
            " }",
            " pub fn readFields(r: *wire.Reader, allocator: std.mem.Allocator) wire.Error!@This() {",
            "  " + ("var" if r.members else "const") + " value: @This()=.{};",
        ]
        if not r.members:
            out += ["  _=r; _=allocator;"]
        elif not any(m.array == "sequence" or m.type not in SCALARS + ("string",) for m in r.members):
            out += ["  _=allocator;"]
        for index, m in enumerate(r.members):
            a = "value." + member("zig", m.name)
            if m.array:
                if m.array == "sequence":
                    out += [
                        f"  const count{index}=try r.integer(u32); if(count{index}>{m.count}) return error.Invalid;",
                        f'  {a}=try allocator.alloc({element("zig",r,m,records)},count{index});',
                    ]
                out += [f"  for(&{a}) |*e| {{"] if m.array == "array" else [f"  for({a}) |*e| {{"]
                a = "e.*"
            if m.type == "string":
                expr = f'try r.string({m.string_bound},{str(m.string_encoding=="raw_bytes").lower()})'
            elif m.type in SCALARS:
                method = {"bool": "boolean()", "float32": "float32()", "float64": "float64()"}.get(
                    m.type, "integer(" + element("zig", r, m, records) + ")"
                )
                expr = "try r." + method
            else:
                expr = f'try {element("zig",r,m,records)}.readFields(r,allocator)'
            out += [f"  {a}={expr};"]
            if m.array:
                out += ["  }"]
        for condition in predicates("zig", profile, r, "value"):
            out += [f"  if({condition}) return error.Invalid;"]
        out += [
            "  return value;",
            " }",
            " pub fn encode(self: *const @This(), output: []u8) wire.Error![]const u8 {",
            "  var measure: wire.Writer=.{.bytes=&.{},.measuring=true,.limit=maximum_wire_bytes};",
            "  try self.writeFields(&measure); if(output.len<measure.position) return error.TooLarge;",
            "  var writer: wire.Writer=.{.bytes=output,.limit=maximum_wire_bytes};",
            "  try self.writeFields(&writer); return output[0..writer.position];",
            " }",
            " /// Arena allocator owns every decoded sequence. Strings borrow bytes.",
            " /// On refusal discard the whole arena region, including partial nested values.",
            " pub fn decode(bytes: []const u8, allocator: std.mem.Allocator) wire.Error!@This() {",
            f"  if(bytes.len<{r.minimum} or bytes.len>{r.maximum}) return error.Invalid;",
            "  var reader: wire.Reader=.{.bytes=bytes}; const value=try readFields(&reader,allocator);",
            "  try reader.finish(); return value;",
            " }",
            "};",
        ]
    return document_records("zig", "\n".join(out) + "\n", ordered)


def odin(profile, records, ordered):
    out = ["package roswasm", "// Generated complete bounded values; no I/O or authority.", 'import "base:runtime"']
    for r in ordered:
        s = r.symbol
        out += (
            [f"{s} :: struct {{"]
            + [f' {member("odin",m.name)}: {type_name("odin",r,m,records)},' for m in r.members]
            + [
                "}",
                f"{s}_Maximum_Wire_Bytes :: {r.maximum}",
                f"{s}_Codec_Identity :: " + json.dumps(r.codec_identity),
                f"{s}_Native_Type :: " + json.dumps(r.name),
                f"{s}_Native_Identity :: " + json.dumps(r.identity or ""),
            ]
        )
        for c in r.constants:
            out += [
                f'{s}_{c["name"]} :: {TYPES["odin"][SCALARS.index(c["type"])]}({literal("odin",c["type"],c["value"])})'
            ]
        out += [f"init_{s} :: proc() -> {s} {{", f" v: {s}"]
        for m in r.members:
            out += [f' v.{member("odin",m.name)} = {initial("odin",r,m,records)}']
        out += [" return v", "}", f"write_{s} :: proc(v: ^{s}, w: ^Writer) -> bool {{"]
        for condition in predicates("odin", profile, r, "v"):
            out += [f" if {condition} {{ w.code=22; return false }}"]
        for m in r.members:
            a = "v." + member("odin", m.name)
            if m.array:
                if m.array == "sequence":
                    out += [
                        f" if len({a})>{m.count} {{ w.code=22; return false }}",
                        f" if !put_integer(w,u64(len({a})),4) {{ return false }}",
                    ]
                out += [f" for e in {a} {{"]
                a = "e"
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        f" if len({a})>{m.string_bound} {{ w.code=22; return false }}",
                        f" if !put_integer(w,u64(len({a})),4) || !put_bytes(w,{a}) {{ return false }}",
                    ]
                else:
                    out += [f" if !put_string(w,{a},{m.string_bound}) {{ return false }}"]
            elif m.type in SCALARS:
                method = {"bool": "put_bool", "float32": "put_float32", "float64": "put_float64"}.get(
                    m.type, "put_integer"
                )
                expr = a if m.type in ("bool", "float32", "float64") else "u64(" + a + ")"
                out += [
                    f" if !{method}(w,{expr}"
                    + ("" if m.type in ("bool", "float32", "float64") else "," + str(WIDTH[m.type]))
                    + ") { return false }"
                ]
            else:
                if m.array:
                    out += [f" item:={a}"]
                    a = "item"
                out += [f' if !write_{element("odin",r,m,records)}(&{a},w) {{ return false }}']
            if m.array:
                out += [" }"]
        out += [
            " return true",
            "}",
            f"read_{s} :: proc(r: ^Reader, allocator: runtime.Allocator) -> ({s},bool) {{",
            f" v:=init_{s}()",
        ]
        for index, m in enumerate(r.members):
            a = "v." + member("odin", m.name)
            if m.array:
                if m.array == "sequence":
                    out += [
                        " {",
                        f" n,ok:=get_integer(r,4); if !ok {{ return v,false }}",
                        f" if n>{m.count} {{ r.code=22; return v,false }}",
                        f' {a}=make([]{element("odin",r,m,records)},int(n),allocator)',
                        " }",
                    ]
                out += [f" for &e in {a} {{"]
                a = "e"
            out += [" {"]
            if m.type == "string":
                if m.string_encoding == "raw_bytes":
                    out += [
                        f" n,ok:=get_integer(r,4); if !ok {{ return v,false }}",
                        f" if n>{m.string_bound} {{ r.code=22; return v,false }}",
                        f" b,good:=take_bytes(r,int(n)); if !good {{ return v,false }}",
                        f" {a}=b",
                    ]
                else:
                    out += [f" b,ok:=get_string(r,{m.string_bound}); if !ok {{ return v,false }}", f" {a}=b"]
            elif m.type in SCALARS:
                method = {"bool": "get_bool", "float32": "get_float32", "float64": "get_float64"}.get(
                    m.type, "get_integer"
                )
                out += [
                    " b,ok:="
                    + method
                    + "(r"
                    + ("" if m.type in ("bool", "float32", "float64") else "," + str(WIDTH[m.type]))
                    + "); if !ok { return v,false }",
                    f' {a}={element("odin",r,m,records)}(b)',
                ]
            else:
                out += [
                    f' b,ok:=read_{element("odin",r,m,records)}(r,allocator); if !ok {{ return v,false }}',
                    f" {a}=b",
                ]
            out += [" }"]
            if m.array:
                out += [" }"]
        for condition in predicates("odin", profile, r, "v"):
            out += [f" if {condition} {{ r.code=22; return v,false }}"]
        out += [
            " return v,true",
            "}",
            f"encode_{s} :: proc(v: ^{s}, output: []u8) -> ([]u8,u32) {{",
            f" measure:=Writer{{measuring=true,limit={r.maximum}}}",
            f" if !write_{s}(v,&measure) {{ return nil,measure.code }}",
            " if len(output)<measure.position { return nil,90 }",
            f" writer:=Writer{{storage=output,limit={r.maximum}}}",
            f" if !write_{s}(v,&writer) {{ return nil,writer.code }}",
            " return output[:writer.position],0",
            "}",
            f"decode_{s} :: proc(bytes: []u8, allocator: runtime.Allocator) -> ({s},u32) {{",
            f" if len(bytes)<{r.minimum} || len(bytes)>{r.maximum} {{ return {s}{{}},22 }}",
            " reader:=Reader{storage=bytes}",
            f" value,ok:=read_{s}(&reader,allocator)",
            f" if !ok || !reader_finish(&reader) {{ return {s}{{}},reader.code }}",
            " return value,0",
            "}",
        ]
    return document_records("odin", "\n".join(out) + "\n", ordered)
