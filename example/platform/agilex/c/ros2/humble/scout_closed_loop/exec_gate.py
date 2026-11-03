"""Owned test launch gate preserves the PID used by the exact ROS policy."""
import os
import sys

gate = int(sys.argv[1])
audit = int(sys.argv[2])
if os.read(gate,1) != b'R':
    raise SystemExit(126)
os.close(gate)
os.set_inheritable(audit,True)
os.execv(sys.argv[3],sys.argv[3:])
