# SPDX-License-Identifier: Apache-2.0
"""Execute every Wasm/controller scenario with explicit external host contracts.

The native process only loads the original software model, starts its controller,
transports messages, and observes process identities. Business logic and typed
message validation execute in the unchanged Wasm image in both runtime engines.
This is local functional evidence, not production guardian admission.
"""
from pathlib import Path
import argparse
import json
import os
import shutil
import secrets
import subprocess
import sys
import time
import traceback
parser = argparse.ArgumentParser()
for name in ('sdk-root', 'example', 'wasm', 'config', 'output'):
    parser.add_argument('--' + name, required=True)
args = parser.parse_args()
D = Path(args.sdk_root).resolve()
E = Path(args.example).resolve()
sys.path.insert(0, str(E))
manifest = json.loads((E / "simulation.example.json").read_text())
run = Path(args.output).resolve()
run.mkdir(parents=True, exist_ok=True)
sys.path.insert(0, str(D / 'tools/shared/python'))
import native_fixture as base
from pipe_capture import PipeLoggedProcess
from wasi_policy import test_arguments as wasi_test_arguments
from host_interfaces import authorize_test_imports, interface_arguments
from prepare_scene import prepare as prepare_scene
cfg = json.loads(Path(args.config).read_text())
base.need(cfg.get('format') == 'uwvm-sdk-ros2-joint-fixture-v1', 'Select the current ROS2 joint fixture contract')
base.need(cfg.get('profile') == manifest['profile'], 'The deployment and selected original model profile differ')
base.need(cfg.get('physical_robot_authorized') is False, 'This fixture accepts software simulation only')
base.need(cfg.get('engines') == ['jit', 'int'], 'Both LLVM JIT and interpreter cases are mandatory')
base.need(set(cfg.get('cases', {})) == {'positive', 'denied', 'boundaries', 'cancel', 'timeout', 'disconnect', 'owner', 'foreign'}, 'All eight scenarios are mandatory')
B = Path(cfg['socket_root']).resolve()
base.need(B.is_dir() and B.stat().st_uid == os.getuid() and (B.stat().st_mode & 63 == 0), 'Select an owned private socket directory')
actors, logs = ([], [])
socket_scope = secrets.token_hex(8)
report = {'format': 'uwvm-sdk-ros2-joint-fixture-result-v1', 'scope': manifest['scope'], 'profile': manifest['profile'], 'production_admission': False, 'physical_robot_authorized': False, 'selected': 16, 'cases': [], 'actors': [], 'config_sha256': base.digest(args.config)}

def token(value):
    base.need(type(value) is str and value and (not any((c.isspace() or ord(c) < 32 for c in value))), 'Invalid explicit gateway policy token')
    return value

def launch(name, argv):
    out = (run / (name + '.stdout')).open('wb')
    err = (run / (name + '.stderr')).open('wb')
    logs.extend([out, err])
    proc = subprocess.Popen(argv, stdin=subprocess.DEVNULL, stdout=out, stderr=err, start_new_session=True)
    row = base.process(proc.pid)
    actors.append((proc, {proc.pid: row['birth']}))
    report['actors'].append({'role': name, 'launch': row, 'argv': argv})
    return proc

def live(proc, timeout=3):
    end = time.monotonic() + timeout
    while time.monotonic() < end:
        base.need(proc.poll() is None, ('Native actor exited', proc.args, proc.returncode))
        time.sleep(0.05)
    return base.process(proc.pid)

def config(name, pid, socket):
    selected = cfg['cases'][name]
    base.need(cfg['ros2']['enabled'] is True, 'Explicit ROS2 namespace authorization required')
    arguments = list(cfg['runtime']['arguments'])
    base.need(all((type(x) is str and '\x00' not in x for x in arguments)), 'Invalid explicit runtime arguments')
    base.need(not any((x in ('--run', '-r', '--runtime-int', '-Rint', '--runtime-aot', '-Raot') for x in arguments)), 'The test owns its artifact and engine selection')
    argv = ['--runtime-aot' if engine == 'jit' else '--runtime-int', *arguments, '--wasm-set-main-module-name', 'main', '--ros2-global-add-module', 'main', '--ros2-global-enable']
    argv += interface_arguments('ros2', 'global', None, cfg['ros2']['interfaces'])
    lines = ['backend ros2', 'worker-uid ' + str(os.getuid()), 'worker-pid ' + str(pid), 'socket ' + str(socket)]
    for key, value in cfg['ros2']['connection'].items():
        argv += ['--ros2-global-' + token(key), token(value)]
        lines += ['connection ' + key + ' ' + value]
    argv += ['--ros2-global-gateway-socket', str(socket), '--ros2-global-gateway-uid', str(os.getuid()), '--ros2-global-connect-timeout-ms', str(cfg['ros2']['connect_timeout_ms'])]
    for grant in selected['grants']:
        fields = [token(grant[key]) for key in ('alias', 'operation', 'resource', 'type', 'native_identity')]
        argv += ['--ros2-global-grant', *fields]
        lines += ['grant ' + ' '.join(fields)]
        for key, value in grant['settings'].items():
            argv += ['--ros2-global-set', grant['alias'], token(key), token(value)]
            lines += ['set ' + grant['alias'] + ' ' + key + ' ' + value]
    return (wasi_test_arguments(argv, selected['wasi_policy']), '\n'.join(lines) + '\n')
