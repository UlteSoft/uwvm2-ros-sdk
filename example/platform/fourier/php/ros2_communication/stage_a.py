#!/usr/bin/env python3
"""Run the public PHP communication example with explicit native infrastructure.

The official relay, existing restricted gateway and stopped VM are infrastructure.
All ROS requests, freshness decisions, denials and response assertions run inside
the genuine PHP Wasm. This harness neither imports ROS nor creates a ROS client.
"""
from contextlib import ExitStack
import argparse
import hashlib
import importlib.util
import json
import os
from pathlib import Path
import resource
import signal
import subprocess
import sys
import tempfile
import time

CASES = [
    'genuine-runtime-and-raw-abi',
    'official-ros-correlated-first-reply',
    'official-ros-fresh-second-reply',
    'ungranted-topic-alias-denied',
    'retired-publisher-handle-refused',
    'bounded-idle-feedback-timeout',
]
ENVIRONMENT = {'PATH', 'HOME', 'TMPDIR', 'LANG', 'LC_ALL', 'AMENT_PREFIX_PATH',
               'LD_LIBRARY_PATH', 'ROS_DISTRO', 'ROS_DOMAIN_ID', 'RMW_IMPLEMENTATION',
               'ROS_LOCALHOST_ONLY', 'ROS_LOG_DIR'}


def require(value, message):
    """Reject incomplete execution evidence without turning it into a skipped test."""
    if not value:
        raise RuntimeError(message)


def digest(path):
    """Read the complete identity of an actual selected input."""
    with Path(path).open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def process_identity(pid):
    """Read an actual live process image; no argv label substitutes for this image."""
    root = Path('/proc', str(pid))
    try:
        first = (root / 'stat').read_text().rsplit(') ', 1)[1].split()
        if first[0] == 'Z':
            return None
        with (root / 'exe').open('rb') as stream:
            image = os.fstat(stream.fileno())
            sha = hashlib.file_digest(stream, 'sha256').hexdigest()
        argv = (root / 'cmdline').read_bytes()
        after = (root / 'stat').read_text().rsplit(') ', 1)[1].split()
        require(first[19] == after[19] and after[0] != 'Z', 'Process changed during identity observation')
        return {'pid': pid, 'birth': first[19], 'image': os.readlink(root / 'exe'),
                'image_sha256': sha, 'image_bytes': image.st_size,
                'argv_sha256': hashlib.sha256(argv).hexdigest(),
                'cgroup': (root / 'cgroup').read_text().strip(),
                'observed_ns': time.monotonic_ns()}
    except (FileNotFoundError, ProcessLookupError):
        return None


def runtime_arguments(values):
    """Accept explicit compilation/cache options, without adding ROS/WASI grants."""
    require(isinstance(values, list) and len(values) <= 16 and
            all(isinstance(v, str) and '\0' not in v for v in values), 'Invalid runtime compilation arguments')
    index = 0
    seen = set()
    while index < len(values):
        key = values[index]
        require(key in {'-Rct', '-Rllvm-policy', '-Rllvm-cache-path'} and key not in seen,
                'Only explicit compile threads, LLVM policy and cache selection are accepted here')
        seen.add(key)
        size = 2 if key == '-Rllvm-cache-path' else 1
        require(index + size < len(values), 'Incomplete runtime compilation option')
        if key == '-Rct':
            require(values[index + 1].isdigit() and 1 <= int(values[index + 1]) <= 20, 'Compile threads must be1..20')
        elif key == '-Rllvm-policy':
            require(values[index + 1] == 'fast-compile', 'Select the recorded fast-compile policy explicitly')
        else:
            require(values[index + 1] == 'path' and Path(values[index + 2]).is_absolute(), 'Select an absolute writable cache path')
        index += size + 1
    return values


