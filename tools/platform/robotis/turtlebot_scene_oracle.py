"""Independent decode of native sensor/command bytes observed by the C Wasm.

This checks the selected finite Gazebo scene, not production safety, complete DDS
delivery, or raw RTPS capture. Both application and observer must execute in VM.
"""
from pathlib import Path
import hashlib, json, math, struct

def require(value, message):
    if not value:
        raise ValueError(message)

class Wire:
    def __init__(self, data):
        self.data, self.offset = data, 0
    def take(self, n):
        require(0 <= n <= len(self.data) - self.offset, "truncated wire")
        result = self.data[self.offset:self.offset+n]
        self.offset += n
        return result
    def unpack(self, fmt):
        return struct.unpack("<"+fmt, self.take(struct.calcsize("<"+fmt)))
    def text(self, expected):
        n, = self.unpack("I")
        require(n <= 128, "selected frame bound")
        require(self.take(n).decode("utf-8") == expected, "native frame identity")
    def stamp(self):
        sec, nano = self.unpack("iI")
        require(sec >= 0 and nano < 1000000000, "ROS stamp")
        return sec*1000000000+nano
    def end(self):
        require(self.offset == len(self.data), "trailing wire")

def decode(kind, raw):
    w = Wire(raw)
    if kind == "task-command":
        values = w.unpack("6d")
        require(all(math.isfinite(x) for x in values), "nonfinite command")
        require(values in [(0.,0.,0.,0.,0.,0.), (.2,0.,0.,0.,0.,0.), (0.,0.,0.,0.,0.,.5)], "unexpected original command")
        value = dict(velocity=values, stamp=0)
    elif kind == "odometry":
        stamp = w.stamp(); w.text("odom"); w.text("base_footprint")
        pose = w.unpack("7d"); covariance = w.unpack("36d")
        velocity = w.unpack("6d"); twist_covariance = w.unpack("36d")
        require(all(math.isfinite(x) for x in pose+covariance+velocity+twist_covariance), "nonfinite odometry")
        x,y,z,qx,qy,qz,qw = pose
        require(abs(qx*qx+qy*qy+qz*qz+qw*qw-1) < .0001, "quaternion norm")
        yaw = math.atan2(2*(qw*qz+qx*qy),1-2*(qy*qy+qz*qz))
        value = dict(position=(x,y,z), yaw=yaw, velocity=velocity, stamp=stamp)
    elif kind == "scan":
        stamp = w.stamp(); w.text("base_scan")
        metadata = w.unpack("7f")
        require(all(math.isfinite(x) for x in metadata), "scan geometry")
        count, = w.unpack("I"); require(count == 360, "selected native scan width")
        ranges = w.unpack(str(count)+"f")
        intensity_count, = w.unpack("I")
        require(intensity_count <= 1024, "selected intensity extent")
        intensities = w.unpack(str(intensity_count)+"f")
        # Python min preserves the upstream ordered IEEE comparisons.
        front = min(min(ranges[:90]), min(ranges[270:]))
        value = dict(stamp=stamp, front=front, ranges=ranges, metadata=metadata)
    else:
        raise ValueError("unknown trace kind")
    w.end()
    return value

def fields(line):
    return dict(part.split("=",1) for part in line.split()[1:])

