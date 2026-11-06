"""Public process/evidence fixture; all SDK operations/assertions are in Wasm."""
from pathlib import Path
import argparse
import importlib.util
import json
import os
import resource
import secrets
import subprocess
import sys
import time

BASE = Path(__file__).resolve().parent.parent/'official_ros_communication/test_communication.py'
spec = importlib.util.spec_from_file_location('sdk02_public_process_evidence', BASE)
base = importlib.util.module_from_spec(spec)
spec.loader.exec_module(base)
need, digest, read_log = base.need, base.digest, base.read_log
CASES = ('positive','denied','stale','timeout')


import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[6] / "tools/shared/python"))
from wasi_policy import test_arguments as wasi_test_arguments
from host_interfaces import authorize_test_imports
from pipe_capture import PipeLoggedProcess


exec_runtime_gate = base.exec_runtime_gate


def actor(child, expected, known):
    row = base.process(child.pid)
    supervisor = base.process(os.getpid())
    need((row['membership'],row['cgroup_inode'],row['cgroup_namespace'])==
         (supervisor['membership'],supervisor['cgroup_inode'],supervisor['cgroup_namespace']),
         'Actual actor left the admitted fixture supervisor leaf')
    need(row['executable_sha256']==expected and row['memory.max']=='68719476736'
         and row['memory.swap.max']=='0' and row['cpuset.cpus.effective']==supervisor['cpuset.cpus.effective'],
         'Actual actor executable or kernel limits differ')
    need(row['file_limit_soft']==row['file_limit_hard']=='134217728',
         'Actual actor must inherit the128MiB regular-file cap')
    known[child.pid] = row['birth']
    return row


def guest_events(text, case, seed):
    # A regular-file read can end while the child is still writing its line.
    rows = [json.loads(line.split(':',1)[1]) for line in text.splitlines(keepends=True)
            if line.endswith('\n') and line.startswith('SDK02_PARAMETER_CASE:')]
    need(len(rows)<=2, 'Duplicate guest events')
    for row in rows:
        need(row['format']=='sdk02-official-parameter-guest-event-v1'
             and row['id']==case and row['challenge']==seed, 'Guest case identity differs')
    if rows:
        need(rows[0]['phase']=='start' and rows[0]['status']=='RUNNING', 'Actual guest start missing')
    if len(rows)==2:
        need(rows[1]['phase']=='finish' and rows[1]['status'] in ('PASS','FAIL'), 'Actual finish missing')
    return rows


def expand(text, values):
    for key,value in values.items():
        text = text.replace(key,str(value))
    need('@SDK02_' not in text, 'Unbound deployment marker')
    return text


def desired(case, peer_node, absent_node):
    resource_name = peer_node+'/use_sim_time'
    values = {'parameter_read':('param.get',resource_name),
              'parameter_write':('param.set',resource_name)} if case=='positive' else (
             {'parameter_write':('param.set',resource_name)} if case=='stale' else (
             {'absent_parameter':('param.get',absent_node+'/use_sim_time')} if case=='timeout' else {}))
    return {name:(operation,path,'builtin/bool-v1','builtin:param-bool-v1')
            for name,(operation,path) in values.items()}


def verify_grants(policy, arguments, expected):
    native = {}
    for line in policy.splitlines():
        columns = line.split()
        if columns and columns[0]=='grant':
            need(len(columns)==6 and columns[1] not in native, 'Malformed native grant')
            native[columns[1]] = tuple(columns[2:])
    need(native==expected, 'Native grants must be exactly the selected case authority')
    guest = {}
    index = 0
    while index<len(arguments):
        value = arguments[index]
        need(not any(word in value.lower() for word in
                     ('unwind','unsafe','unchecked','preload','module-exports','interpreter')),
             'Use the default checked runtime and owner checks')
        need(not value.startswith('--ros2-single-') and not value.startswith('--ros1-'),
             'This finite one-module route uses only its explicit ROS2 global configuration')
        if value=='--ros2-global-grant':
            need(index+5<len(arguments), 'Truncated VM grant')
            alias = arguments[index+1]
            need(alias not in guest, 'Duplicate VM grant')
            guest[alias] = tuple(arguments[index+2:index+6])
            index += 6
        else:
            index += 1
    need(guest==expected, 'VM grants must exactly match the independent native policy')
    need('--runtime-aot' in arguments and '--runtime-llvm-jit-cache-path' in arguments,
         'Select native AOT and explicit disabled LLVM cache')
    cache = arguments.index('--runtime-llvm-jit-cache-path')
    need(cache+1<len(arguments) and arguments[cache+1]=='disable', 'Explicit cache-off route required')
    need('--run' not in arguments and '-r' not in arguments, 'Fixture appends the sole application')