def bounded_child():
    """Keep generated artifacts and raw process output finite, including failures."""
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
    resource.setrlimit(resource.RLIMIT_FSIZE, (32 * 1024**2, 32 * 1024**2))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk', type=Path, required=True)
    parser.add_argument('--target', choices=['wasm32-wasip1'], required=True)
    parser.add_argument('--wasm', type=Path, required=True)
    parser.add_argument('--config', type=Path, required=True)
    parser.add_argument('--qualification-scope', choices=['stage-a', 'full'], default='stage-a')
    parser.add_argument('--report-directory', type=Path, required=True)
    args = parser.parse_args()
    require(sys.platform == 'linux', 'Execute this scenario only on the selected Linux installation')
    sys.path.insert(0, str(args.sdk.resolve(strict=True) / 'tools/shared/python'))
    from pipe_capture import PipeLoggedProcess
    module_path = args.sdk.resolve(strict=True) / 'tools/platform/ros/run.py'
    spec = importlib.util.spec_from_file_location('public_native_ros_launcher', module_path)
    launcher = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(launcher)
    deployment = launcher.deployment
    config_raw = args.config.read_bytes()
    config = json.loads(config_raw, object_pairs_hook=launcher.unique_object)
    require(set(config) == {'format', 'deployment', 'runtime_arguments', 'official_peer', 'native_environment'} and
            config['format'] == 'uwvm-sdk07-php-official-relay-stage-a-v1', 'Select the explicit Stage A deployment format')
    native = config['deployment']
    base = args.config.resolve().parent
    plan = deployment.prepare(native, 'status', args.wasm, base, args.target, 'ros2', 'jazzy')
    require(plan['main_module'] == 'main' and set(plan['modules']) == {'main'} and not plan['preloads'],
            'This first scenario selects one genuine interpreter instance')
    options = runtime_arguments(config['runtime_arguments'])
    runtime = launcher.executable(base, native['runtime'])
    gateway = launcher.executable(base, native['gateway'])
    require('runtime_loader' not in native and 'runtime_library_path' not in native,
            'This profile requires the recorded directly executable VM installation')
    peer = config['official_peer']
    require(isinstance(peer, dict) and set(peer) == {'executable', 'sha256', 'source_commit', 'arguments'} and
            peer['source_commit'] == '462af78b06ad8baafc27ce09cb3dfee96421cfab', 'Select the frozen official topic_tools1.3.4 relay')
    peer_binary = launcher.executable(base, peer['executable'])
    require(digest(peer_binary) == peer['sha256'], 'The official relay executable differs from the selected identity')
    peer_argv = deployment.arguments(peer['arguments'])
    require(len(peer_argv) == 2 and all(v.startswith('/') and len(v) < 256 for v in peer_argv),
            'Select exactly two explicit absolute relay topics')
    environment = config['native_environment']
    require(isinstance(environment, dict) and not set(environment) - ENVIRONMENT and
            all(isinstance(v, str) and '\0' not in v for v in environment.values()), 'Invalid explicit native environment')
    connection = plan['modules']['main']['connection']
    require(environment.get('ROS_DISTRO') == 'jazzy' and
            environment.get('ROS_DOMAIN_ID') == connection['domain-id'] and
            environment.get('RMW_IMPLEMENTATION') == connection['rmw-implementation'], 'Native ROS environment and grant connection differ')
    require(plan['arguments'] and len(plan['arguments']) == 1, 'Supply one explicit fresh guest challenge')
    args.report_directory.mkdir(parents=True, exist_ok=True)
    evidence = Path(tempfile.mkdtemp(prefix='official-relay-', dir=args.report_directory.resolve()))
    result = {'format': 'uwvm-sdk07-php-stage-a-execution-v1', 'status': 'FAIL',
              'qualification_scope': args.qualification_scope, 'plan': plan,
              'deployment_sha256': hashlib.sha256(config_raw).hexdigest(),
              'runtime_sha256': digest(runtime), 'gateway_sha256': digest(gateway),
              'official_peer_sha256': peer['sha256'], 'official_peer_source_commit': peer['source_commit'],
              'Stage_A': {'required': 6, 'selected': 6, 'executed': 0, 'passed': 0, 'failed': 0, 'blocked': 0, 'not_run': 6},
              'Stage_B': {'scope': 'This representative Fourier/Jazzy vendor-simulation profile; full owned matrix remains separately required',
                          'required': 1, 'selected': int(args.qualification_scope == 'full'),
                          'executed': 0, 'passed': 0, 'failed': 0, 'blocked': 1, 'not_run': 0},
              'component_isolation_pass': False, 'whole_assignment_complete': False,
              'actual_actors': []}
    def checkpoint():
        """Retain observed identities even if an outer supervisor interrupts us."""
        temporary = evidence / ('.execution-live-' + str(os.getpid()) + '.json')
        with temporary.open('w') as output:
            json.dump({'status': 'RUNNING_UNQUALIFIED', 'snapshot': result}, output, indent=2)
            output.write('\n')
            output.flush()
            os.fsync(output.fileno())
        os.replace(temporary, evidence / 'execution.live.json')
    checkpoint()
    processes = []
    exit_code = 1
    try:
        with tempfile.TemporaryDirectory(prefix='uwvm-sdk07-ros-') as temporary, ExitStack() as files:
            socket = str(Path(temporary) / 'main.sock')
            argv = deployment.command(plan, [runtime, *options], {'main': socket}, os.getuid(), test=True)
            result['runtime_argv'] = argv
            checkpoint()
            def start(label, argv):
                stdout = files.enter_context((evidence / (label + '.stdout')).open('xb'))
                stderr = files.enter_context((evidence / (label + '.stderr')).open('xb'))
                launch = PipeLoggedProcess if label == 'guest' else subprocess.Popen
                child = launch(argv, stdin=subprocess.DEVNULL, stdout=stdout, stderr=stderr,
                                         env=environment, start_new_session=True, preexec_fn=bounded_child)
                processes.append(child)
                return child
            worker = start('guest', [sys.executable, '-B', str(module_path), '__worker__', *argv])
            launcher.wait_for(lambda: '\nState:\tT' in Path('/proc', str(worker.pid), 'status').read_text(),
                              worker, 10, 'Stopped genuine PHP VM worker')
            official = start('official-relay', [peer_binary, *peer_argv])
            policy = evidence / 'gateway.conf'
            policy.write_text(deployment.gateway_policy('ros2', plan['modules']['main'], socket, os.getuid(), worker.pid))
            policy.chmod(0o600)
            host = start('restricted-host', [gateway, str(policy), *plan['modules']['main']['gateway_arguments']])
            launcher.wait_for(lambda: Path(socket).is_socket(), host, 15, 'Existing restricted ROS2 gateway')
            for label, child, expected in [('official-peer', official, peer['sha256']),
                                           ('restricted-host', host, result['gateway_sha256'])]:
                identity = process_identity(child.pid)
                require(identity and identity['image_sha256'] == expected, 'Actual native actor image differs: ' + label)
                result['actual_actors'].append(dict(identity, role=label))
                checkpoint()
            os.kill(worker.pid, signal.SIGCONT)
            started = time.monotonic()
            vm_observed = False
            while worker.poll() is None:
                require(official.poll() is None and host.poll() is None, 'Official peer or restricted host disconnected')
                require(time.monotonic() - started < plan['deadline'], 'Bounded genuine guest execution timeout')
                if not vm_observed:
                    identity = process_identity(worker.pid)
                    if identity and identity['image_sha256'] == result['runtime_sha256']:
                        result['actual_actors'].append(dict(identity, role='genuine-guest-VM'))
                        checkpoint()
                        vm_observed = True
                time.sleep(.01)
            require((evidence / 'guest.stdout').stat().st_size <= 65536, 'Guest case metadata exceeded64KiB')
            observed, summary = [], None
            for line in (evidence / 'guest.stdout').read_text().splitlines():
                try:
                    row = json.loads(line)
                except json.JSONDecodeError:
                    continue
                if row.get('format') == 'uwvm-sdk-stage-a-case-v1':
                    require(row.get('language') == 'php' and row.get('passed') is True, 'A genuine guest case failed')
                    observed.append(row['case'])
                if row.get('format') == 'uwvm-sdk-stage-a-summary-v1':
                    require(summary is None, 'Duplicate genuine guest summary')
                    summary = row
                require(row.get('format') != 'uwvm-sdk-stage-a-failure-v1', 'Genuine guest failure marker')
            result['Stage_A'].update(executed=len(observed), passed=len(observed), not_run=6-len(observed))
            require(worker.returncode == 0 and vm_observed, 'Guest failed or actual VM executable image was not observed')
            require(observed == CASES and summary is not None and all(summary.get(k) == v for k, v in
                    {'required': 6, 'selected': 6, 'executed': 6, 'passed': 6, 'failed': 0, 'blocked': 0, 'not_run': 0}.items()),
                    'Six actual in-Wasm assertions and their complete summary are required')
            result['Stage_A']['status'] = 'PASS_OFFICIAL_ROS_COMMUNICATION_ONLY'
            result['status'] = 'PASS_STAGE_A_ONLY' if args.qualification_scope == 'stage-a' else 'BLOCKED_REQUIRED_STAGE_B'
            exit_code = 0 if args.qualification_scope == 'stage-a' else 1
    except BaseException as error:
        result['error'] = repr(error)
    finally:
        cleanup = []
        for child in reversed(processes):
            try:
                launcher.stop(child)
            except (OSError, subprocess.TimeoutExpired) as error:
                cleanup.append(repr(error))
        result['owned_processes_reaped'] = all(p.poll() is not None for p in processes)
        if cleanup:
            result.update(status='FAIL_OWNED_PROCESS_RETIREMENT', cleanup_errors=cleanup)
            exit_code = 1
        # Preserve actual partial guest counts even when infrastructure or the
        # guest exits before the successful complete-summary validation above.
        output = evidence / 'guest.stdout'
        if result['status'] != 'PASS_STAGE_A_ONLY' and output.exists() and output.stat().st_size <= 65536:
            passed, failed = set(), set()
            for line in output.read_text(errors='replace').splitlines():
                try:
                    row = json.loads(line)
                except json.JSONDecodeError:
                    continue
                if not isinstance(row, dict) or row.get('case') not in CASES:
                    continue
                if row.get('format') == 'uwvm-sdk-stage-a-case-v1' and row.get('passed') is True:
                    passed.add(row['case'])
                elif row.get('format') == 'uwvm-sdk-stage-a-failure-v1':
                    failed.add(row['case'])
            executed = len(passed | failed)
            result['Stage_A'].update(executed=executed, passed=len(passed), failed=len(failed), not_run=6-executed)
        (evidence / 'execution.json').write_text(json.dumps(result, indent=2) + '\n')
        for name, output in [('guest.stdout', sys.stdout), ('guest.stderr', sys.stderr)]:
            p = evidence / name
            if p.exists() and p.stat().st_size <= 65536:
                output.write(p.read_text(errors='replace'))
        print(json.dumps({'report': str(evidence / 'execution.json'), 'status': result['status'],
                          'Stage_A': result['Stage_A'], 'Stage_B': result['Stage_B']}))
    return exit_code


if __name__ == '__main__':
    raise SystemExit(main())