def verify_trace(text):
    samples=[]; phases=[]; latest={}; counts=dict(odometry=0,scan=0,**{"task-command":0})
    prior_stamp={}; previous_ns=0; yaw_sum=0.; previous_yaw=None; result=None
    for line in text.splitlines():
        if line.startswith("TB3_SAMPLE_V1 "):
            row=fields(line); kind=row["kind"]; now=int(row["monotonic_ns"])
            require(now >= previous_ns, "sample monotonic ordering"); previous_ns=now
            require(int(row["occurrence"]) == len(samples)+1, "occurrence continuity")
            raw=bytes.fromhex(row["wire"])
            require(len(raw) == int(row["bytes"]), "wire length receipt")
            value=decode(kind,raw)
            require(int(row["ros_ns"]) == value["stamp"], "wire stamp receipt")
            if kind != "task-command":
                require(value["stamp"] > prior_stamp.get(kind,-1), "native stamp progression")
                prior_stamp[kind]=value["stamp"]
            if kind == "odometry":
                if previous_yaw is not None:
                    delta=math.remainder(value["yaw"]-previous_yaw,2*math.pi)
                    require(abs(delta)<.2,"native yaw discontinuity"); yaw_sum+=delta
                previous_yaw=value["yaw"]; value["unwrapped_yaw"]=yaw_sum
            value=dict(value,monotonic_ns=now,kind=kind)
            latest[kind]=value; counts[kind]+=1; samples.append(value)
        elif line.startswith("TB3_PHASE_V1 "):
            row=fields(line); now=int(row["monotonic_ns"])
            require(now >= previous_ns, "phase monotonic ordering"); previous_ns=now
            for key,kind in [("odom_count","odometry"),("scan_count","scan"),("command_count","task-command")]:
                require(int(row[key])==counts[kind],"phase sample counts")
            for key,kind in [("odom_ns","odometry"),("scan_ns","scan")]:
                require(int(row[key])==latest.get(kind,{}).get("stamp",0),"phase stamp")
            phases.append(dict(row,monotonic_ns=now,latest=dict(latest)))
        elif line.startswith("TB3_DRIVER_RESULT_V1 "):
            require(result is None,"duplicate completion"); result=fields(line)
        else:
            require(not line.strip(),"unexpected trace record")
    require(result is not None and result["phase"]=="complete","missing completion")
    for key in ["primary","emergency_raw_zero","close_odom","close_scan","close_command","close_raw","close_cancel"]:
        require(result[key]=="0","driver error: "+key)
    require(result["observed_final_zero"]==result["input_sequence_complete"]=="1","driver incomplete")
    boundaries=[r for r in phases if r["event"] in ["owners-ready","baseline-ready","entered"]]
    require([r["phase"] for r in boundaries]==["baseline","approach","rotate","resume","stop","complete"],"phase progression")
    require(len(samples)>200 and counts["scan"]>40 and counts["task-command"]>40,"insufficient real samples")
    base,approach,rotate,resume,stop,complete=boundaries
    require(not base["latest"] and int(approach["command_count"])==0,"application ran before baseline")
    origin=approach["latest"]["odometry"]
    require(abs(origin["position"][0]-1.1)<.03 and abs(origin["position"][1])<.03 and abs(origin["yaw"])<.02,"official spawn baseline")
    require(.8 <= approach["latest"]["scan"]["front"] <= 1.4,"baseline scan")
    def distance(a,b):
        return math.dist(a["position"][:2],b["position"][:2])
    def velocity(value,vx,wz,linear=.04,angular=.08):
        v=value["velocity"]
        return all(abs(v[i] - (vx if i==0 else wz if i==5 else 0)) <= (linear if i<3 else angular) for i in range(6))
    def interval(a,b,kind):
        return [r for r in samples if a["monotonic_ns"]<=r["monotonic_ns"]<=b["monotonic_ns"] and r["kind"]==kind]
    def stable_stop(end,start_ns):
        odom=end["latest"]["odometry"]; stamp=odom["stamp"]
        rows=[]
        for row in reversed(samples):
            if row["kind"]!="odometry" or row["monotonic_ns"]>end["monotonic_ns"]:
                continue
            if row["monotonic_ns"]<start_ns or not velocity(row,0,0,.01,.02):
                break
            rows.append(row)
        require(len(rows)>10 and rows[0]["stamp"]-rows[-1]["stamp"]>=500000000,"stop dwell")
        require(velocity(end["latest"]["task-command"],0,0,0,0),"nonzero stopped command")
    moved=interval(approach,rotate,"odometry")
    require(any(velocity(r,.2,0) and distance(r,origin)>=.15 for r in moved),"no physical forward motion")
    require(all(distance(r,origin)<=1.02 and abs(r["position"][1]-origin["position"][1])<=.04 and abs(r["unwrapped_yaw"])<=.04 for r in moved),"approach bounds")
    require(.60<=distance(rotate["latest"]["odometry"],origin)<=1.02,"approach distance")
    close=next((r for r in interval(approach,rotate,"scan") if r["front"]<.5),None)
    require(close is not None,"no obstacle")
    require(any(r["monotonic_ns"]>close["monotonic_ns"] and velocity(r,0,0,0,0) for r in interval(approach,rotate,"task-command")),"no stop after obstacle")
    stable_stop(rotate,approach["monotonic_ns"])
    turning=interval(rotate,resume,"odometry")
    angle=resume["latest"]["odometry"]["unwrapped_yaw"]-rotate["latest"]["odometry"]["unwrapped_yaw"]
    require(2.3<=angle<=2.65 and any(velocity(r,0,.5,.02,.08) for r in turning),"physical rotation")
    require(any(velocity(r,0,.5,0,0) for r in interval(rotate,resume,"task-command")),"no rotation command")
    resumed=interval(resume,stop,"odometry")
    require(.2<=distance(stop["latest"]["odometry"],resume["latest"]["odometry"])<=.4,"resume distance")
    require(any(velocity(r,.2,0) for r in resumed) and resume["latest"]["scan"]["front"]>=.5,"resume motion")
    cancel=[r for r in phases if r["event"]=="cancel-request"]
    require(len(cancel)==1,"cancel count"); cancel=cancel[0]
    require(stop["monotonic_ns"]<cancel["monotonic_ns"]<complete["monotonic_ns"],"cancel order")
    stable_stop(cancel,stop["monotonic_ns"])
    require(complete["monotonic_ns"]-cancel["monotonic_ns"]>=2000000000,"cancel publisher lifetime")
    require(all(velocity(r,0,0,.01,.02) for r in interval(cancel,complete,"odometry")),"motion after cancellation")
    inputs=[r for r in phases if r["event"].startswith("raw-") or r["event"]=="cancel-request"]
    require([int(r["inputs"]) for r in inputs]==list(range(1,len(inputs)+1)),"input sequence")
    require([r["event"] for r in inputs if not r["event"].endswith("-retry")]==["raw-turn","raw-resume","raw-zero","cancel-request"],"input stages")
    require(all(p["event"] in ["owners-ready","baseline-ready","entered","raw-turn","raw-turn-retry","raw-resume","raw-resume-retry","raw-zero","raw-zero-retry","cancel-request"] for p in phases),"unknown phase event")
    return dict(samples=counts,approach_distance=distance(rotate["latest"]["odometry"],origin),rotation_radians=angle,
                resumed_distance=distance(stop["latest"]["odometry"],resume["latest"]["odometry"]),
                observed_elapsed_ns=complete["monotonic_ns"]-approach["monotonic_ns"],published_inputs=len(inputs))

