"""Typed per-interface entry points over the actual shared language SDKs.

Native identities and alias configuration remain independently Host-checked.
Original node-control interfaces require owned RMW raw12, so this legacy bounded
facade emitter refuses that route rather than publishing a misleading service.
"""

import json
from documentation import interface_function, attach_nim


def _document(language, source, interfaces):
    """Attach exact-interface contracts to the closed generated declarations."""
    result = []
    current = None
    operations = ("publish", "poll", "call", "incoming", "respond", "send", "feedback", "result")
    for line in source.splitlines():
        stripped = line.lstrip()
        indent = line[: len(line) - len(stripped)]
        selected = None
        operation = None
        for interface in interfaces:
            symbol = interface.symbol
            if language == "swift" and stripped.startswith("public enum " + symbol + "Interface "):
                selected, operation = interface, "namespace"
                current = interface
                break
            for candidate in operations:
                public = (
                    candidate.title() + symbol
                    if language in ("go", "tinygo")
                    else candidate + "_" + symbol if language in ("rust", "odin", "zig") else candidate + symbol
                )
                if language == "haskell":
                    matched = stripped.startswith(public + " ::")
                elif language == "nim":
                    matched = stripped.startswith("proc " + public + "*(")
                elif language == "go" or language == "tinygo":
                    matched = stripped.startswith("func " + public + "(")
                elif language == "rust":
                    matched = stripped.startswith("pub fn " + public + "(")
                elif language == "zig":
                    matched = stripped.startswith("pub fn " + public + "(")
                elif language == "odin":
                    matched = stripped.startswith(public + " :: proc(")
                elif language == "d":
                    matched = stripped.startswith("uint " + public + "(")
                else:
                    matched = current is interface and stripped.startswith("public static func " + candidate + "(")
                if matched:
                    selected, operation = interface, candidate
                    break
            if selected is not None:
                break
        if selected is not None:
            names = {
                "rust": {
                    "publish": ("owner", "value"),
                    "poll": ("owner", "output"),
                    "call": ("owner", "value", "output"),
                    "send": ("o", "q"),
                },
                "swift": {
                    "publish": ("value", "owner"),
                    "poll": ("owner",),
                    "call": ("value", "owner"),
                    "incoming": ("owner",),
                    "respond": ("id", "value", "owner"),
                    "send": ("value", "owner"),
                    "feedback": ("id", "owner"),
                    "result": ("id", "owner"),
                },
                "nim": {
                    "publish": ("o", "value"),
                    "poll": ("o",),
                    "call": ("o", "value"),
                    "send": ("o", "q"),
                    "feedback": ("o", "id"),
                    "result": ("o", "id"),
                },
                "d": {
                    "publish": ("owner", "value", "scratch"),
                    "poll": ("owner", "scratch", "arena", "value"),
                    "call": ("o", "q", "input", "output", "arena", "s"),
                    "send": ("o", "q", "scratch", "id"),
                },
                "odin": {
                    "publish": ("o", "v", "scratch"),
                    "poll": ("o", "scratch", "allocator"),
                    "call": ("o", "q", "input", "output", "allocator"),
                    "send": ("o", "q", "scratch"),
                },
                "zig": {
                    "publish": ("owner", "value", "scratch"),
                    "call": ("o", "q", "input", "output", "allocator"),
                    "send": ("o", "q", "scratch"),
                },
                "go": {
                    "publish": ("o", "v"),
                    "poll": ("o",),
                    "call": ("o", "q"),
                    "send": ("o", "q"),
                    "feedback": ("o", "id"),
                    "result": ("o", "id"),
                },
                "tinygo": {
                    "publish": ("o", "v"),
                    "poll": ("o", "scratch"),
                    "call": ("o", "q", "output"),
                    "send": ("o", "q", "output"),
                },
                # Point-free Haskell declarations have no source parameter names.
                "haskell": {},
            }[language].get(operation, ())
            parameters = []
            for name in names:
                if name in ("owner", "o"):
                    direction, contract = (
                        "in",
                        "Live separately granted exact-interface owner; borrow through synchronous return.",
                    )
                elif name in ("value", "v", "q"):
                    direction, contract = (
                        "in",
                        "Complete selected message/request/goal/reply value; keep all backing storage stable during encoding.",
                    )
                    if language == "d" and operation == "poll":
                        direction, contract = "out", "Complete decoded message; inspect only after successful status 0."
                elif name == "id":
                    direction, contract = (
                        "in",
                        "Exact nonzero u64 owned/delivered ID in this Instance/backend; never narrow or synthesize it.",
                    )
                    if language == "d" and operation == "send":
                        direction, contract = (
                            "out",
                            "Exact nonzero u64 admitted goal ID, meaningful only after successful status 0.",
                        )
                elif name == "allocator":
                    direction, contract = (
                        "in",
                        "Caller allocator owning decoded sequences/nested allocations; retain its region and the wire input.",
                    )
                elif name == "arena":
                    direction, contract = (
                        "in,out",
                        "Dedicated decode arena region; retain with returned values and discard after any partial refusal.",
                    )
                elif name == "s":
                    direction, contract = "out", "Complete decoded response; inspect only after successful status 0."
                else:
                    direction, contract = (
                        "out",
                        "Caller-owned writable canonical scratch/output bytes; retain through the call and while decoded views borrow them.",
                    )
                parameters.append((direction, name, contract))
            result += interface_function(language, selected, operation, parameters, indent)
        result.append(line)
    source = "\n".join(result) + "\n"
    return attach_nim(source) if language == "nim" else source