def audit(text, case, peer_node, absent_node):
    rows = base.audit_records(text)
    need(rows and all(row.get('module') for row in rows), 'Actual module-correlated VM audit required')
    allowed = [row for row in rows if row.get('event')=='allow' and row.get('error')==0
               and row.get('operation') in ('param.get','param.set')]
    counts = {operation:sum(row.get('operation')==operation for row in allowed)
              for operation in ('param.get','param.set')}
    need(counts==({'param.get':3,'param.set':2} if case=='positive' else
                  {'param.get':1 if case=='timeout' else 0,'param.set':0}),
         'Actual authorized parameter operation counts differ')
    target = (absent_node if case=='timeout' else peer_node)+'/use_sim_time'
    need(all(row.get('resource')==target and type(row.get('instance')) is int
             and row['instance']>0 for row in allowed), 'Actual authority/resource binding differs')
    if allowed:
        need(len({(row['module'],row['instance']) for row in allowed})==1,
             'Parameter responses cross guest instances')
    if case in ('denied','stale'):
        need(any(row.get('error')==(13 if case=='denied' else 9) for row in rows),
             'Actual permission or stale-handle refusal audit missing')
    if case=='timeout':
        need(any(row.get('event')=='gateway-error' and row.get('error')==110 for row in rows),
             'Bounded real host timeout audit missing')
    return rows


