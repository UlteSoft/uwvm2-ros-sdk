import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from wasi_policy import arguments, socket_arguments

class SocketPolicy(unittest.TestCase):
    def policy(self, preopens=None, stdio=None, abi=None):
        value = {"format": "uwvm-sdk-wasip1-policy-v3", "modules": {"main": {
            "enabled": True, "interfaces": {"sock_send": "allow"}, "grants": [],
            "socket_preopens": preopens or [], "socket_stdio": stdio or []}}}
        if abi is not None:
            value["socket_abi"] = abi
        return value

    def preopen(self, **extra):
        return dict(fd=3, kind="tcp-connect", endpoint={"address": "127.0.0.1:5000"}, **extra)

    def test_preopen_has_zero_data_rights(self):
        result = arguments(self.policy([self.preopen()]))
        i = result.index("--wasip1-single-socket-rights")
        self.assertEqual(result[i+1:i+5], ["main", "3", "none", "none"])
        self.assertNotIn("--wasip1-single-grant", result)

    def test_listener_child_does_not_acquire_parent_rights(self):
        entry = self.preopen(base=["accept"], inheriting=["read", "write"])
        entry["kind"] = "tcp-listen"
        result = socket_arguments("main", [entry], [])
        self.assertEqual(result[-4:], ["main", "3", "accept", "read,write"])

    def test_nonlistener_cannot_inherit(self):
        for kind in ("tcp-connect", "udp-connect", "udp-bind"):
            entry = self.preopen(inheriting=["read"])
            entry["kind"] = kind
            with self.assertRaises(ValueError): socket_arguments("main", [entry], [])

    def test_accept_cannot_be_inherited(self):
        entry = self.preopen(base=["accept"], inheriting=["accept"])
        entry["kind"] = "tcp-listen"
        with self.assertRaises(ValueError): socket_arguments("main", [entry], [])

    def test_stdio_has_no_implicit_stream_grant(self):
        result = arguments(self.policy(stdio=[{"fd": 1, "base": ["write"]}]))
        self.assertNotIn("--wasip1-single-grant", result)
        self.assertEqual(result[-4:], ["main", "1", "write", "none"])

    def test_duplicate_fd_and_duplicate_rights_rejected(self):
        for values in ([self.preopen(), self.preopen()], [self.preopen(base=["write", "write"])]):
            with self.assertRaises(ValueError): socket_arguments("main", values, [])

    def test_exact_endpoint_and_kind_required(self):
        for endpoint in ({}, {"address": "a:1", "unix": "/a"}, {"address": "a\0b"}, {"address": ""}):
            entry = self.preopen(); entry["endpoint"] = endpoint
            with self.assertRaises(ValueError): socket_arguments("main", [entry], [])
        for key, value in (("fd", True), ("fd", 2), ("fd", 2147483648), ("kind", "raw")):
            entry = self.preopen(); entry[key] = value
            with self.assertRaises(ValueError): socket_arguments("main", [entry], [])

    def test_abi_has_one_host_selection(self):
        for abi in ("standard", "wasix"):
            result = arguments(self.policy(abi=abi))
            self.assertEqual(result[:2], ["--wasip1-socket-abi", abi])
            self.assertEqual(result.count("--wasip1-socket-abi"), 1)
        for abi in ("auto", "both", "wasix64"):
            with self.assertRaises(ValueError): arguments(self.policy(abi=abi))

    def test_lua_matches_python_socket_policy(self):
        sdk = Path(__file__).resolve().parents[4]
        entry = self.preopen(base=["accept"], inheriting=["read", "write", "shutdown"])
        entry["kind"] = "tcp-listen"
        policy = self.policy([entry], [{"fd": 1, "base": ["write"]}], "wasix")
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp)/"policy.json"; source.write_text(json.dumps(policy))
            result = Path(tmp)/"arguments.json"; script = Path(tmp)/"verify.lua"
            script.write_text('function main()\n'
                ' import("core.base.json")\n'
                ' local p = import("wasi_policy", {rootdir='+json.dumps(str(sdk/"tools/xmake"))+', anonymous=true})\n'
                ' json.savefile('+json.dumps(str(result))+', p.arguments(json.loadfile('+json.dumps(str(source))+')))\nend\n')
            process = subprocess.run(["xmake", "lua", str(script)], env=dict(os.environ, UWVM_SDK_PYTHON=sys.executable),
                                     capture_output=True, text=True, timeout=30)
            self.assertEqual(process.returncode, 0, process.stdout+process.stderr)
            self.assertEqual(json.loads(result.read_text()), arguments(policy))

if __name__ == "__main__":
    unittest.main()
