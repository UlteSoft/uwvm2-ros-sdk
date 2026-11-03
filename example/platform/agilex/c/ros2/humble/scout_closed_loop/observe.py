"""Read-only test recorder. No publisher, service call or control decisions.

Raw ROS subscription bytes and publisher identities are retained independently
of the guest's report. The simulator and guest remain the only data producers.
"""
from pathlib import Path
import base64
import json
import sys
import struct
import time
import rclpy
from rclpy.serialization import deserialize_message
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Twist

work = Path(sys.argv[1])
rclpy.init()
node = rclpy.create_node('scout_readonly_test_recorder')
stream = (work/'native-received.jsonl').open('x')
count = 0

def record(topic, cls, raw):
    global count
    count += 1
    if count > 20000:
        raise RuntimeError('read-only recorder row limit exceeded')
    value = deserialize_message(raw, cls)
    row = {'topic': topic, 'received_monotonic_ns': time.monotonic_ns(),
           'raw_rmw_cdr_base64': base64.b64encode(raw).decode()}
    if cls is Odometry:
        strings=[value.header.frame_id.encode(),value.child_frame_id.encode()]
        position=value.pose.pose.position;orientation=value.pose.pose.orientation
        linear=value.twist.twist.linear;angular=value.twist.twist.angular
        canonical=struct.pack('<iI',value.header.stamp.sec,value.header.stamp.nanosec)
        for text in strings:canonical+=struct.pack('<I',len(text))+text
        numbers=[position.x,position.y,position.z,orientation.x,orientation.y,orientation.z,orientation.w,
                 *value.pose.covariance,linear.x,linear.y,linear.z,angular.x,angular.y,angular.z,*value.twist.covariance]
        canonical+=struct.pack('<85d',*numbers)
        row['canonical_from_received_message_hex']=canonical.hex()
        row.update(stamp_ns=value.header.stamp.sec*1000000000+value.header.stamp.nanosec,
                   frame=value.header.frame_id, child_frame=value.child_frame_id,
                   x=value.pose.pose.position.x, y=value.pose.pose.position.y,
                   qz=value.pose.pose.orientation.z, qw=value.pose.pose.orientation.w,
                   linear=value.twist.twist.linear.x, angular=value.twist.twist.angular.z)
    else:
        row.update(linear=[value.linear.x,value.linear.y,value.linear.z],
                   angular=[value.angular.x,value.angular.y,value.angular.z])
    stream.write(json.dumps(row,separators=(',',':'))+'\n')
    stream.flush()

odom = node.create_subscription(Odometry,'/odom',lambda raw:record('/odom',Odometry,raw),10,raw=True)
command = node.create_subscription(Twist,'/cmd_vel',lambda raw:record('/cmd_vel',Twist,raw),10,raw=True)
(work/'recorder-ready').write_text('read-only\n')
started = time.monotonic(); last_graph = 0; stop_seen = None
try:
    while True:
        if (work/'recorder-stop').exists():
            if stop_seen is None:stop_seen=time.monotonic()
            if time.monotonic()-stop_seen>=.25:break
        if time.monotonic()-started > 180:
            raise TimeoutError('recorder lifetime exceeded')
        rclpy.spin_once(node,timeout_sec=.05)
        if time.monotonic()-last_graph >= .5:
            publishers = node.get_publishers_info_by_topic('/cmd_vel')
            stream.write(json.dumps({'kind':'command_publishers','publishers':[
                {'node':p.node_name,'namespace':p.node_namespace,'type':p.topic_type,
                 'gid':list(p.endpoint_gid)} for p in publishers]})+'\n')
            stream.flush(); last_graph=time.monotonic()
finally:
    stream.close()
    node.destroy_node()
    rclpy.shutdown()