try:
    report['security'] = base.require_unprivileged()
    base.need(cfg['ros2']['connection']['domain-id'] == os.environ.get('ROS_DOMAIN_ID'), 'Native and VM domain differ')
    base.need(cfg['ros2']['connection']['rmw-implementation'] == os.environ.get('RMW_IMPLEMENTATION'), 'Native and VM RMW differ')
    native_files = {Path(entry['path']).resolve() for entry in cfg['native']['files']}
    for role in ('robot_state_publisher', 'controller_manager', 'spawner', 'controller_plugin'):
        base.need(Path(cfg['native'][role]).resolve() in native_files, 'Native role requires explicit byte identity: ' + role)
    for entry in [cfg['runtime'], cfg['gateway'], *cfg['native']['files']]:
        path = entry.get('executable', entry.get('path'))
        base.need(Path(path).is_absolute() and base.digest(path) == entry['sha256'], 'Configured native/runtime bytes differ: ' + str(path))
    report['scene'] = prepare_scene(run)
    description = Path(report['scene']['description']).read_text()
    namespace = cfg['ros2']['connection']['namespace']
    rsp = launch('robot_state_publisher', [cfg['native']['robot_state_publisher'], '--ros-args', '-r', '__ns:=' + namespace, '-p', 'robot_description:=' + description])
    manager = launch('controller_manager', [cfg['native']['controller_manager'], '--ros-args', '-r', '__ns:=' + namespace, '--params-file', report['scene']['controllers']])
    live(rsp, 1)
    live(manager, 1)
    spawner = launch('spawner', [cfg['native']['spawner'], 'joint_state_broadcaster', report['scene']['controller_name'], '--controller-manager', namespace.rstrip('/') + '/controller_manager', '--controller-manager-timeout', '30'])
    base.need(spawner.wait(timeout=60) == 0, 'Original controller activation failed')
    for entry, proc in zip(report['actors'][:2], [rsp, manager]):
        entry['actual'] = live(proc, 0.2)
        base.check_resource_boundary(entry['actual'])
        entry['maps'] = (Path('/proc') / str(proc.pid) / 'maps').read_text()
        entry['security_status'] = (Path('/proc') / str(proc.pid) / 'status').read_text()
    plugin = Path(cfg['native']['controller_plugin']).resolve()
    base.need(str(plugin) in report['actors'][1]['maps'], 'Original scaled controller is not mapped in the actual controller manager')
    print('Original software controller activated: ' + manifest['profile'], flush=True)
    vm_record = cfg['runtime']
    vm = vm_record['executable']
    gateway = cfg['gateway']['executable']
    report['runtime_sha256'] = vm_record['sha256']
    report['gateway_sha256'] = base.digest(gateway)
    wasm = run / 'guest.wasm'
    shutil.copy2(Path(args.wasm), wasm)
    wasm.chmod(256)
    report['wasm_path'] = str(wasm)
    report['wasm_sha256'] = base.digest(wasm)

    def start_case(name, number):
        root = run / engine / name
        root.mkdir(parents=True)
        socket = B / ('g-' + socket_scope + '-' + engine[0] + str(number))
        base.need(not socket.exists(), 'Fixture invariant failed: not socket.exists()')
        stdout = (root / 'vm.stdout').open('wb')
        stderr = (root / 'vm.stderr').open('wb')
        logs.extend([stdout, stderr])
        arguments, _ = config(name, 1, socket)
        argv = authorize_test_imports([vm, *arguments, '--run', str(wasm), name, '37', *report['scene']['joint_names']])
        # Keep the gateway-admitted process lifetime through actual VM exec.
        worker = PipeLoggedProcess([sys.executable, '-B', str(D / 'tools/shared/python/native_fixture.py'), '--exec-runtime-gate', vm, vm_record['sha256'], *argv[1:]], stdin=subprocess.PIPE, stdout=stdout, stderr=stderr, start_new_session=True, nonblocking_stdin=False)
        owner = base.process(worker.pid)
        actors.append((worker, {worker.pid: owner['birth']}))
        _, policy = config(name, worker.pid, socket)
        policy_path = root / 'gateway.conf'
        policy_path.write_text(policy)
        policy_path.chmod(256)
        gw = launch('gateway-' + engine + '-' + name, [gateway, str(policy_path)])
        end = time.monotonic() + 120
        while not socket.exists():
            base.need(gw.poll() is None and time.monotonic() < end, 'Gateway admission refused')
            time.sleep(0.01)
        worker.stdin.write(b'E')
        worker.stdin.flush()
        while '"READY"' not in (root / 'vm.stdout').read_text():
            base.need(worker.poll() is None and gw.poll() is None and (time.monotonic() < end), 'VM did not reach Wasm barrier')
            time.sleep(0.02)
        actual = base.process(worker.pid)
        base.need(actual['executable_sha256'] == vm_record['sha256'], "Fixture invariant failed: actual['executable_sha256'] == vm_record['sha256']")
        base.check_resource_boundary(actual)
        record = {'id': engine + '/' + name, 'engine': engine, 'scenario': name, 'argv': argv, 'actual_vm': actual, 'actual_gateway': base.process(gw.pid)}
        report['cases'].append(record)
        worker.stdin.write(b'I')
        worker.stdin.flush()
        return dict(name=name, worker=worker, gw=gw, root=root, record=record, end=end)

    def wait_phase(subject, phase):
        while phase not in (subject['root'] / 'vm.stdout').read_text():
            base.need(subject['worker'].poll() is None and subject['gw'].poll() is None and (time.monotonic() < subject['end']), 'Wasm phase unavailable: ' + phase)
            time.sleep(0.01)

    def finish_case(subject):
        worker = subject['worker']
        gw = subject['gw']
        record = subject['record']
        root = subject['root']
        code = worker.wait(timeout=40)
        rows = [json.loads(line) for line in (root / 'vm.stdout').read_text().splitlines() if line.startswith('{')]
        record.update(exit=code, guest=rows)
        print(subject['name'], code, rows, flush=True)
        base.need(code == 0 and rows[-1]['status'] == 'PASS', 'Wasm guest assertion failed')
        base.retire_session(gw, {gw.pid: record['actual_gateway']['birth']})
    for engine in cfg['engines']:
        for number, name in enumerate(('positive', 'denied', 'boundaries', 'cancel', 'timeout', 'disconnect')):
            subject = start_case(name, number)
            if name == 'disconnect':
                wait_phase(subject, 'WAITING_DISCONNECT')
                gw = subject['gw']
                base.retire_session(gw, {gw.pid: subject['record']['actual_gateway']['birth']})
                subject['worker'].stdin.write(b'D')
                subject['worker'].stdin.flush()
            finish_case(subject)
        owner_case = start_case('owner', 6)
        wait_phase(owner_case, 'OWNED_HANDLE')
        owner_event = next((json.loads(line) for line in (owner_case['root'] / 'vm.stdout').read_text().splitlines() if 'OWNED_HANDLE' in line))
        foreign_case = start_case('foreign', 7)
        wait_phase(foreign_case, 'OWNED_HANDLE')
        foreign_case['worker'].stdin.write(int(owner_event['handle']).to_bytes(8, 'little'))
        foreign_case['worker'].stdin.flush()
        finish_case(foreign_case)
        owner_case['worker'].stdin.write(b'C')
        owner_case['worker'].stdin.flush()
        finish_case(owner_case)
    base.need(report['wasm_sha256'] == base.digest(wasm), "Fixture invariant failed: report['wasm_sha256'] == base.digest(wasm)")
    report['status'] = 'PASS'
