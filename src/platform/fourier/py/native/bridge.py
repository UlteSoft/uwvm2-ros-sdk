#!/usr/bin/env python3
# @file bridge.py
# @brief Provide the complete fourier bridge.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
# encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
"""Explicit, default-denied ROS1/ROS2 bridge to the native Aurora client.

This program is an operator-owned native process. It must never run inside a
Guest or be reachable through a raw socket/process import. No SDK or ROS module
is imported when --allow is absent. Each selected business method gets its own
service. The snapshot is an explicit service, not an automatic subscription.
Policy/module updates, debugger administration and arbitrary native methods are
not exposed. Every physical bound and endpoint namespace is operator supplied.

One bridge namespace belongs to one principal. Increasing per-operation
sequences are consumed before an SDK call, including failed calls. There is no
retry after a timeout, native exception or unknown controller result. Restart
requires the operator to reconcile outcomes and select a fresh namespace.
"""
import argparse
import hashlib
from importlib import metadata
import json
import math
import os
from pathlib import Path
import re
import stat
import sys
import threading
import time

READS = {
    'get_fsm_state': ('GetFsmState', 'value'), 'get_fsm_name': ('GetFsmName', 'value'),
    'get_upper_fsm_state': ('GetUpperFsmState', 'value'), 'get_upper_fsm_name': ('GetUpperFsmName', 'value'),
    'get_velocity_source': ('GetVelocitySource', 'value'), 'get_velocity_source_name': ('GetVelocitySourceName', 'value'),
    'get_stand_pose': ('GetStandPose', 'values'), 'get_group_state': ('GetGroupState', 'values'),
    'get_cartesian_state': ('GetCartesianState', 'values'), 'get_group_motor_cfg': ('GetGroupMotorCfg', 'values'),
    'get_base_data': ('GetBaseData', 'values'), 'get_contact_data': ('GetContactData', 'values'),
    'get_group_motion_state': ('GetGroupMotionState', 'value'),
    'wait_groups_motion_complete': ('WaitGroupsMotionComplete', 'complete'), 'snapshot': ('GetSnapshot', 'value'),
}
WRITES = {
    'set_fsm_state': ('SetFsmState', None), 'set_upper_fsm_state': ('SetUpperFsmState', None),
    'set_velocity_source': ('SetVelocitySource', None), 'set_velocity': ('SetVelocity', None),
    'set_stand_pose': ('SetStandPose', None), 'set_group_cmd': ('SetGroupCommand', None),
    'set_motor_cfg_pd': ('SetMotorCfgPd', None), 'set_move_command': ('ExecuteMove', None),
}
OPERATIONS = dict(READS, **WRITES)
BASE_KEYS = {'quat_xyzw', 'quat_wxyz', 'rpy', 'omega_W', 'acc_W', 'omega_B', 'acc_B', 'vel_W', 'pos_W', 'vel_B'}


def finite(value):
    if isinstance(value, bool) or not isinstance(value, (int, float)) or not math.isfinite(value):
        raise ValueError('Finite numeric value required')
    return float(value)


def text(value):
    if not isinstance(value, str) or '\0' in value or len(value.encode('utf-8')) > 128:
        raise ValueError('Bounded UTF-8 text required')
    return value


def vector(values):
    result = []
    for index, value in enumerate(values):
        if index == 64:
            raise ValueError('Vector capacity exceeded')
        result.append(finite(value))
    return result


def audit(operation, sequence, outcome):
    print(json.dumps(dict(kind='fourier-native-operation', operation=operation, sequence=sequence,
                          outcome=outcome, monotonic_ns=time.monotonic_ns())), flush=True)