def products(profile, interfaces):
    active = [i for i in interfaces if i.profile != profile.CONTROL_PROFILE and i.registered]
    result = {}
    rust = [
        "//! Generated typed interfaces; every Owner/role must already be granted.",
        "extern crate alloc;",
        "use super::bounded_records::*;",
        "use roswasm::{Capability,Operation,Error,codes};",
        "use roswasm::typed::Canonical;",
    ]
    swift = ["// Generated typed interface entry points; no implicit resources.", "import RosWasm"]
    nim = [
        "# Generated typed interfaces; no implicit grants.",
        "import roswasm",
        "import roswasm/typed",
        "import records",
    ]
    d = [
        "module roswasm.interfaces;",
        "import roswasm;",
        "import roswasm.records;",
        "import roswasm.wire;",
        "import typed=roswasm.typed;",
        "@nogc nothrow:",
    ]
    hs = [
        "module RosWasm.Interfaces where",
        "import Data.Word",
        "import RosWasm",
        "import RosWasm.Records",
        "import qualified RosWasm.Typed as Typed",
    ]
    odin = [
        "package roswasm",
        "// Generated typed interfaces; explicit owner and caller buffers.",
        'import "base:runtime"',
    ]
    zig = [
        "//! Generated typed interfaces; explicit owner and storage.",
        'const std=@import("std");',
        'const records=@import("records");',
        'const client=@import("client");',
        'const node=@import("rosnode");',
    ]
    gos = {
        l: [
            "// Generated typed interfaces; separately granted exact native aliases.",
            "package customtypes",
            "import ros " + json.dumps("uwvm2.local/roswasmgo" if l == "go" else "uwvm2.local/roswasm"),
        ]
        for l in ("go", "tinygo")
    }
    for i in active:
        name = i.symbol
        lower = name[:1].lower() + name[1:]
        if i.kind == "message":
            r = i.components["message"]
            s = r.symbol
            rust += [
                f"pub fn publish_{name}(owner:&Capability,value:&{s})->Result<(),Error>{{owner.publish(&value.encode()?)}}",
                f"pub fn poll_{name}(owner:&Capability,output:&mut[u8])->Result<{s},Error>{{let n=owner.poll(output)?;{s}::decode(&output[..n])}}",
            ]
            swift += [
                f"public enum {name}Interface {{",
                f" public static func publish(_ value:{s},owner:Owner)throws{{try owner.publish(value)}}",
                f" public static func poll(owner:Owner)throws->{s}{{try owner.poll({s}.self)}}",
                "}",
            ]
            nim += [
                f"proc publish{name}*(o:Owner;value:{s}) = publishValue(o,value)",
                f"proc poll{name}*(o:Owner):{s} = decode{s}(poll(o,{r.maximum}))",
            ]
            d += [
                f"uint publish{name}(Owner owner,const ref {s} value,ubyte[] scratch){{return typed.publishValue(owner,value,scratch);}}",
                f"uint poll{name}(Owner owner,ubyte[] scratch,ref Arena arena,out {s} value){{auto r=owner.poll(scratch);if(r.code)return r.code;return {s}.decode(r.data,arena,value);}}",
            ]
            hs += [
                f"publish{name} :: Owner -> {s} -> IO (Either RosError ())",
                f"publish{name} = Typed.publishValue",
                f"poll{name} :: Owner -> IO (Either RosError {s})",
                f"poll{name} = Typed.pollValue",
            ]
            odin += [
                f"publish_{name} :: proc(o:Owner,v:^{s},scratch:[]u8)->u32{{b,c:=encode_{s}(v,scratch);if c!=0{{return c}};return publish(o,b)}}",
                f"poll_{name} :: proc(o:Owner,scratch:[]u8,allocator:runtime.Allocator)->({s},u32){{r:=poll(o,scratch);if r.code!=0{{return {s}{{}},r.code}};return decode_{s}(r.data,allocator)}}",
            ]
            zig += [
                f"pub fn publish_{name}(owner:client.Owner,value:*const records.{s},scratch:[]u8)!u32{{return node.publishValue(owner,value,scratch);}}"
            ]
            gos["go"] += [
                f"func Publish{name}(o *ros.Owner,v {s})error{{return ros.PublishValue(o,v)}}",
                f"func Poll{name}(o *ros.Owner)({s},error){{return ros.PollValue(o,{r.maximum},Decode{s})}}",
            ]
            gos["tinygo"] += [
                f"func Publish{name}(o *ros.Capability,v {s})error{{b,e:=v.Encode();if e!=nil{{return e}};return o.Publish(b)}}",
                f"func Poll{name}(o *ros.Capability,scratch []byte)({s},error){{n,e:=o.Poll(scratch);if e!=nil{{return {s}{{}},e}};return Decode{s}(scratch[:n])}}",
            ]
        elif i.kind == "service":
            q = i.components["request"].symbol
            s = i.components["response"].symbol
            maximum = i.components["response"].maximum
            rust += [
                f"pub fn call_{name}(owner:&Capability,value:&{q},output:&mut[u8])->Result<{s},Error>{{let n=owner.request(Operation::ServiceCall,&value.encode()?,output)?;{s}::decode(&output[..n])}}"
            ]
            swift += [
                f"public enum {name}Interface {{",
                f" public static func call(_ value:{q},owner:Owner)throws->{s}{{try owner.call(value,response:{s}.self)}}",
                f" public static func incoming(owner:Owner)throws->Incoming<{q}>{{try owner.incoming({q}.self)}}",
                f" public static func respond(_ id:UInt64,_ value:{s},owner:Owner)throws{{try owner.respond(id,value)}}",
                "}",
            ]
            nim += [f"proc call{name}*(o:Owner;value:{q}):{s} = callValue(o,value,{maximum},decode{s})"]
            d += [
                f"uint call{name}(Owner o,const ref {q} q,ubyte[] input,ubyte[] output,ref Arena arena,out {s} s){{return typed.callValue(o,q,input,output,arena,s);}}"
            ]
            hs += [
                f"call{name} :: Owner -> {q} -> IO (Either RosError {s})",
                f"call{name} = Typed.callValue",
                f"incoming{name} :: Owner -> IO (Either RosError (Typed.Incoming {q}))",
                f"incoming{name} = Typed.incoming",
                f"respond{name} :: Owner -> Word64 -> {s} -> IO (Either RosError ())",
                f"respond{name} = Typed.respondValue",
            ]
            odin += [
                f"call_{name} :: proc(o:Owner,q:^{q},input,output:[]u8,allocator:runtime.Allocator)->({s},u32){{b,c:=encode_{q}(q,input);if c!=0{{return {s}{{}},c}};r:=request(o,.service_call,b,output);if r.code!=0{{return {s}{{}},r.code}};return decode_{s}(r.data,allocator)}}"
            ]
            zig += [
                f"pub fn call_{name}(o:client.Owner,q:*const records.{q},input:[]u8,output:[]u8,allocator:std.mem.Allocator)node.TypedResult(records.{s}){{return node.callValue(records.{s},o,q,input,output,allocator);}}"
            ]
            gos["go"] += [
                f"func Call{name}(o *ros.Owner,q {q})({s},error){{return ros.CallValue(o,q,{maximum},Decode{s})}}"
            ]
            gos["tinygo"] += [
                f"func Call{name}(o *ros.Capability,q {q},output []byte)({s},error){{b,e:=q.Encode();if e!=nil{{return {s}{{}},e}};n,e:=o.Request(ros.OpServiceCall,b,output);if e!=nil{{return {s}{{}},e}};return Decode{s}(output[:n])}}"
            ]
        elif i.kind == "action":
            q = i.components["goal"].symbol
            f = i.components["feedback"].symbol
            s = i.components["result"].symbol
            fm = i.components["feedback"].maximum
            sm = i.components["result"].maximum
            rust += [
                f"pub fn send_{name}(o:&Capability,q:&{q})->Result<u64,Error>{{let mut b=[0u8;8];let n=o.request(Operation::ActionSendGoal,&q.encode()?,&mut b)?;if n!=8{{return Err(Error::new(codes::INVALID));}}let id=u64::from_le_bytes(b);if id==0{{return Err(Error::new(codes::INVALID));}}Ok(id)}}"
            ]
            swift += [
                f"public enum {name}Interface {{",
                f" public static func send(_ value:{q},owner:Owner)throws->UInt64{{try owner.sendGoal(value)}}",
                f" public static func feedback(_ id:UInt64,owner:Owner)throws->{f}{{try owner.feedback(id,{f}.self)}}",
                f" public static func result(_ id:UInt64,owner:Owner)throws->Terminal<{s}>{{try owner.result(id,{s}.self)}}",
                "}",
            ]
            nim += [
                f"proc send{name}*(o:Owner;q:{q}):uint64 = sendGoalValue(o,q)",
                f"proc feedback{name}*(o:Owner;id:uint64):{f} = feedbackValue(o,id,{fm+8},decode{f})",
                f"proc result{name}*(o:Owner;id:uint64):Terminal[{s}] = resultValue(o,id,{sm+9},decode{s})",
            ]
            d += [
                f"uint send{name}(Owner o,const ref {q} q,ubyte[] scratch,out ulong id){{return typed.sendGoalValue(o,q,scratch,id);}}"
            ]
            hs += [
                f"send{name} :: Owner -> {q} -> IO (Either RosError Word64)",
                f"send{name} = Typed.sendGoalValue",
                f"feedback{name} :: Owner -> Word64 -> IO (Either RosError {f})",
                f"feedback{name} = Typed.feedbackValue",
                f"result{name} :: Owner -> Word64 -> IO (Either RosError (Typed.Terminal {s}))",
                f"result{name} = Typed.resultValue",
            ]
            odin += [
                f"send_{name} :: proc(o:Owner,q:^{q},scratch:[]u8)->Submission{{b,c:=encode_{q}(q,scratch);if c!=0{{return Submission{{code=c}}}};out:[8]u8;r:=request(o,.action_send_goal,b,out[:]);if r.code!=0{{return Submission{{code=r.code}}}};if len(r.data)!=8{{return Submission{{code=22}}}};id:=word(r.data,0);return Submission{{code=id==0 ? 22 : 0,id=id}}}}"
            ]
            # The complete goal record is available without a second language-specific
            # projection. Result/feedback components remain ordinary typed records.
            zig += [
                f"pub fn send_{name}(o:client.Owner,q:*const records.{q},scratch:[]u8)node.GoalSubmission{{return node.sendGoalValue(o,q,scratch);}}"
            ]
            gos["go"] += [
                f"func Send{name}(o *ros.Owner,q {q})(uint64,error){{return ros.SendGoalValue(o,q)}}",
                f"func Feedback{name}(o *ros.Owner,id uint64)({f},error){{return ros.FeedbackValue(o,id,{fm+8},Decode{f})}}",
                f"func Result{name}(o *ros.Owner,id uint64)(ros.Terminal[{s}],error){{return ros.ResultValue(o,id,{sm+9},Decode{s})}}",
            ]
            # TinyGo's existing full Action client is the ABI facade; this entry
            # supplies exact complete goal bytes, with caller-owned result storage.
            gos["tinygo"] += [
                f"func Send{name}(o *ros.Capability,q {q},output []byte)(uint64,error){{b,e:=q.Encode();if e!=nil{{return 0,e}};n,e:=o.Request(ros.OpActionSendGoal,b,output);if e!=nil{{return 0,e}};if n!=8{{return 0,ros.Error{{Code:ros.Invalid}}}};var id uint64;for i:=uint(0);i<8;i++{{id|=uint64(output[i])<<(8*i)}};if id==0{{return 0,ros.Error{{Code:ros.Invalid}}}};return id,nil}}"
            ]
    result.update(
        {
            "rust/bounded_interfaces.rs": "\n".join(rust) + "\n",
            "swift/Interfaces.swift": "\n".join(swift) + "\n",
            "nim/interfaces.nim": "\n".join(nim) + "\n",
            "d/interfaces.d": "\n".join(d) + "\n",
            "haskell/RosWasm/Interfaces.hs": "\n".join(hs) + "\n",
            "odin/interfaces.odin": "\n".join(odin) + "\n",
            "zig/bounded_interfaces.zig": "\n".join(zig) + "\n",
        }
    )
    result.update({l + "/bounded_interfaces.go": "\n".join(body) + "\n" for l, body in gos.items()})
    result = {name: _document(name.split("/")[0], body, active) for name, body in result.items()}
    if not active:
        # Do not emit imports-only files with an unused-import compile error, or
        # advertise a control Service through the wrong Runtime transport.
        return {}, {"status": "REQUIRES_OWNED_RMW_RAW12", "interfaces": [i.name for i in interfaces]}
    return result, {
        "status": "SOURCE_ONLY",
        "interfaces": [i.name for i in active],
        "control_interfaces_not_emitted": [i.name for i in interfaces if i.profile == profile.CONTROL_PROFILE],
        "native_source_compatibility": False,
        "default_authority": [],
    }