except BaseException as e:
    report.update(status='FAIL', error=repr(e), traceback=traceback.format_exc())
    print(report['traceback'], flush=True)
finally:
    failures = []
    for proc, owners in reversed(actors):
        try:
            base.retire_session(proc, owners)
        except BaseException as e:
            failures.append({'argv': proc.args, 'pid': proc.pid, 'error': repr(e), 'remaining': base.session_members(proc.pid)})
    for log in logs:
        log.close()
    report['retirement_errors'] = failures
    if failures:
        report['status'] = 'FAIL'
    report['executed'] = sum(('exit' in c for c in report['cases']))
    report['passed'] = sum((c.get('exit') == 0 and c.get('guest', [{}])[-1].get('status') == 'PASS' for c in report['cases']))
    report['failed'] = report['executed'] - report['passed']
    report['blocked'] = report['selected'] - report['executed']
    report['skipped'] = 0
    if report['passed'] != report['selected']:
        report['status'] = 'FAIL'
    for case in report['cases']:
        for name in ('stdout', 'stderr'):
            path = run / case['id'] / ('vm.' + name)
            if path.is_file():
                case[name] = {'path': str(path), 'sha256': base.digest(path)}
    report['wasm_sha256_after'] = base.digest(wasm) if 'wasm' in globals() and wasm.is_file() else None
    report['wasm_sha256_before'] = report.get('wasm_sha256')
    (run / 'suite.json').write_text(json.dumps(report, indent=2) + '\n')
    print('Result', run, report['status'], flush=True)
raise SystemExit(0 if report['status'] == 'PASS' else 1)