def run_case(config, wasm, root, case):
    root.mkdir(mode=0o700)
    socket = root/'g.sock'
    need(len(str(socket).encode())<100, 'Select a short explicit evidence root for Unix sockets')
    seed = secrets.randbelow(899999)+1
    suffix = secrets.token_hex(6)
    peer_node = '/sdk02_official_'+suffix
    absent_node = '/sdk02_absent_'+suffix
    selected = config['cases'][case]
    row = {'id':case,'challenge':seed,'status':'BLOCKED','guest_started':False,
           'guest_finished':False,'peer_node':peer_node,'started_ns':time.monotonic_ns()}
    children = []
    handles = []
    known = {}
    def spawn(name, argv, stdin=False):
        out = (root/(name+'.stdout')).open('xb')
        err = (root/(name+'.stderr')).open('xb')
        handles.extend((out,err))
        if name == "vm": argv = authorize_test_imports(argv)
        launch = PipeLoggedProcess if name == "vm" else subprocess.Popen
        pipe_options = {"nonblocking_stdin": False} if name == "vm" else {}
        child = launch(argv,stdin=subprocess.PIPE if stdin else subprocess.DEVNULL, **pipe_options,
                 stdout=out,stderr=err,start_new_session=True,
                 env=dict(os.environ,**config['ROS_environment'],PYTHONDONTWRITEBYTECODE='1'))
        children.append(child)
        return child
    try:
        # The original official tf2 node keeps its normal parameter services.
        # Its fixed transform is fixture setup, never an SDK business request.
        peer_argv = [config['official_peer'],'--frame-id','sdk02_parent_'+suffix,
                     '--child-frame-id','sdk02_child_'+suffix,'--ros-args','-r',
                     '__node:='+peer_node[1:],'-r','__ns:=/','-p','use_sim_time:=false']
        row['official_peer_argv'] = peer_argv
        peer = spawn('official-peer',peer_argv)
        row['peer_before'] = actor(peer,config['official_peer_sha256'],known)
        observer_output = root/'observer.json'
        observer = spawn('observer',[sys.executable,'-B',str(Path(__file__).with_name('observe_parameter_events.py')),
                                   '--node',peer_node,'--output',str(observer_output)])
        row['observer_before'] = actor(observer,digest(Path(sys.executable).resolve()),known)
        ready_deadline = time.monotonic()+12
        while not observer_output.is_file() or not json.loads(observer_output.read_text())['ready']:
            need(observer.poll() is None and peer.poll() is None and time.monotonic()<ready_deadline,
                 'Actual official peer/read-only observer startup failed')
            time.sleep(.05)
        row['official_peer_discovery'] = json.loads(observer_output.read_text())
        need(row['official_peer_discovery']['ready'], 'Official parameter endpoints were not discovered')
        # This is discovery/quiescence time, never a substitute for a ROS reply.
        time.sleep(.5)
        values = {'@SDK02_GATEWAY_SOCKET@':socket,'@SDK02_PEER_NODE@':peer_node,
                  '@SDK02_ABSENT_NODE@':absent_node,'@SDK02_UID@':os.getuid()}
        arguments = [expand(value,values) for value in selected['runtime_arguments']]
        arguments = wasi_test_arguments(arguments, selected.get('wasi_policy'))
        # The VM checks the gateway before it enters Wasm. Hold a supervisor
        # child at an exec gate so the gateway can first pin the eventual VM's
        # exact PID and lifetime; exec preserves both PID and process birth.
        runtime = spawn('vm',[sys.executable,'-B',str(Path(__file__).resolve()),
            '--exec-runtime-gate',config['runtime'],config['runtime_sha256'],
            *arguments,'--run',str(wasm),case,str(seed)],stdin=True)
        row['runtime_launch_gate'] = actor(runtime,digest(Path(sys.executable).resolve()),known)
        values['@SDK02_WORKER_PID@'] = runtime.pid
        template = selected['gateway_configuration']
        need(type(template) is str and len(template.encode())<=1048576 and
             all(marker in template for marker in ('@SDK02_WORKER_PID@','@SDK02_UID@','@SDK02_GATEWAY_SOCKET@')),
             'Complete native policy must bind the actual VM PID, UID and private socket')
        policy = expand(template,values)
        verify_grants(policy,arguments,desired(case,peer_node,absent_node))
        policy_path = root/'trusted-policy'
        descriptor = os.open(policy_path,os.O_WRONLY|os.O_CREAT|os.O_EXCL,0o600)
        with os.fdopen(descriptor,'w') as stream: stream.write(policy)
        gateway = spawn('gateway',[config['gateway'],str(policy_path)])
        deadline = time.monotonic()+10
        while not socket.is_socket():
            need(gateway.poll() is None and time.monotonic()<deadline, 'Actual production gateway startup failed')
            time.sleep(.02)
        row['gateway_before_credit'] = actor(gateway,config['gateway_sha256'],known)
        # The gateway creates its own DDS participant after the independent
        # observer. Allow its discovery to settle; guest replies remain the
        # sole evidence of successful SDK parameter operations.
        time.sleep(2)
        need(gateway.poll() is None and peer.poll() is None and observer.poll() is None,
             'Official deployment exited before runtime execution')
        row['runtime_exec_credit_ns'] = time.monotonic_ns()
        runtime.stdin.write(b'E');runtime.stdin.flush()
        start_deadline = time.monotonic()+35
        while True:
            events = guest_events(read_log(root/'vm.stdout'),case,seed)
            if events: break
            need(runtime.poll() is None and gateway.poll() is None
                 and time.monotonic()<start_deadline, 'Actual Wasm start barrier missing')
            time.sleep(.02)
        row['guest_started'] = True
        row['vm_before_credit'] = actor(runtime,config['runtime_sha256'],known)
        need(row['vm_before_credit']['birth'] == row['runtime_launch_gate']['birth'],
             'Runtime execution replaced the gateway-bound process lifetime')
        row['startup_credit_ns'] = time.monotonic_ns()
        runtime.stdin.write(b'R');runtime.stdin.flush();runtime.stdin.close()
        deadline = time.monotonic()+25
        while runtime.poll() is None:
            need(time.monotonic()<deadline and gateway.poll() is None and peer.poll() is None
                 and observer.poll() is None, 'Actual finite parameter case failed or timed out')
            for name in ('vm','gateway','official-peer','observer'):
                read_log(root/(name+'.stdout'));read_log(root/(name+'.stderr'))
            time.sleep(.02)
        events = guest_events(read_log(root/'vm.stdout'),case,seed)
        row['runtime_exit'] = runtime.returncode
        row['guest_events'] = events
        row['guest_finished'] = len(events) == 2
        need(runtime.returncode==0 and len(events)==2 and events[-1]['status']=='PASS'
             and events[-1]['failure']==0 and events[-1]['assertions']>0
             and events[-1]['parameter_operations']=={'positive':5,'denied':0,'stale':1,'timeout':1}[case],
             'The real Wasm did not assert the required request/result behavior')
        row['audit'] = audit(read_log(root/'vm.stderr'),case,peer_node,absent_node)
        observation_deadline = time.monotonic()+2
        changes = []
        while time.monotonic()<observation_deadline:
            observation = json.loads(observer_output.read_text())
            changes = [event for event in observation['changes']
                       if event['received_monotonic_ns']>=row['startup_credit_ns']]
            if case=='positive' and len(changes)>=2: break
            time.sleep(.05)
        need([event['value'] for event in changes]==([True,False] if case=='positive' else []),
             'Independent native observation disagrees with real guest writes or no-effect denial')
        row['independent_observed_changes'] = changes
        row['peer_after'] = actor(peer,config['official_peer_sha256'],known)
        need(row['peer_after']['birth']==row['peer_before']['birth'], 'Official peer was replaced')
        row.update(status='PASS',executed=1,passed=1,finished_ns=time.monotonic_ns(),
                   native_observer_is_SDK_application=False,Stage_B_passed=False)
        return row
    except BaseException as error:
        row.update(status='FAIL_OR_BLOCKED',error=repr(error),finished_ns=time.monotonic_ns())
        raise
    finally:
        retirement_errors = []
        try:
            for child in reversed(children):
                try:
                    if child.pid not in known and child.poll() is None:
                        known[child.pid] = base.process(child.pid)['birth']
                    base.retire_session(child,known)
                except BaseException as error:
                    retirement_errors.append({'pid':child.pid,'error':repr(error)})
            row['all_created_sessions_retired'] = not retirement_errors
            need(not retirement_errors, 'Created session retirement incomplete')
        except BaseException as error:
            row.update(status='FAIL_RETIREMENT',retirement_error=repr(error),
                       retirement_errors=retirement_errors,all_created_sessions_retired=False)
            raise
        finally:
            for stream in handles:stream.close()
            (root/'result.json').write_text(json.dumps(row,indent=2,sort_keys=True)+'\n')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--wasm',type=Path,required=True)
    parser.add_argument('--config',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    args = parser.parse_args()
    resource.setrlimit(resource.RLIMIT_CORE,(0,0))
    resource.setrlimit(resource.RLIMIT_FSIZE,(134217728,134217728))
    report = {'format':'sdk02-official-parameter-communication-tests-v1','status':'BLOCKED',
              'Stage_A':{'required':4,'selected':4,'executed':0,'passed':0,
                         'failed_executed':0,'blocked':4,'not_run':4,'skipped':0},
              'Stage_B_passed':0,'full_framework_acceptance':False,'cases':[]}
    code = 1
    args.output.mkdir(parents=True,mode=0o700)
    try:
        config = json.loads(args.config.read_text())
        need(config['format']=='sdk02-official-parameter-run-v1' and set(config['cases'])==set(CASES),
             'All four cases need complete explicit native/VM deployments')
        environment = config['ROS_environment']
        need(set(environment)=={'ROS_DOMAIN_ID','RMW_IMPLEMENTATION','ROS_SECURITY_ENABLE'}
             and type(environment['ROS_DOMAIN_ID']) is str
             and environment['ROS_DOMAIN_ID'].isdigit()
             and 0<=int(environment['ROS_DOMAIN_ID'])<=232
             and environment['RMW_IMPLEMENTATION']=='rmw_fastrtps_cpp'
             and environment['ROS_SECURITY_ENABLE']=='false',
             'This finite private-domain route requires its explicit reviewed test environment')
        need(not any(os.environ.get(name) for name in ('LD_PRELOAD','ROS_DISCOVERY_SERVER',
             'FASTDDS_DEFAULT_PROFILES_FILE','FASTRTPS_DEFAULT_PROFILES_FILE',
             'ROS_SECURITY_KEYSTORE','ROS_SECURITY_ROOT_DIRECTORY','ROS_SECURITY_NODE_DIRECTORY')),
             'Unexpected ambient loader/discovery/security selection')
        wasm = args.wasm.resolve()
        need(0<wasm.stat().st_size<=67108864, 'Frozen Wasm exceeds the explicit file bound')
        for name in ('runtime','gateway','official_peer'):
            need(Path(config[name]).is_file() and os.access(config[name],os.X_OK)
                 and digest(config[name])==config[name+'_sha256'], 'Actual executable identity differs: '+name)
        need(Path(config['official_peer']).name=='static_transform_publisher'
             and Path(config['official_peer']).parent.name=='tf2_ros',
             'Select the original official ROS tf2_ros parameter-service peer')
        report.update(wasm_sha256=digest(wasm),configuration_sha256=digest(args.config))
        report['fixture_supervisor'] = base.process(os.getpid())
        for case in CASES:
            case_root = args.output.resolve()/case
            try:
                row = run_case(config,wasm,case_root,case)
            finally:
                if (case_root/'result.json').is_file():
                    row = json.loads((case_root/'result.json').read_text())
                    report['cases'].append(row)
                    if row['guest_started']:
                        report['Stage_A']['executed'] += 1
                        if row['status']=='PASS': report['Stage_A']['passed'] += 1
                        else: report['Stage_A']['failed_executed'] += 1
                    report['Stage_A']['blocked'] = 4-report['Stage_A']['executed']
                    report['Stage_A']['not_run'] = report['Stage_A']['blocked']
        need(report['Stage_A']['executed']==report['Stage_A']['passed']==4,'Zero/partial execution cannot pass')
        report['status'] = 'PASS_FINITE_OFFICIAL_PARAMETER_COMMUNICATION_ONLY'
        code = 0
    except BaseException as error:
        report['error'] = repr(error)
    finally:
        report['finished_ns'] = time.monotonic_ns()
        (args.output/'SUMMARY.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    return code


if __name__=='__main__':
    if len(sys.argv) > 1 and sys.argv[1] == '--exec-runtime-gate':
        exec_runtime_gate(sys.argv[2:])
    else:
        raise SystemExit(main())
