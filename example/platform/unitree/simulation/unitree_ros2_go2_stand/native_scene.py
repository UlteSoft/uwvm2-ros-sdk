#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
"""Official original Go2 MuJoCo/DDS native simulation endpoint.

Native physics/PD and packet publication are driver/simulation responsibilities.
The four-stage application, ROS callbacks and control decisions run only in Wasm.

This headless provider does not implement the example's image/guest scenarios.
The original manufacturer bridge owns its simulator endpoint and state output.
"""
from pathlib import Path
import argparse
import faulthandler
import gc
import hashlib
import importlib.metadata
import json
import os
import sys
import time
import signal
import threading
import math
from xml.sax.saxutils import escape

SOURCE_FILES = {
    'simulate_python/unitree_sdk2py_bridge.py': '3ddb54ddddc6a20255e9bb77760537774b2eb77ce50073bf1f4a69bfaa77b599',
    'simulate_python/config.py': '9d14af3937cf0a842976d8c4c8c3158d6c8cdc70c588d3c2645ac4cbf82b6027',
    'unitree_robots/go2/scene.xml': '6c1fda780e7883665d1c84113b9275b6d448f586a8b1c110e438a37417cbccd0',
}

def sha(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def error_facts(errors):
    return [{'stage':stage,'type':type(error).__name__,'message':str(error),
             'errno':getattr(error,'errno',None)} for stage,error in errors]

def attempt(errors,operations,stage,operation):
    try:
        value=operation();operations.append({'stage':stage,'status':'OK'});return value
    except BaseException as error:
        error.add_note('Native Go2 lifecycle stage: '+stage)
        errors.append((stage,error));operations.append({'stage':stage,'status':'FAIL'});return None

def kernel_threads():
    rows=[]
    for path in Path('/proc/self/task').iterdir():
        try:
            fields=(path/'stat').read_text().rsplit(')',1)[1].split()
            rows.append({'tid':int(path.name),'birth_ticks':int(fields[19]),'name':(path/'comm').read_text().strip()})
        except FileNotFoundError:pass
    return sorted(rows,key=lambda row:row['tid'])

def retire_native_bridge(bridge,channel,trace,trace_lock,ready_file,baseline,errors):
    operations=[];threads=[];channels=[]
    # Ready/trace IO and each individual Wait/GetResult/Close are independent.
    try:
        attempt(errors,operations,'ready_unlink',lambda:ready_file.unlink(missing_ok=True))
    finally:
        for name in ['lowStateThread','HighStateThread','WirelessControllerThread']:
            thread=getattr(bridge,name,None) if bridge is not None else None
            if thread is None:continue
            native_id=attempt(errors,operations,name+'.GetNativeId',thread.GetNativeId)
            if native_id is not None:
                attempt(errors,operations,name+'.Wait',lambda:thread.Wait(2.0))
                result=attempt(errors,operations,name+'.GetResult',lambda:thread.GetResult(0.0))
                def check_result():
                    if result is None or result.code!=0:raise RuntimeError('Original recurrent thread result was not successful: '+name)
                attempt(errors,operations,name+'.result_check',check_result)
                native_thread=getattr(thread,'_Thread__thread',None)
                def join_thread():
                    if not isinstance(native_thread,threading.Thread):raise RuntimeError('Pinned SDK thread implementation changed')
                    native_thread.join(2.0)
                    if native_thread.is_alive():raise RuntimeError('Original native recurrent thread still alive: '+name)
                attempt(errors,operations,name+'.join',join_thread)
                threads.append({'name':name,'native_id':native_id,'result_code':getattr(result,'code',None),
                                'message':getattr(result,'msg',None),'python_alive_after_join':native_thread.is_alive() if isinstance(native_thread,threading.Thread) else None})
            else:threads.append({'name':name,'native_id':None,'started':False})
            attempt(errors,operations,name+'.release',lambda:setattr(bridge,name,None))
        thread=None;native_thread=None
        for name in ['low_cmd_suber','low_state_puber','high_state_puber','wireless_controller_puber']:
            endpoint=getattr(bridge,name,None) if bridge is not None else None
            if endpoint is None:continue
            before=len(errors);attempt(errors,operations,name+'.Close',endpoint.Close)
            channels.append({'name':name,'close_succeeded':len(errors)==before})
            attempt(errors,operations,name+'.release',lambda:setattr(bridge,name,None))
        endpoint=None
        # Pinned original SDK factory owns the process-local participant/domain.
        # Release only this fresh process's resources after stopping all channels.
        factory=getattr(channel,'ChannelFactory',None)
        if factory is not None:
            for name,value in [('_ChannelFactory__initialized',False),('_ChannelFactory__participant',None),('_ChannelFactory__domain',None)]:
                attempt(errors,operations,'factory.release:'+name,lambda name=name,value=value:setattr(factory,name,value))
        attempt(errors,operations,'native_gc',gc.collect)
        if trace is not None:
            try:
                with trace_lock:attempt(errors,operations,'trace.flush',trace.flush)
            finally:
                with trace_lock:attempt(errors,operations,'trace.close',trace.close)
        original={(row['tid'],row['birth_ticks'])for row in baseline};deadline=time.monotonic()+2
        while True:
            remaining=[row for row in kernel_threads()if(row['tid'],row['birth_ticks'])not in original]
            if not remaining or time.monotonic()>=deadline:break
            time.sleep(.01)
        def check_threads():
            if remaining:raise RuntimeError('Native threads remain after local cleanup: '+str(remaining))
        attempt(errors,operations,'native_thread_retirement_check',check_threads)
    return {'format':'uwvm-go2-local-native-retirement-v1','status':'RETIRED'if not errors else'FAIL',
            'threads':threads,'channels':channels,'operations':operations,'baseline_kernel_threads':baseline,
            'kernel_threads_after':kernel_threads(),'new_kernel_threads_remaining':remaining,
            'ready_absent':not ready_file.exists(),'trace_closed':trace is None or trace.closed,
            'scope':'Local native infrastructure threads/channels only; independent process guardian remains required'}

def main():
    faulthandler.enable()
    def stage(name):
        print(json.dumps({'infrastructure_stage':name}), flush=True)
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-root', required=True, type=Path)
    parser.add_argument('--domain', required=True, type=int)
    parser.add_argument('--duration-seconds', type=float, default=60.0)
    parser.add_argument('--evidence', required=True, type=Path)
    parser.add_argument('--ready-file', required=True, type=Path)
    parser.add_argument('--trace-file', required=True, type=Path)
    parser.add_argument('--stop-file', type=Path)
    args = parser.parse_args()
    if not 0 <= args.domain <= 230 or not 1 <= args.duration_seconds <= 3600:
        parser.error('A valid isolated DDS domain and bounded duration are required')
    if not args.evidence.is_absolute() or args.evidence.exists():
        parser.error('Evidence must name a new absolute file')
    for path in [args.ready_file, args.trace_file]:
        if not path.is_absolute() or path.exists():
            parser.error('Ready/trace outputs must be new absolute paths')
    stopping = threading.Event()
    signal.signal(signal.SIGTERM, lambda *_: stopping.set())
    signal.signal(signal.SIGINT, lambda *_: stopping.set())
    root = args.source_root.resolve(strict=True)
    source_identities = []
    for relative, expected in SOURCE_FILES.items():
        path = root/relative
        if path.is_symlink() or sha(path) != expected:
            raise RuntimeError('Original manufacturer source mismatch: '+relative)
        source_identities.append({'path':relative, 'sha256':expected})
    versions = {name:importlib.metadata.version(name) for name in ['unitree_sdk2py','cyclonedds','mujoco','numpy']}
    for name, expected in [('unitree_sdk2py','1.0.1'),('cyclonedds','0.10.2'),('mujoco','3.3.6')]:
        if versions[name] != expected:
            raise RuntimeError('Unqualified native dependency: '+name)
    os.environ['MUJOCO_GL'] = 'disable'
    os.environ.pop('CYCLONEDDS_URI', None)
    stage('original_sources_and_versions_verified')
    sys.path.insert(0, str(root/'simulate_python'))
    import config
    config.ROBOT = 'go2'
    config.USE_JOYSTICK = 0
    config.ENABLE_ELASTIC_BAND = False
    import mujoco
    stage('mujoco_imported')
    from unitree_sdk2py.core import channel
    stage('sdk2_channel_imported')
    from unitree_sdk2py.core.channel_config import ChannelConfigHasInterface
    from unitree_sdk2py_bridge import UnitreeSdk2Bridge
    stage('original_bridge_imported')
    if ChannelConfigHasInterface.count('/tmp/cdds.LOG') != 1:
        raise RuntimeError('Unreviewed original DDS trace-file configuration')
    # Configure only the original infrastructure's log destination. Keep its
    # config-level tracing and every original channel/bridge implementation.
    channel.ChannelConfigHasInterface = ChannelConfigHasInterface.replace(
        '/tmp/cdds.LOG', escape(str(args.evidence.with_suffix('.dds.log'))))
    channel_config = channel.ChannelConfigHasInterface.replace('$__IF_NAME__$', 'lo')
    trace=None
    trace_lock=threading.Lock()
    async_lock=threading.Lock()
    async_errors=[]
    counts={'received_lowcmd':0,'published_lowstate':0}
    bridge=None;model=None;data=None;ready=None;steps=0;began=time.monotonic()
    baseline=kernel_threads();primary=None;cleanup_errors=[]
    def finite(value):
        result = float(value)
        return result if math.isfinite(result) else {'nonfinite':repr(result)}
    def packet_record(kind, msg):
        raw = msg.serialize()
        row = {'kind':kind, 'monotonic_ns':time.monotonic_ns(),
               'cdr_hex':raw.hex(), 'cdr_bytes':len(raw),
               'cdr_sha256':hashlib.sha256(raw).hexdigest(),
               'crc_field':int(msg.crc),
               'origin':'native-object-reserialization',
               'serialization_source':'msg.serialize() on a native in-memory object',
               'observation_position':'before original LowCmdHandler' if kind=='received_lowcmd' else 'after original PublishLowState returned',
               'rmw_received_cdr':False,'rtps_receive_capture':False,'guest_memory_delivery_proof':False}
        if kind == 'received_lowcmd':
            row['motor_cmd'] = [{name:(int(getattr(m,name)) if name=='mode' else finite(getattr(m,name)))
                for name in ['mode','q','dq','tau','kp','kd']} for m in msg.motor_cmd]
        else:
            row['motor_state'] = [{'q':finite(m.q),'dq':finite(m.dq),'tau_est':finite(m.tau_est)}
                                  for m in msg.motor_state]
            row['imu_accelerometer'] = [finite(v) for v in msg.imu_state.accelerometer]
        with trace_lock:
            counts[kind] += 1
            row['sequence'] = counts[kind]
            trace.write(json.dumps(row, allow_nan=False)+'\n')
    def observe_packet(kind,msg):
        try:packet_record(kind,msg)
        except BaseException as error:
            with async_lock:
                if not async_errors:async_errors.append(('native_object_trace',error))
            stopping.set()
            raise
    class ObservedOriginalBridge(UnitreeSdk2Bridge):
        # Object reserialization is supporting shape/state evidence, not received
        # RMW/RTPS bytes. Original manufacturer PD/state code runs unchanged.
        def LowCmdHandler(self, msg):
            observe_packet('received_lowcmd', msg)
            return super().LowCmdHandler(msg)
        def PublishLowState(self):
            result = super().PublishLowState()
            observe_packet('published_lowstate', self.low_state)
            return result
    try:
        # The guard begins before any trace, DDS factory or bridge startup.
        trace=args.trace_file.open('x',buffering=1)
        channel.ChannelFactoryInitialize(args.domain,'lo')
        stage('loopback_dds_factory_initialized')
        model=mujoco.MjModel.from_xml_path(str(root/'unitree_robots/go2/scene.xml'))
        model.opt.timestep=config.SIMULATE_DT
        data=mujoco.MjData(model);mujoco.mj_forward(model,data)
        stage('original_go2_model_loaded')
        # Retain the partially initialized instance if the original ctor throws.
        bridge=ObservedOriginalBridge.__new__(ObservedOriginalBridge)
        bridge.__init__(model,data)
        stage('original_go2_dds_bridge_started')
        if async_errors:raise RuntimeError('Native object trace failed during bridge startup')
        ready = {'format':'uwvm-sdk-go2-native-environment-ready-v1',
            'pid':os.getpid(), 'pid_birth':int(Path('/proc/self/stat').read_text().rsplit(')',1)[1].split()[19]),
            'cgroup':Path('/proc/self/cgroup').read_text(), 'domain':args.domain, 'interface':'lo',
            'robot':'go2','actuators':model.nu,'sensors':model.nsensor,
            'timestep':model.opt.timestep,'scene_sha256':sha(root/'unitree_robots/go2/scene.xml'),
            'task_application_started':False,'native_application_substitute':False,
            'trace_provenance':'native-object-reserialization; not received RMW/RTPS CDR',
            'responsibilities':'Original official native physics,actuator PD,DDS device state and transport only'}
        args.ready_file.write_text(json.dumps(ready,indent=2)+'\n')
        stage('native_go2_ready_for_wasm_task')
        began=time.monotonic()
        while time.monotonic()-began < args.duration_seconds and not stopping.is_set() and not (args.stop_file and args.stop_file.exists()):
            mujoco.mj_step(model, data)
            steps += 1
            remaining = began+steps*model.opt.timestep-time.monotonic()
            if remaining > 0:
                time.sleep(remaining)
    except BaseException as error:primary=error
    finally:
        stopping.set()
        try:cleanup=retire_native_bridge(bridge,channel,trace,trace_lock,args.ready_file,baseline,cleanup_errors)
        except BaseException as error:
            cleanup_errors.append(('local_retirement',error));cleanup={'status':'FAIL','scope':'Local cleanup did not complete; independent guardian required'}
    errors=([('operation',primary)]if primary is not None else[])+async_errors+cleanup_errors
    evidence={'format':'uwvm-sdk-original-scene-infrastructure-v2',
        'status':'FAIL'if errors else'STARTED_AND_NATURALLY_STOPPED',
        'original_error':error_facts([('operation',primary)])if primary is not None else[],
        'asynchronous_errors':error_facts(async_errors),'cleanup_errors':error_facts(cleanup_errors),
        'local_native_retirement':cleanup,'trace_provenance':'native-object-reserialization',
        'trace_is_rmw_received_cdr':False,'trace_is_rtps_receive_capture':False,
        'driver_packet_counts':counts,'physics_steps':steps,'ready':ready,
        'source_sha256':sha(Path(__file__).resolve()),'scene_pass':False,'production_admission':False}
    if errors:
        attempt(errors,[],'failure_evidence_write',lambda:args.evidence.write_text(json.dumps(evidence,indent=2)+'\n'))
        raise BaseExceptionGroup('Native Go2 operation and cleanup errors',[error for _,error in errors])
    raw_maps = Path('/proc/self/maps').read_text()
    args.evidence.with_suffix('.maps.txt').write_text(raw_maps)
    libraries = []
    for name in sorted({line.split()[-1] for line in raw_maps.splitlines() if '/' in line}):
        path = Path(name)
        if path.is_file() and ('libddsc' in path.name or 'libmujoco' in path.name):
            libraries.append({'path':str(path), 'sha256':sha(path), 'bytes':path.stat().st_size})
    if not all(any(token in row['path'] for row in libraries) for token in ['libddsc','libmujoco']):
        raise RuntimeError('Actual loaded DDS/MuJoCo library identity unavailable')
    modules = []
    for name, module in sorted(sys.modules.items()):
        filename = getattr(module, '__file__', None)
        if filename and (name.startswith('unitree_sdk2py') or name in ['unitree_sdk2py_bridge','config']):
            path = Path(filename)
            if path.is_file():
                modules.append({'module':name, 'path':str(path), 'sha256':sha(path)})
    evidence.update({'format':'uwvm-sdk-original-scene-infrastructure-v2',
        'status':'STARTED_AND_NATURALLY_STOPPED', 'model':'Go2',
        'original_mujoco_commit':'1eb6642e3f3fdfb7fb13a9794fd6a2dd93ea0e7d',
        'original_sdk2_python_commit':'814556d15970dd2ecf1c9984e845ca02ab07e206',
        'versions':versions, 'source_files':source_identities, 'imported_modules':modules,
        'domain':args.domain, 'network_interface':'lo', 'effective_dds_configuration':channel_config,
        'native_configuration_delta':'Original DDS config trace destination changed from shared/tmp/cdds.LOG to this instance evidence directory; original config-level verbosity retained',
        'driver_packet_counts':counts, 'trace_file':str(args.trace_file),
        'trace_sha256':sha(args.trace_file),'ready':ready,
        'application_role':'Only a real VM guest may execute the stand task or make ROS/control/callback decisions',
        'native_endpoint_role':'Permitted official simulator/driver endpoint under SIMULATION-BOUNDARY.md',
        'physics_steps':steps, 'wall_duration_seconds':time.monotonic()-began,
        'recurrent_thread_cleanup':cleanup['threads'], 'mapped_libraries':libraries,
        'cgroup':Path('/proc/self/cgroup').read_text(),
        'renderer_started':False, 'joystick_started':False, 'image_route_qualified':False,
        'native_sdk_business_client':False, 'guest_or_sdk_simulation_qualified':False,
        'qualification':'Actual official native Go2 endpoint lifecycle and native-object-reserialization observations. A Wasm application, authoritative VM command/memory receipts and full task assertions are still required for scenario PASS.'})
    args.evidence.write_text(json.dumps(evidence, indent=2)+'\n')
    print(json.dumps({'status':evidence['status'],'driver_packet_counts':counts, 'trace_file':str(args.trace_file),
        'trace_sha256':sha(args.trace_file),'ready':ready,
        'application_role':'Only a real VM guest may execute the stand task or make ROS/control/callback decisions',
        'native_endpoint_role':'Permitted official simulator/driver endpoint under SIMULATION-BOUNDARY.md',
        'physics_steps':steps,'domain':args.domain,'sdk_simulation_qualified':False}))

if __name__ == '__main__':
    main()