def configuration(path):
    """Read one ordinary host-owned finite JSON object; never follow a link."""
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK | os.O_CLOEXEC)
    try:
        before = os.fstat(fd)
        if not stat.S_ISREG(before.st_mode) or before.st_nlink != 1 or not 0 < before.st_size <= 65536:
            raise ValueError('Bounded ordinary single-link configuration required')
        body = os.read(fd, 65537)
        after = os.fstat(fd)
        identity = lambda s: (s.st_dev, s.st_ino, s.st_size, s.st_mtime_ns, s.st_ctime_ns)
        if len(body) != before.st_size or identity(before) != identity(after):
            raise ValueError('Configuration changed during read')
    finally:
        os.close(fd)
    def unique(pairs):
        value = {}
        for key, item in pairs:
            if key in value:
                raise ValueError('Duplicate configuration key')
            value[key] = item
        return value
    value = json.loads(body, object_pairs_hook=unique,
                       parse_constant=lambda _: (_ for _ in ()).throw(ValueError('Non-finite configuration')))
    if not isinstance(value, dict) or set(value) != {'model', 'groups', 'limits', 'motion_complete_states'}:
        raise ValueError('Exact configuration fields required')
    if not isinstance(value['groups'], dict) or len(value['groups']) > 8 or not isinstance(value['limits'], dict):
        raise ValueError('Finite explicit groups and limits required')
    for name, bounds in value['groups'].items():
        text(name)
        if not re.fullmatch('[A-Za-z][A-Za-z0-9_]{0,63}', name) or not isinstance(bounds, dict):
            raise ValueError('Explicit group name and bounds required')
    states = value['motion_complete_states']
    if not isinstance(states, list) or len(states) > 16 or any(type(v) is not int or not -(1 << 31) <= v < 1 << 31 for v in states):
        raise ValueError('Explicit finite completion-state IDs required')
    return value, hashlib.sha256(body).hexdigest()


