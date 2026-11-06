import importlib.util
import json
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
from host_interfaces import authorize_test_imports, interface_arguments, imports
from wasi_policy import arguments, test_arguments as base_arguments

class InterfacePolicy(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.directory=tempfile.TemporaryDirectory()
        cls.root=Path(cls.directory.name)
        for name,namespace,function in [
            ("wasi","wasi_snapshot_preview1","random_get"),
            ("ros1","uwvm_ros1_v1","abi_version"),
            ("ros2","uwvm_ros2_v1","abi_version")]:
            parameters="(param i32 i32)" if name=="wasi" else ""
            wat=cls.root/(name+".wat")
            wat.write_text('(module (import "'+namespace+'" "'+function+'" (func '+parameters+' (result i32))))')
            subprocess.run(["wat2wasm",str(wat),"-o",str(wat.with_suffix(".wasm"))],check=True)
    @classmethod
    def tearDownClass(cls):cls.directory.cleanup()
    def policy(self,interfaces):
        return {"format":"uwvm-sdk-wasip1-policy-v3","modules":{"main":{"enabled":True,"interfaces":interfaces,"grants":[]}}}
    def test_lua_serializer_matches_python(self):
        sdk=Path(__file__).resolve().parents[4]
        script=self.root/"test_policy.lua"
        script.write_text("""function main()
 local sdk = %s
 local policy = import("wasi_policy", {rootdir=path.join(sdk,"tools/xmake"),anonymous=true})
 local wasm = %s
 local args = {"--ros2-single-create","main","--ros2-single-enable","main"}
 local got = policy.test_arguments(args,nil,{main=wasm})
 local count=0
 for _,x in ipairs(got) do if x=="uwvm_ros2_v1.abi_version" then count=count+1 end end
 assert(count==1,"Missing exact ROS2 API")
 table.join2(args,{"--ros2-single-interface","main","uwvm_ros2_v1.abi_version","deny"})
 local denied=policy.test_arguments(args,nil,{main=wasm});count=0
 for i,x in ipairs(denied) do if x=="uwvm_ros2_v1.abi_version" then count=count+1;assert(denied[i+1]=="deny") end end
 assert(count==1,"Explicit denied interface was overwritten")
end
"""%(json.dumps(str(sdk)),json.dumps(str(self.root/"ros2.wasm"))))
        import os
        run=subprocess.run(["xmake","lua",str(script)],env=dict(os.environ,UWVM_SDK_PYTHON=sys.executable),
                           capture_output=True,text=True,timeout=30)
        self.assertEqual(run.returncode,0,run.stdout+run.stderr)
    def test_old_contract_rejected(self):
        with self.assertRaises(ValueError):arguments({"format":"uwvm-sdk-wasip1-policy-v2","modules":{}})
    def test_missing_api_map_rejected(self):
        with self.assertRaises(ValueError):arguments({"format":"uwvm-sdk-wasip1-policy-v3","modules":{"main":{"enabled":True,"grants":[]}}})
    def test_production_no_implicit_api_grant(self):
        self.assertNotIn("--wasip1-single-interface",arguments(self.policy({})))
        self.assertEqual(arguments(None),[])
    def test_unknown_and_cross_family_api_rejected(self):
        for interface in ("random_gett","uwvm_ros1_v1.abi_version","all","*"):
            with self.assertRaises(ValueError):arguments(self.policy({interface:"allow"}))
    def test_three_states_preserved(self):
        for state in ("hidden","deny","allow"):
            argv=["uwvm",*base_arguments([],self.policy({"random_get":state})),"--run",str(self.root/"wasi.wasm")]
            result=authorize_test_imports(argv)
            self.assertEqual(result.count("--wasip1-single-interface"),1)
            index=result.index("--wasip1-single-interface")
            self.assertEqual(result[index+1:index+4],["main","random_get",state])
            self.assertNotIn("--wasip1-single-grant",result)
    def test_explicit_test_imports_only(self):
        argv=["uwvm",*base_arguments([],self.policy({})),"--run",str(self.root/"wasi.wasm")]
        result=authorize_test_imports(argv)
        index=result.index("--wasip1-single-interface")
        self.assertEqual(result[index+1:index+4],["main","random_get","allow"])
        self.assertNotIn("--wasip1-single-grant",result)
        self.assertEqual(authorize_test_imports(result),result)
    def test_no_namespace_is_added(self):
        argv=["uwvm","--run",str(self.root/"ros1.wasm")]
        self.assertEqual(authorize_test_imports(argv),argv)
    def test_cross_module_ros_isolation(self):
        argv=["uwvm","--ros1-single-create","main","--ros1-single-enable","main",
              "--wasm-preload-library",str(self.root/"ros1.wasm"),"worker","--run",str(self.root/"wasi.wasm")]
        self.assertEqual(authorize_test_imports(argv),argv)
    def test_group_binding_and_negative_override(self):
        argv=["uwvm","--ros2-group-create","workers","--ros2-group-add-module","workers","main",
              "--ros2-group-enable","workers","--run",str(self.root/"ros2.wasm")]
        result=authorize_test_imports(argv);index=result.index("--ros2-group-interface")
        self.assertEqual(result[index+1:index+4],["workers","uwvm_ros2_v1.abi_version","allow"])
        explicit=argv[:-2]+["--ros2-group-interface","workers","uwvm_ros2_v1.abi_version","deny"]+argv[-2:]
        self.assertEqual(authorize_test_imports(explicit),explicit)
    def test_global_requires_exact_binding(self):
        argv=["uwvm","--ros2-global-enable","--run",str(self.root/"ros2.wasm")]
        self.assertEqual(authorize_test_imports(argv),argv)
        argv=argv[:-2]+["--ros2-global-add-module","main"]+argv[-2:]
        self.assertIn("--ros2-global-interface",authorize_test_imports(argv))
    def test_guest_arguments_cannot_configure_host(self):
        argv=["uwvm","--run",str(self.root/"ros2.wasm"),"--ros2-single-create","main","--ros2-single-enable","main"]
        self.assertEqual(authorize_test_imports(argv),argv)
    def test_truncated_import_rejected(self):
        path=self.root/"truncated.wasm";path.write_bytes(b"\0asm\1\0\0\0\x02\x02\x01\xff")
        with self.assertRaises(ValueError):imports(path)

if __name__=="__main__":unittest.main()
