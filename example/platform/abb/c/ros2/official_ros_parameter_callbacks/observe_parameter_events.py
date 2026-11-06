"""Read-only environment oracle. SDK requests and returned values stay in Wasm."""
from pathlib import Path
import argparse
import json
import os
import re
import signal
import time


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--node', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if not re.fullmatch(r'/[A-Za-z_][A-Za-z0-9_]*', args.node):
        raise RuntimeError('Select the exact fresh official peer node')
    import rclpy
    from rclpy.node import Node
    from rclpy.qos import qos_profile_parameter_events
    from rcl_interfaces.msg import ParameterEvent
    stop = False
    def end(_number, _frame):
        nonlocal stop
        stop = True
    for number in (signal.SIGINT, signal.SIGTERM):
        signal.signal(number, end)
    report = {'format':'sdk02-readonly-parameter-observer-v1', 'pid':os.getpid(),
              'target_node':args.node, 'ready':False, 'changes':[],
              'SDK_operations_or_parameter_writes':0, 'started_ns':time.monotonic_ns()}
    def save():
        data = (json.dumps(report, sort_keys=True, indent=2)+'\n').encode()
        if len(data)>65536:
            raise RuntimeError('Bounded read-only observation exceeded')
        temporary = args.output.with_suffix('.writing')
        with temporary.open('wb') as stream:
            stream.write(data)
        os.replace(temporary, args.output)
    def observe(event):
        if event.node!=args.node:
            return
        for parameter in event.changed_parameters:
            if parameter.name!='use_sim_time':
                continue
            if parameter.value.type!=1 or len(report['changes'])>=8:
                raise RuntimeError('Unexpected type or excessive observed peer changes')
            report['changes'].append({'received_monotonic_ns':time.monotonic_ns(),
                'value':bool(parameter.value.bool_value),
                'actual_ROS_stamp_sec':event.stamp.sec,
                'actual_ROS_stamp_nanosec':event.stamp.nanosec})
            save()
    rclpy.init(args=[])
    node = Node('sdk02_parameter_observer_'+str(os.getpid()), namespace='/',
                start_parameter_services=False, enable_rosout=False)
    try:
        subscription = node.create_subscription(ParameterEvent, '/parameter_events',
                                                observe, qos_profile_parameter_events)
        save()
        deadline = time.monotonic()+320
        while not stop and time.monotonic()<deadline:
            rclpy.spin_once(node, timeout_sec=.1)
            if not report['ready']:
                graph = dict(node.get_service_names_and_types())
                expected = {args.node+'/get_parameters':'rcl_interfaces/srv/GetParameters',
                            args.node+'/set_parameters':'rcl_interfaces/srv/SetParameters'}
                if all(kind in graph.get(name, ()) for name,kind in expected.items()):
                    report.update(ready=True, discovered_parameter_services=expected,
                                  discovery_monotonic_ns=time.monotonic_ns())
                    save()
        report.update(finished_ns=time.monotonic_ns(), ready=False)
        save()
        node.destroy_subscription(subscription)
    finally:
        node.destroy_node()
        rclpy.shutdown()


if __name__=='__main__':
    main()