def verify(directory):
    d=Path(directory); source=json.loads((d/"result.json").read_text())
    require(source["status"]=="COMPLETED_REQUIRES_INDEPENDENT_TRACE_VERIFICATION","scene failed")
    require(source["app_exit"]==source["scenario_exit"]==0 and source["pins_unchanged"],"application exit or changed inputs")
    require(source["owned_retirement"]["status"]=="RETIRED","owned process leak")
    require(all(r["exit"]==0 and r["kernel_absent"] for r in source["retirement"]),"actor exit or leak")
    require({r["role"] for r in source["retirement"]}=={"app","scenario","native","app-gateway","scenario-gateway"},"missing actors")
    require(all(r["actual_vm_fd_exec"] for r in source["steps"]) and {r["role"] for r in source["steps"]}=={"app","scenario"},"VM execution evidence")
    ready=source["native_ready"]
    require(ready["matches_original_task_world"] and ready["world"]=="turtlebot3_dqn_stage1.world" and ready["robot"]=="Burger","native world mismatch")
    gate=source["application_start_gate"]
    require(gate["vm_admission_completed"] and gate["guest_execution_not_started_after_stop"] and gate["held_ns"]<source["baseline_ready_host_ns"]<=gate["released_ns"],"application startup gate")
    for key in ["oom","oom_kill","oom_group_kill"]:
        before=dict(line.split() for line in source["memory_events_before"].splitlines())
        after=dict(line.split() for line in source["memory_events_after"].splitlines())
        require(after[key]==before[key],"cgroup OOM")
    result=verify_trace((d/"scenario.stdout").read_text())
    sha=lambda p:hashlib.file_digest(p.open("rb"),"sha256").hexdigest()
    result.update(passed=True,format="uwvm-sdk-turtlebot-native-oracle-v1",
      scope="Unchanged original Python Wasm plus independent C Wasm observer on actual Gazebo. Complete selected sensor records independently decoded; finite approach/stop/turn/resume/cancel checked. Not all-message delivery, raw RTPS capture, or production qualification.",
      pins={str(p):sha(p) for p in [Path(__file__),d/"result.json",d/"scenario.stdout",d/"app.stdout",d/"ready.json"]})
    (d/"independent-trace-verification.json").write_text(json.dumps(result,indent=2)+"\n")
    return result
