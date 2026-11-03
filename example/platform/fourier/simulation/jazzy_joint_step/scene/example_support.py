"""Vendor fixture data and actual actor checks for the pinned ideal ROS scene."""
from pathlib import Path
import importlib.util
import json
import os
import sys
import time
from types import SimpleNamespace


def common(sdk):
    """Load the installed, versioned SDK lifecycle API; supply no private host."""
    path = Path(sdk) / 'tools/shared/python/simulation_example.py'
    spec = importlib.util.spec_from_file_location('uwvm_installed_simulation_v1', path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    if module.API_VERSION != 1:
        raise RuntimeError('BLOCKED_SIMULATION_API_VERSION')
    return module


def save(path, value):
    """Write one fresh bounded diagnostic, preserving existing invocation bytes."""
    raw = (json.dumps(value, indent=2) + '\n').encode()
    if len(raw) > 1048576:
        raise RuntimeError('Fixture diagnostic exceeds one MiB')
    with Path(path).open('xb') as output:
        output.write(raw)


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def context(sdk, manifest, wasm, output):
    api = common(sdk)
    args = SimpleNamespace(sdk_root=str(sdk), manifest=str(manifest), wasm=str(wasm), output=str(output))
    value = api.Context(args, api.read_json(manifest))
    try:
        value.prepare()
    except Exception as error:
        diagnostic = dict(status='BLOCKED_CONTEXT_PREPARATION', error=repr(error),
            observed_monotonic_ns=time.monotonic_ns(), python_executable=sys.executable,
            python_version=sys.version, python_search_path=list(sys.path),
            manifest_sha256=api.digest(manifest), wasm_sha256=api.digest(wasm),
            environment={key: os.environ.get(key) for key in
                ('AMENT_PREFIX_PATH', 'CMAKE_PREFIX_PATH', 'LD_LIBRARY_PATH', 'PYTHONPATH',
                 'PATH', 'RMW_IMPLEMENTATION', 'ROS_DOMAIN_ID', 'ROS_LOCALHOST_ONLY')})
        try:
            diagnostic['actual_process'] = api.process_identity(os.getpid())
        except Exception as identity_error:
            diagnostic['actual_process_observation_error'] = repr(identity_error)
        try:
            save(value.output / 'prepare-failure.json', diagnostic)
        except Exception as write_error:
            print('Context failure diagnostic could not be retained: ' + repr(write_error), file=sys.stderr)
        raise
    return api, value


def program(ctx, name):
    """Resolve only an explicitly installed and whole-file-pinned dependency."""
    entry = ctx.deployment['programs'][name]
    api = common(ctx.sdk)
    require(api.digest(entry['path']) == entry['sha256'], 'BLOCKED_PROGRAM_IDENTITY: ' + name)
    return entry['path']


def live_actor(ctx, actor):
    """Record the actual executed inode, full image hash, limits and live lease."""
    ctx.guard()
    api = common(ctx.sdk)
    proc = Path('/proc') / str(actor['pid'])
    require(api.birth(actor['pid']) == actor['birth'], 'Actual actor birth changed')
    info = (proc / 'exe').stat()
    result = dict(ctx.actor_identity(actor['pid']), executable_device=info.st_dev,
                  executable_inode=info.st_ino, executable_bytes=info.st_size,
                  limits=(proc / 'limits').read_text(), status=(proc / 'status').read_text(),
                  observed_monotonic_ns=time.monotonic_ns())
    require('Max core file size        0' in result['limits'], 'Actual actor core limit differs')
    require(api.birth(actor['pid']) == actor['birth'], 'Actor changed during actual observation')
    ctx.guard()
    return result


def await_condition(ctx, predicate, seconds, description, actors=()):
    deadline = time.monotonic() + seconds
    while True:
        ctx.sample()
        require(all(a['process'].poll() is None for a in actors), description + ': actor exited')
        if predicate():
            return
        require(time.monotonic() < deadline, description + ': deadline')
        time.sleep(.05)
