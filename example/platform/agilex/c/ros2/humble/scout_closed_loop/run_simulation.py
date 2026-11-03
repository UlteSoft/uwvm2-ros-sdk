"""Execute a real, bounded SCOUT Wasm development acceptance run.

All input paths are explicit. This runner neither acquires host privileges nor
qualifies the SDK's separate public production enrollment interface. Invoke it
inside the admitted CPU queue; every simulator, recorder, gateway and VM child
inherits the same 64 GiB, zero-swap ancestor from birth.
"""
from pathlib import Path
import argparse
import hashlib
import importlib.util
import json
import math
import os
import signal
import socket
import struct
import subprocess
import sys
import time

def sha(path):
    with Path(path).open('rb') as stream:
        return hashlib.file_digest(stream,'sha256').hexdigest()

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('sdk','vm','gateway','wasm','native-base-report','native-closure',
                 'native-environment','native-sources'):
        parser.add_argument('--'+name,type=Path,required=True)
    args=parser.parse_args()
    out=Path(os.environ['UWVM_SDK_OUTPUT'])
    member=Path('/proc/self/cgroup').read_text().strip()
    group=Path('/sys/fs/cgroup')/next(x.split(':',2)[2].lstrip('/') for x in member.splitlines() if x.startswith('0::'))
    common=Path('/sys/fs/cgroup/uwvmros.slice')
    if common not in group.parents or (common/'memory.max').read_text().strip()!='68719476736' or (common/'memory.swap.max').read_text().strip()!='0':
        raise RuntimeError('actual shared 64 GiB zero-swap birth boundary required')
    for leaf in [group,*group.parents]:
        if leaf==common.parent:break
        if not (leaf/'memory.max').exists():continue
        limit=(leaf/'memory.max').read_text().strip()
        if limit=='max' or int(limit)>68719476736 or (leaf/'memory.swap.max').read_text().strip()!='0':
            raise RuntimeError('unbounded ancestor or swap')
    sdk=args.sdk.resolve(strict=True);here=Path(__file__).resolve().parent
    sys.path.insert(0,str(sdk/'tools/shared/python'))
    from owned_processes import OwnedProcesses,process
    owned=OwnedProcesses();actors=[];gate_write=None;directory=None;audit_fd=None
    report={'format':'scout-real-wasm-simulation-v1','status':'RUNNING',
            'production_enrollment':False,'physical_robot':False,'native_application_controller':False,
            'guest_count':1,'guest_shape':'static executable, one linear memory, no dynamic preloads; not multi-memory',
            'boundary':member,'actors':[],
            'inputs':{name:{'path':str(value),'sha256':sha(value)} for name,value in vars(args).items() if name!='sdk'}}
    def save():
        (out/'simulation-result.json').write_text(json.dumps(report,indent=2)+'\n')
    def spawn(label,argv,env=None,pass_fds=()):
        with (out/(label+'.stdout')).open('xb') as a,(out/(label+'.stderr')).open('xb') as e:
            child=subprocess.Popen([str(x) for x in argv],stdout=a,stderr=e,env=env,
                                   start_new_session=True,close_fds=True,pass_fds=pass_fds)
        row=process(child.pid);actor={'process':child,'pid':child.pid,'birth':row['birth']}
        actors.append(actor);owned.observe()
        report['actors'].append({'name':label,'argv':[str(x) for x in argv],
                                'pid':child.pid,'birth':row['birth'],
                                'cgroup':Path('/proc',str(child.pid),'cgroup').read_text()})
        save();return child
    def until(predicate,seconds,children=()):
        deadline=time.monotonic()+seconds
        while not predicate():
            owned.observe()
            if any(child.poll() is not None for child in children):
                raise RuntimeError('owned actor exited before readiness/result')
            if time.monotonic()>=deadline:raise TimeoutError('bounded actor wait exceeded')
            time.sleep(.02)
    save()
    native_stop=out/'native-stop';work=out/'runtime';work.mkdir(mode=0o700)
    try:
        native=json.loads(args.native_base_report.read_text());root=Path(native['rootfs'])
        # Verify the genuine readonly gateway/recorder runtime before it starts.
        for row in native['rootfs_files']:
            p=root/row['path']
            if 'symlink' in row:
                if not p.is_symlink() or os.readlink(p)!=row['symlink']:raise RuntimeError('native alias drift')
            elif p.is_symlink() or p.stat().st_size!=row['bytes'] or sha(p)!=row['sha256']:
                raise RuntimeError('native runtime drift: '+str(p))
        scene_output=out/'simulator';scene_output.mkdir()
        scene=sdk/'example/platform/agilex/simulation/ugv_gazebo_scout_v2/native_scene.py'
        ready=out/'native-ready.json'
        scene_env=dict(os.environ,UWVM_SDK_OUTPUT=str(scene_output))
        simulator=spawn('simulator',[sys.executable,'-B',scene,'scout',args.native_closure,
            args.native_environment,args.native_sources,'--sdk-root',sdk,'--ready-file',ready,
            '--stop-file',native_stop,'--lifetime-seconds','180'],scene_env)
        until(ready.exists,80,[simulator]);report['native_ready']=json.loads(ready.read_text());save()
        for name in ['ros-log']:(work/name).mkdir()
        (work/'gateway').touch();(work/'observe.py').write_bytes((here/'observe.py').read_bytes())
        common_argv=['/usr/bin/bwrap','--unshare-user','--uid','0','--gid','0','--cap-drop','ALL',
            '--unshare-ipc','--unshare-uts','--ro-bind',str(root),'/',
            '--proc','/proc','--dev','/dev','--tmpfs','/tmp','--tmpfs','/run',
            '--bind',str(work),'/work','--ro-bind',str(args.gateway),'/work/gateway',
            '--clearenv','--setenv','PATH','/usr/sbin:/usr/bin:/sbin:/bin',
            '--setenv','PYTHONDONTWRITEBYTECODE','1','--setenv','PYTHONNOUSERSITE','1',
            '--setenv','ROS_LOG_DIR','/work/ros-log','--setenv','ROS_DOMAIN_ID',os.environ['ROS_DOMAIN_ID'],
            '--setenv','RMW_IMPLEMENTATION','rmw_cyclonedds_cpp',
            '--setenv','CYCLONEDDS_URI','<CycloneDDS><Domain><General><Interfaces><NetworkInterface address="127.0.0.1"/></Interfaces><AllowMulticast>false</AllowMulticast></General><Discovery><Peers><Peer address="127.0.0.1"/></Peers><ParticipantIndex>auto</ParticipantIndex><MaxAutoParticipantIndex>30</MaxAutoParticipantIndex></Discovery></Domain></CycloneDDS>',
            '--chdir','/work','--','/bin/bash','-c']
        recorder=spawn('recorder',common_argv+['source /opt/ros/humble/setup.bash && exec python3 -B /work/observe.py /work'])
        until((work/'recorder-ready').exists,15,[recorder,simulator])
        spec=importlib.util.spec_from_file_location('scout_deployment',sdk/'tools/platform/ros/deployment.py')
        deployment=importlib.util.module_from_spec(spec);spec.loader.exec_module(deployment)
        config=json.loads((here/'deployment.template.json').read_text())
        config['runtime']=str(args.vm);config['gateway']=str(args.gateway)
        config['connection']['domain-id']=os.environ['ROS_DOMAIN_ID']
        (out/'deployment.json').write_text(json.dumps(config,indent=2)+'\n')
        plan=deployment.prepare(config,'scout_closed_loop',args.wasm,out,'wasm32-wasip1','ros2','humble')
        directory=os.open(work,os.O_RDONLY|os.O_DIRECTORY|os.O_CLOEXEC)
        address=f'/proc/{os.getpid()}/fd/{directory}/gateway.sock'
        run_id='scout-'+os.urandom(12).hex();audit_path=out/'vm-buffer.jsonl'
        audit_fd=os.open(audit_path,os.O_WRONLY|os.O_CREAT|os.O_EXCL|os.O_CLOEXEC,0o600)
        command=deployment.command(plan,[str(args.vm),'--ros2-buffer-audit-limits','1024','20000','67108864','32768',
            sha(here/'deployment.template.json'),'--ros2-buffer-audit',run_id,str(audit_fd),
            '--runtime-compile-threads','1'],{'scout_control':address},os.getuid())
        gate_read,gate_write=os.pipe2(os.O_CLOEXEC)
        vm=spawn('vm',[sys.executable,'-B',here/'exec_gate.py',str(gate_read),str(audit_fd),*command],
                 pass_fds=(gate_read,audit_fd))
        os.close(gate_read);os.close(audit_fd);audit_fd=None
        policy=work/'gateway.cfg'
        policy.write_text(deployment.gateway_policy('ros2',plan['modules']['scout_control'],'/work/gateway.sock',0,vm.pid))
        policy.chmod(0o600)
        gateway=spawn('gateway',common_argv+['source /opt/ros/humble/setup.bash && exec /work/gateway /work/gateway.cfg'])
        until((work/'gateway.sock').exists,15,[gateway,recorder,simulator])
        with socket.socket(socket.AF_UNIX,socket.SOCK_STREAM) as probe:
            probe.connect(address)
            credentials=struct.unpack('3i',probe.getsockopt(socket.SOL_SOCKET,socket.SO_PEERCRED,12))
            if credentials[1]!=os.getuid() or os.getpgid(credentials[0])!=gateway.pid or sha(Path('/proc',str(credentials[0]),'exe'))!=sha(args.gateway):
                raise RuntimeError('actual native peer identity differs')
            probe.settimeout(2)
            if probe.recv(1)!=b'':raise RuntimeError('unconfigured supervisor was not rejected')
        report['gateway_peer_credentials']=credentials;report['vm_argv']=command;save()
        os.write(gate_write,b'R');os.close(gate_write);gate_write=None
        until(lambda:vm.poll() is not None,90,[simulator,recorder])
        report['vm_exit_code']=vm.returncode
        if vm.returncode:raise RuntimeError('real Wasm controller failed: '+str(vm.returncode))
        until(lambda:gateway.poll() is not None,10,[simulator,recorder])
        if gateway.returncode:raise RuntimeError('native gateway failed: '+str(gateway.returncode))
        (work/'recorder-stop').write_text('stop\n')
        until(lambda:recorder.poll() is not None,10,[simulator])
        if recorder.returncode:raise RuntimeError('read-only recorder failed')
        guest=[json.loads(line) for line in (out/'vm.stdout').read_text().splitlines() if line.startswith('{')]
        passed=[r for r in guest if r.get('kind')=='task_pass']
        denials={r['case']:r['errno'] for r in guest if r.get('kind')=='denial'}
        if len(passed)!=1 or len(denials)!=6 or not all(denials.values()):raise RuntimeError('missing guest task/denial evidence')
        native_rows=[json.loads(line) for line in (work/'native-received.jsonl').read_text().splitlines()]
        odom={r['stamp_ns']:r for r in native_rows if r.get('topic')=='/odom'}
        feedback=[r for r in guest if r.get('kind')=='feedback']
        matched=0
        for row in feedback:
            actual=odom.get(row['stamp_ns'])
            if actual:
                if abs(actual['x']-row['x'])>1e-7 or abs(actual['y']-row['y'])>1e-7:raise RuntimeError('guest feedback differs from independently received RMW sample')
                matched+=1
        commands=[r for r in native_rows if r.get('topic')=='/cmd_vel']
        nodes={p['node'] for row in native_rows if row.get('kind')=='command_publishers' for p in row['publishers']}
        # DDS discovery can expose the same endpoint GID before its node name.
        # Every observed GID must later resolve exclusively to our gateway.
        publishers={}
        for row in native_rows:
            if row.get('kind')=='command_publishers':
                for publisher in row['publishers']:
                    publishers.setdefault(bytes(publisher['gid']).hex(),set()).add(publisher['node'])
        resolved={gid:names-{'_NODE_NAME_UNKNOWN_'} for gid,names in publishers.items()}
        if matched<100 or not commands or len(resolved)!=1 or any(names!={'scout_wasm_gateway'} for names in resolved.values()):
            raise RuntimeError('missing independent motion/unique command source evidence: '+repr((matched,resolved)))
        if not any(r['linear'][0]>.02 for r in commands) or not any(r['angular'][2]>.04 for r in commands):raise RuntimeError('actual DDS movement commands missing')
        if any(abs(x)>1e-12 for x in commands[-1]['linear']+commands[-1]['angular']):raise RuntimeError('final native command not zero')
        journal=[json.loads(line) for line in audit_path.read_text().splitlines()]
        if journal[0]['kind']!='begin' or journal[-1]['kind']!='end':raise RuntimeError('incomplete VM journal')
        footer=journal[-1]
        if footer['suppressed_records'] or footer['dropped_records'] or footer['total_file_bytes']!=audit_path.stat().st_size:raise RuntimeError('VM journal loss/extent mismatch')
        operations=[r for r in journal if r['kind']=='operation']
        if any(r['module_sha256']!=sha(args.wasm) or r['pid']!=vm.pid or r['run_id']!=run_id for r in operations):raise RuntimeError('VM journal source mismatch')
        published=[r for r in operations if r['operation']=='topic.publish' and r['error']==0]
        received=[r for r in operations if r['operation']=='event.poll' and r['error']==0]
        canonical_commands=[struct.pack('<6d',*r['linear'],*r['angular']).hex() for r in commands]
        if [r['canonical_input_hex'] for r in published]!=canonical_commands:
            raise RuntimeError('actual guest-memory command stream differs from native DDS command stream')
        full_matched=0
        for row in received:
            payload=bytes.fromhex(row['canonical_output_hex'])
            sec,nsec=struct.unpack_from('<iI',payload)
            actual=odom.get(sec*1000000000+nsec)
            if not actual or actual['canonical_from_received_message_hex']!=payload.hex():
                raise RuntimeError('complete guest-memory Odometry differs from independently received RMW sample')
            full_matched+=1
        if full_matched<100 or any(not r['response_authorized'] or not r['guest_memory_written'] for r in received) or any(not r['guest_memory_read'] for r in published) or any(not r['response_checked'] or
                r['peer_pid']!=credentials[0] or r['peer_uid']!=os.getuid() for r in published+received):
            raise RuntimeError('missing checked peer/complete guest memory transfer evidence')
        report.update(status='PASS',fully_matched_odometry=full_matched,
                      fully_matched_commands=len(published),task=passed[0],denials=denials,independently_matched_feedback=matched,
                      actual_native_commands=len(commands),command_publisher_nodes=sorted(nodes),command_publisher_gids={k:sorted(v) for k,v in resolved.items()},
                      vm_journal_footer=footer,vm_operation_records=len(operations),
                      scope='one C/Wasm32 statically linked closed-loop app, original SCOUT Gazebo physics/drive, real DDS; not full SDK or performance qualification')
    except BaseException as error:
        report.update(status='FAIL',error=repr(error))
        raise
    finally:
        try:
            if gate_write is not None:os.close(gate_write)
            if audit_fd is not None:os.close(audit_fd)
            native_stop.write_text('stop\n')
            (work/'recorder-stop').write_text('stop\n')
            deadline=time.monotonic()+8
            while time.monotonic()<deadline and any(a['process'].poll() is None for a in actors):
                owned.observe();time.sleep(.05)
        finally:
            try:
                report['owned_retirement']=owned.retire(actors)
                if report['owned_retirement']['status']!='RETIRED':
                    report['status']='FAIL'
                    raise RuntimeError('owned process retirement incomplete')
                if directory is not None:os.close(directory)
            finally:save()

if __name__=='__main__':
    main()