class Bridge:
    """No arbitrary function lookup, native object serialization or implicit grant."""
    def __init__(self, client, manager, messages, allowed, config, model):
        self.client, self.manager, self.messages = client, manager, messages
        self.allowed, self.config, self.model = frozenset(allowed), config, model
        self.sequences = {}
        self.lock = threading.Lock()
        self.methods = {
            'get_fsm_state': lambda r: int(client.get_fsm_state()),
            'get_fsm_name': lambda r: text(client.get_fsm_name()),
            'get_upper_fsm_state': lambda r: int(client.get_upper_fsm_state()),
            'get_upper_fsm_name': lambda r: text(client.get_upper_fsm_name()),
            'get_velocity_source': lambda r: int(client.get_velocity_source()),
            'get_velocity_source_name': lambda r: text(client.get_velocity_source_name()),
            'get_stand_pose': lambda r: vector(client.get_stand_pose()),
            'get_group_state': self.group_state, 'get_cartesian_state': self.cartesian_state,
            'get_group_motor_cfg': self.motor_cfg, 'get_base_data': self.base_data,
            'get_contact_data': self.contact_data, 'get_group_motion_state': self.motion_state,
            'wait_groups_motion_complete': self.wait_complete, 'snapshot': self.snapshot,
            'set_fsm_state': self.fsm, 'set_upper_fsm_state': self.upper_fsm,
            'set_velocity_source': self.velocity_source, 'set_velocity': self.velocity,
            'set_stand_pose': self.stand_pose, 'set_group_cmd': self.group_command,
            'set_motor_cfg_pd': self.motor_pd, 'set_move_command': self.move,
        }

    def group(self, name):
        if name not in self.config['groups']:
            raise ValueError('Unselected group')
        return name

    @staticmethod
    def key(value, allowed):
        if value not in allowed:
            raise ValueError('Unselected field')
        return value

    def group_state(self, r):
        return vector(self.client.get_group_state(self.group(r.group), self.key(r.key, {'position', 'velocity', 'effort'})))

    def cartesian_state(self, r):
        return vector(self.client.get_cartesian_state(self.group(r.group), self.key(r.key, {'pose', 'twist', 'wrench'})))

    def motor_cfg(self, r):
        return vector(self.client.get_group_motor_cfg(self.group(r.group), self.key(r.key, {'pd_kp', 'pd_kd', 'pos_kp', 'pos_ki', 'pos_kd'})))

    def base_data(self, r):
        return vector(self.client.get_base_data(self.key(r.key, BASE_KEYS)))

    def contact_data(self, r):
        return vector(self.client.get_contact_data(self.key(r.key, {'contact_fz', 'contact_prob'})))

    def motion_state(self, r):
        return int(self.client.get_group_motion_state(self.group(r.group)))

    def wait_complete(self, r):
        names = list(r.groups)
        timeout, poll = finite(r.timeout_seconds), finite(r.poll_seconds)
        if not names or len(names) > 8 or len(set(names)) != len(names) or not 0 < timeout <= 5 or not .01 <= poll <= .5:
            raise ValueError('Finite group wait required')
        for name in names:
            self.group(name)
        states = self.config['motion_complete_states']
        if not states:
            raise ValueError('Operator must supply verified completion-state IDs')
        end = time.monotonic() + timeout
        while True:
            if all(int(self.client.get_group_motion_state(name)) in states for name in names):
                return True
            if time.monotonic() >= end:
                return False
            time.sleep(min(poll, max(0, end - time.monotonic())))

    def bounded(self, value, key):
        value = finite(value)
        bounds = self.config['limits'].get(key)
        if not isinstance(bounds, list) or len(bounds) != 2 or not finite(bounds[0]) <= value <= finite(bounds[1]):
            raise ValueError('Explicit operator scalar limits required')
        return value

    def selected_integer(self, value, key, documented):
        allowed = self.config['limits'].get(key)
        if type(value) is not int or not isinstance(allowed, list) or value not in allowed or value not in documented:
            raise ValueError('Explicit documented state selection required')
        return value

    def fsm(self, r):
        self.client.set_fsm_state(self.selected_integer(r.state, 'fsm_states', {0, 1, 2, 3, 9, 10, 11}))

    def upper_fsm(self, r):
        self.client.set_upper_fsm_state(self.selected_integer(r.state, 'upper_fsm_states', {0, 1, 2, 4}))

    def velocity_source(self, r):
        self.client.set_velocity_source(self.selected_integer(r.source, 'velocity_sources', {0, 2}))

    def velocity(self, r):
        values = [self.bounded(getattr(r, name), 'velocity_' + name) for name in ('vx', 'vy', 'yaw', 'duration')]
        if not 0 < values[3] <= 5:
            raise ValueError('Finite positive command lifetime required')
        self.client.set_velocity(*values)

    def stand_pose(self, r):
        self.client.set_stand_pose(*(self.bounded(getattr(r, name), name) for name in ('delta_z', 'delta_pitch', 'delta_yaw')))

    def bounded_group(self, name, values, key):
        name = self.group(name)
        values = vector(values)
        bounds = self.config['groups'][name].get(key)
        if not values or not isinstance(bounds, dict) or set(bounds) != {'lower', 'upper'}:
            raise ValueError('Explicit complete group bounds required')
        lower, upper = vector(bounds['lower']), vector(bounds['upper'])
        if len(values) != len(lower) or len(values) != len(upper) or any(not a <= v <= b for a, v, b in zip(lower, values, upper)):
            raise ValueError('Group extent or limit mismatch')
        # Match the selected model's actual complete cached state before a
        # physical write. A configuration file alone does not prove joint order
        # or extent. Operator qualification must establish that order and units.
        actual = (self.client.get_cartesian_state(name, 'pose' if key == 'cartesian_position' else 'twist')
                  if key.startswith('cartesian_') else self.client.get_group_state(name, 'position'))
        if len(vector(actual)) != len(values):
            raise ValueError('Native model/group extent differs from the operator profile')
        return values

    def group_map(self, entries, key, *, required=False):
        if len(entries) > 8 or required and not entries or len({r.group for r in entries}) != len(entries):
            raise ValueError('Finite unique complete groups required')
        return {row.group: self.bounded_group(row.group, row.values, key) for row in entries}

    def group_command(self, r):
        position = self.group_map(r.position, 'position', required=True)
        velocity, torque = self.group_map(r.velocity, 'velocity'), self.group_map(r.torque, 'torque')
        if velocity and velocity.keys() != position.keys() or torque and torque.keys() != position.keys():
            raise ValueError('Optional command groups must match positions')
        self.client.set_group_cmd(position, velocity or None, torque or None)

    def motor_pd(self, r):
        kp, kd = self.group_map(r.kp, 'kp', required=True), self.group_map(r.kd, 'kd', required=True)
        if kp.keys() != kd.keys():
            raise ValueError('Complete proportional/derivative group pairing required')
        self.client.set_motor_cfg_pd(kp, kd)

    def move(self, r):
        recipes = r.moves
        if not recipes or len(recipes) > 8 or len({v.group for v in recipes}) != len(recipes):
            raise ValueError('Finite unique motion groups required')
        validated = []
        for row in recipes:
            kind = self.selected_integer(int(row.move_type), 'move_types', {0, 1, 2})
            position = self.bounded_group(row.group, row.position, 'position' if kind == 0 else 'cartesian_position')
            velocity = self.bounded_group(row.group, row.velocity, 'velocity' if kind == 0 else 'cartesian_velocity') if row.has_velocity else None
            if not row.has_velocity and row.velocity:
                raise ValueError('Absent velocity cannot contain a hidden value')
            expected = int(row.expected_velocity)
            if not 0 <= expected <= 1000 or expected != self.bounded(expected, 'expected_velocity'):
                raise ValueError('Explicit normalized move speed required')
            validated.append((kind, row.group, position, velocity, expected))
        manager = self.manager(robot_name=self.model)
        for kind, name, position, velocity, expected in validated:
            if kind == 0:
                manager.joint_move_command(kind, name, position, velocity, expected)
            else:
                manager.cartesian_move_command(kind, name, position, velocity, expected)
        self.client.set_move_command(manager.get_move_command())

    def snapshot(self, _):
        result = self.messages.Status()
        result.fsm_state, result.fsm_name = int(self.client.get_fsm_state()), text(self.client.get_fsm_name())
        result.upper_fsm_state, result.upper_fsm_name = int(self.client.get_upper_fsm_state()), text(self.client.get_upper_fsm_name())
        result.velocity_source, result.velocity_source_name = int(self.client.get_velocity_source()), text(self.client.get_velocity_source_name())
        result.stand_pose = vector(self.client.get_stand_pose())
        result.groups = []
        for name in self.config['groups']:
            row = self.messages.GroupState()
            row.group = name
            row.position = vector(self.client.get_group_state(name, 'position'))
            row.velocity = vector(self.client.get_group_state(name, 'velocity'))
            row.effort = vector(self.client.get_group_state(name, 'effort'))
            row.motion_state = int(self.client.get_group_motion_state(name))
            result.groups.append(row)
        return result

    def invoke(self, operation, request, response):
        # rospy callbacks can run concurrently. Admission, sequence consumption
        # and the one native invocation form one serialized operation.
        with self.lock:
            return self._invoke(operation, request, response)

    def _invoke(self, operation, request, response):
        sequence = int(request.sequence)
        if operation not in self.allowed:
            response.status, response.error = 13, 'DENIED'
            return response
        if not 0 < sequence < 1 << 64 or sequence <= self.sequences.get(operation, 0):
            response.status, response.error = 22, 'STALE_SEQUENCE'
            audit(operation, sequence, response.error)
            return response
        self.sequences[operation] = sequence
        audit(operation, sequence, 'ADMITTED_ONCE')
        try:
            value = self.methods[operation](request)
            member = OPERATIONS[operation][1]
            if member:
                setattr(response, member, value)
            response.status, response.error = 0, ''
        except (ValueError, TypeError, OverflowError):
            response.status, response.error = 22, 'INVALID_VALUE_OR_UNCERTAIN_NATIVE_RESULT'
        except Exception:
            response.status, response.error = 5, 'NATIVE_RESULT_UNKNOWN_NO_RETRY'
        audit(operation, sequence, ('SDK_CALL_RETURNED_PHYSICAL_OUTCOME_UNCONFIRMED' if operation in WRITES else 'VALUE_RETURNED')
              if response.status == 0 else response.error)
        return response


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--backend', choices=('ros1', 'ros2'), default='ros2')
    parser.add_argument('--allow', action='append', choices=sorted(OPERATIONS), default=[])
    parser.add_argument('--model', choices=('gr1p', 'gr2', 'gr3', 'fouriern1'))
    parser.add_argument('--dds-domain', type=int)
    parser.add_argument('--namespace')
    parser.add_argument('--configuration', type=Path)
    parser.add_argument('--sdk-version', help='Exact independently installed native distribution version')
    args = parser.parse_args(argv)
    if not args.allow:
        print(json.dumps(dict(status='DEFAULT_DENIED_NO_NATIVE_OR_ROS_IMPORT', default_authority=[])))
        return 0
    if not args.model or args.dds_domain is None or not 0 <= args.dds_domain <= 232 or not args.configuration or not args.sdk_version:
        parser.error('Selected operations require explicit model, DDS domain, host configuration and SDK version')
    if not args.namespace or not re.fullmatch(r'/[A-Za-z][A-Za-z0-9_]*(?:/[A-Za-z][A-Za-z0-9_]*)*', args.namespace):
        parser.error('A fresh absolute per-principal endpoint namespace is required')
    config, digest = configuration(args.configuration)
    if config['model'] != args.model:
        parser.error('Host configuration model differs from explicit model')
    installed_version = metadata.version('fourier_aurora_client')
    if installed_version != args.sdk_version:
        parser.error('Installed native SDK version differs from explicit operator selection')
    # Imports below are operator-authorized native libraries. They do not run
    # in Wasm and must be independently pinned/qualified before live use.
    from fourier_aurora_client import AuroraClient, MoveCommandManager
    from uwvm_fourier_bridge import msg as messages
    from uwvm_fourier_bridge import srv as services
    client = None
    handles = []
    node = None
    print(json.dumps(dict(kind='fourier-native-selection', backend=args.backend, model=args.model,
        dds_domain=args.dds_domain, namespace=args.namespace, allowed=sorted(set(args.allow)),
        native_distribution_version=installed_version,
        configuration_sha256=digest, default_authority=[])), flush=True)
    try:
        client = AuroraClient.get_instance(domain_id=args.dds_domain, robot_name=args.model,
                                          namespace=None, is_ros_compatible=False)
        bridge = Bridge(client, MoveCommandManager, messages, args.allow, config, args.model)
        if args.backend == 'ros2':
            import rclpy
            from rclpy.node import Node
            rclpy.init(args=[])
            node = Node('uwvm_fourier_bridge', enable_rosout=False, start_parameter_services=False)
            for operation in sorted(bridge.allowed):
                service_type = getattr(services, OPERATIONS[operation][0])
                def callback(request, response, selected=operation):
                    return bridge.invoke(selected, request, response)
                handles.append(node.create_service(service_type, args.namespace + '/' + operation, callback))
            rclpy.spin(node)
        else:
            import rospy
            rospy.init_node('uwvm_fourier_bridge', disable_rosout=True, disable_rostime=True)
            for operation in sorted(bridge.allowed):
                service_type = getattr(services, OPERATIONS[operation][0])
                def callback(request, selected=operation, typ=service_type):
                    return bridge.invoke(selected, request, typ._response_class())
                handles.append(rospy.Service(args.namespace + '/' + operation, service_type, callback))
            rospy.spin()
    finally:
        # Process retirement owns the native lifecycle. No Guest close request
        # can tear down another principal's SDK or change the selected policy.
        if args.backend == 'ros2' and node is not None:
            node.destroy_node()
            rclpy.try_shutdown()
        elif args.backend == 'ros1':
            for handle in handles:
                handle.shutdown('Operator-owned bridge retirement')
        if client is not None:
            client.close()
    return 0


if __name__ == '__main__':
    sys.exit(main())
