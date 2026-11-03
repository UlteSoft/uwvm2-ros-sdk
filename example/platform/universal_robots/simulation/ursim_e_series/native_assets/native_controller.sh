#!/bin/bash
# Candidate only. Explicit native URSim infrastructure, no SDK control program.
set -euo pipefail
export HOME=/ursim DISPLAY=:1 ROBOT_MODEL=UR5
export JAVA_HOME=/ursim/.java/jdk
export PATH="$JAVA_HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/ursim/usr/bin"
export _JAVA_OPTIONS="-Xms128m -Xmx1024m -Xss512k -XX:ActiveProcessorCount=2 -XX:ParallelGCThreads=2 -XX:ConcGCThreads=1 -XX:CICompilerCount=2"
mkdir -p /ursim/.polyscope
if [ -f /ursim/programs.UR5/license.p7b ]; then
  cp /ursim/programs.UR5/license.p7b /ursim/.polyscope/license.p7b
fi
Xvfb :1 -screen 0 1280x800x16 -nolisten tcp &
xvfb_pid=$!
controller_pid=""
driver_pid=""
cleanup() {
  if [ -n "$driver_pid" ]; then kill -TERM "$driver_pid" 2>/dev/null || true; fi
  if [ -n "$controller_pid" ]; then kill -TERM "$controller_pid" 2>/dev/null || true; fi
  kill -TERM "$xvfb_pid" 2>/dev/null || true
  wait || true
}
trap cleanup EXIT INT TERM
( sleep 20; /usr/bin/python3.11 -B /ursim/.native-ui-observer.py --sequence /ursim/.native-ui-plan.json ) &
/usr/bin/python3.11 -B /ursim/.native-driver-bootstrap.py &
driver_pid=$!
/ursim/start-ursim.sh UR5 &
controller_pid=$!
wait "$controller_pid"
