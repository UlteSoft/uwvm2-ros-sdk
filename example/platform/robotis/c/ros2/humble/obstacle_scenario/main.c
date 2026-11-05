/* SPDX-License-Identifier: Apache-2.0 */
/** @file main.c
 * @brief Independent Wasm input/observer for the unchanged official Humble task.
 * @details Start before the original application; launch that application only
 * after baseline-ready. This actor never publishes /cmd_vel, substitutes a
 * sensor, or runs the obstacle application. It sends three raw Twist phases and
 * one Bool cancellation only after actual native feedback. Each phase retries
 * its idempotent setpoint every 100 ms until real command/odometry feedback
 * confirms receipt; successful publish alone is not delivery acknowledgement. Its completion is
 * not application/callback/native-causality/permission acceptance. Native and
 * original guest occurrence receipts must independently corroborate every phase.
 */
#define _POSIX_C_SOURCE 200809L
#include <platform/ros2/c/roswasm/ros2.h>
#include <platform/ros/c/roswasm/codec.h>
#include <robotis/c/ros2/robotis-turtlebot3-humble-complete/bounded_records.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

typedef roswasmc_bounded_2_nav_msgs_msg_Odometry Odometry;
typedef roswasmc_bounded_2_geometry_msgs_msg_Twist Twist;
enum { ODOM, SCAN, COMMAND, RAW_INPUT, CANCEL, OWNER_COUNT };
enum { BASELINE, APPROACH, ROTATE, RESUME, STOP, COMPLETE };
static char const* aliases[OWNER_COUNT] = {
    "robotis-scenario-odom", "robotis-scenario-scan", "robotis-scenario-command",
    "robotis-obstacle-raw-input", "robotis-obstacle-cancel-request"
};
static char const* phases[] = {"baseline", "approach", "rotate", "resume", "stop", "complete"};
typedef struct State {
    Odometry odom, origin, resumed;
    Twist command;
    uint64_t odom_ns, scan_ns, stable_ns, phase_ns, phase_odom_ns;
    uint64_t scan_at, command_at, odom_at, closed_scan_at, input_at, cancel_at;
    uint64_t records, trace_bytes, odom_count, scan_count, command_count;
    unsigned phase, seen_odom, seen_scan, seen_command, moved, turned;
    unsigned zero_after_close, yaw_command, resumed_motion, sent_inputs;
    double front, last_yaw, yaw_sum, rotate_origin;
} State;

static unsigned now_ns(uint64_t* value)
{
    struct timespec t;
    if(clock_gettime(CLOCK_MONOTONIC, &t) || t.tv_sec < 0 || t.tv_nsec < 0 || t.tv_nsec >= 1000000000) return 5;
    *value = (uint64_t)t.tv_sec * UINT64_C(1000000000) + (unsigned long)t.tv_nsec;
    return 0;
}
static unsigned wait_tick(void)
{
    struct timespec delay = {0, 1000000};
    return (unsigned)clock_nanosleep(CLOCK_MONOTONIC, 0, &delay, 0); /* Preserve a WASI error; only ROS idle11 is benign. */
}
static unsigned event(State const* s, char const* label, uint64_t now)
{
    return printf("TB3_PHASE_V1 phase=%s event=%s monotonic_ns=%llu odom_ns=%llu scan_ns=%llu "
        "odom_count=%llu scan_count=%llu command_count=%llu inputs=%u\n", phases[s->phase], label,
        (unsigned long long)now, (unsigned long long)s->odom_ns, (unsigned long long)s->scan_ns,
        (unsigned long long)s->odom_count, (unsigned long long)s->scan_count,
        (unsigned long long)s->command_count, s->sent_inputs) < 0 || fflush(stdout) ? 5u : 0u;
}
static unsigned trace(State* s, char const* kind, unsigned char const* wire, size_t bytes, uint64_t now, uint64_t ros_ns)
{
    if(s->records >= 5000 || bytes > 8368 || s->trace_bytes + bytes > 8*1024*1024) return 75;
    ++s->records; s->trace_bytes += bytes;
    if(printf("TB3_SAMPLE_V1 kind=%s occurrence=%llu monotonic_ns=%llu ros_ns=%llu bytes=%zu wire=",
        kind, (unsigned long long)s->records, (unsigned long long)now, (unsigned long long)ros_ns, bytes) < 0) return 5;
    for(size_t i=0;i<bytes;++i) if(printf("%02x",(unsigned)wire[i]) < 0) return 5;
    return putchar('\n') == EOF || fflush(stdout) ? 5u : 0u;
}
static int text(unsigned char const* data, size_t n, char const* expected)
{ return n == strlen(expected) && !memcmp(data,expected,n); }
static double yaw(Odometry const* o)
{
    double x=o->pose.pose.orientation.x,y=o->pose.pose.orientation.y;
    double z=o->pose.pose.orientation.z,w=o->pose.pose.orientation.w;
    return atan2(2*(w*z+x*y),1-2*(y*y+z*z));
}
static double distance(Odometry const* a, Odometry const* b)
{ return hypot(a->pose.pose.position.x-b->pose.pose.position.x,a->pose.pose.position.y-b->pose.pose.position.y); }
static int velocity(Twist const* t, double vx, double wz, double linear, double angular)
{
    return fabs(t->linear.x-vx)<=linear && fabs(t->linear.y)<=linear && fabs(t->linear.z)<=linear &&
        fabs(t->angular.x)<=angular && fabs(t->angular.y)<=angular && fabs(t->angular.z-wz)<=angular;
}
static unsigned odometry(State* s, unsigned char const* wire, size_t bytes, uint64_t now)
{
    Odometry value;
    unsigned error=roswasmc_bounded_2_nav_msgs_msg_Odometry_decode(wire,bytes,&value);
    if(error) return error;
    if(!text(value.header.frame_id.data,value.header.frame_id.size,"odom") ||
       !text(value.child_frame_id.data,value.child_frame_id.size,"base_footprint") || value.header.stamp.sec<0) return 22;
    uint64_t stamp=(uint64_t)value.header.stamp.sec*UINT64_C(1000000000)+value.header.stamp.nanosec;
    if(s->seen_odom && stamp<=s->odom_ns) return 22;
    double x=value.pose.pose.orientation.x,y=value.pose.pose.orientation.y;
    double z=value.pose.pose.orientation.z,w=value.pose.pose.orientation.w;
    if(fabs(x*x+y*y+z*z+w*w-1)>.0001) return 22;
    double current=yaw(&value);
    if(s->seen_odom) {
        double delta=current-s->last_yaw;
        if(delta>3.141592653589793) delta-=6.283185307179586;
        if(delta< -3.141592653589793) delta+=6.283185307179586;
        if(fabs(delta)>.2) return 22;
        s->yaw_sum+=delta;
    }
    s->odom=value;s->odom_ns=stamp;s->odom_at=now;s->last_yaw=current;s->seen_odom=1;++s->odom_count;
    return trace(s,"odometry",wire,bytes,now,stamp);
}
static uint32_t u32(unsigned char const* p)
{ return (uint32_t)p[0] | (uint32_t)p[1]<<8 | (uint32_t)p[2]<<16 | (uint32_t)p[3]<<24; }
static float f32(unsigned char const* p)
{ uint32_t bits=u32(p);float value;memcpy(&value,&bits,4);return value; }
/** Validate the complete selected IEEE scan, retain and emit all original bytes.
 * Only the observer's scalar front minimum is projected, never the task input.
 * IEEE infinity/NaN/signed zero are retained. Python min's ordered comparisons
 * are followed, including its first-element NaN behavior. Native profile118b67
 * is distinct from the existing finite-only general catalog, which is unchanged.
 */
static unsigned scan(State* s, unsigned char const* wire, size_t bytes, uint64_t now)
{
    if(bytes<48 || bytes>8368 || (int32_t)u32(wire)<0 || u32(wire+4)>=1000000000) return 22;
    uint64_t stamp=(uint64_t)u32(wire)*UINT64_C(1000000000)+u32(wire+4);
    if(s->seen_scan && stamp<=s->scan_ns) return 22;
    size_t frame=u32(wire+8),offset=12;
    if(frame>128 || frame>bytes-offset || !text(wire+offset,frame,"base_scan")) return 22;
    offset+=frame;
    if(bytes-offset<32) return 22;
    offset+=28; /* All seven binary32 metadata values retained in full trace. */
    size_t count=u32(wire+offset);offset+=4;
    if(count!=360 || count>(bytes-offset)/4) return 22; /* Exact official selected scene. */
    float left=f32(wire+offset),right=f32(wire+offset+270*4);
    for(size_t i=1;i<90;++i) { float value=f32(wire+offset+i*4);if(value<left)left=value; }
    for(size_t i=271;i<360;++i) { float value=f32(wire+offset+i*4);if(value<right)right=value; }
    float front=right<left?right:left;
    offset+=count*4;
    if(bytes-offset<4) return 22;
    size_t intensities=u32(wire+offset);offset+=4;
    if(intensities>1024 || intensities>(bytes-offset)/4 || bytes-offset!=intensities*4) return 22;
    s->front=front;s->scan_ns=stamp;s->scan_at=now;s->seen_scan=1;++s->scan_count;
    if(s->front<.5 && !s->closed_scan_at)s->closed_scan_at=now;
    return trace(s,"scan",wire,bytes,now,stamp);
}
static unsigned command(State* s, unsigned char const* wire, size_t bytes, uint64_t now)
{
    unsigned error=roswasmc_bounded_2_geometry_msgs_msg_Twist_decode(wire,bytes,&s->command);
    if(error)return error;
    if(s->phase==BASELINE)return 71; /* Original task must start after baseline-ready. */
    s->seen_command=1;s->command_at=now;++s->command_count;
    if(s->phase==APPROACH && s->closed_scan_at && now>s->closed_scan_at && velocity(&s->command,0,0,1e-12,1e-12))s->zero_after_close=1;
    if(s->phase==ROTATE && velocity(&s->command,0,.5,1e-12,1e-12))s->yaw_command=1;
    return trace(s,"task-command",wire,bytes,now,0);
}
static unsigned input(State* s, roswasmc_capability* owner, double vx, double wz, uint64_t now, char const* label)
{
    roswasmc_twist value={{vx,0,0},{0,0,wz}};
    unsigned error=roswasmc_publish_twist(owner,&value);
    if(error)return error;
    ++s->sent_inputs;s->input_at=now;
    return event(s,label,now);
}
static unsigned advance(State* s, unsigned phase, uint64_t now)
{
    s->phase=phase;s->phase_ns=now;s->phase_odom_ns=s->odom_ns;s->stable_ns=0;
    return event(s,phase==APPROACH?"baseline-ready":"entered",now);
}
static int fresh(State const* s, uint64_t now)
{ return s->seen_odom && s->seen_scan && now-s->odom_at<=UINT64_C(500000000) && now-s->scan_at<=UINT64_C(800000000); }
static int stable_zero(State* s, uint64_t now)
{
    if(!fresh(s,now) || !s->seen_command || now-s->command_at>UINT64_C(400000000) ||
       !velocity(&s->command,0,0,1e-12,1e-12) || !velocity(&s->odom.twist.twist,0,0,.01,.02)) {s->stable_ns=0;return 0;}
    if(!s->stable_ns)s->stable_ns=s->odom_ns;
    return s->odom_ns>=s->stable_ns && s->odom_ns-s->stable_ns>=UINT64_C(500000000) && s->odom_ns>s->phase_odom_ns;
}
static unsigned step(State* s, roswasmc_capability* cap, uint64_t now)
{
    if(s->phase==BASELINE) {
        if(fresh(s,now)) {
            if(!velocity(&s->odom.twist.twist,0,0,.01,.02) || fabs(s->odom.pose.pose.position.x-1.1)>.03 ||
               fabs(s->odom.pose.pose.position.y)>.03 || fabs(s->last_yaw)>.02 || !(s->front>=.8 && s->front<=1.4))return 22;
            s->origin=s->odom;return advance(s,APPROACH,now);
        }
        return 0;
    }
    if(!fresh(s,now))return 110;
    if(s->phase==APPROACH) {
        double traveled=distance(&s->odom,&s->origin);
        if(traveled>1.02 || fabs(s->odom.pose.pose.position.y-s->origin.pose.pose.position.y)>.04 || fabs(s->yaw_sum)>.04)return 34;
        if(s->seen_command && velocity(&s->command,.2,0,1e-12,1e-12) && velocity(&s->odom.twist.twist,.2,0,.04,.03) && traveled>=.15)s->moved=1;
        if(s->moved && s->zero_after_close && s->front<.5 && stable_zero(s,now)) {
            if(traveled<.60)return 34;
            unsigned error=input(s,&cap[RAW_INPUT],0,.5,now,"raw-turn");if(error)return error;
            s->rotate_origin=s->yaw_sum;return advance(s,ROTATE,now);
        }
    } else if(s->phase==ROTATE) {
        if(!s->yaw_command && now-s->input_at>=UINT64_C(100000000)) {
            unsigned error=input(s,&cap[RAW_INPUT],0,.5,now,"raw-turn-retry");if(error)return error;
        }
        double angle=s->yaw_sum-s->rotate_origin;
        if(distance(&s->odom,&s->origin)>1.05 || angle<-.04 || angle>2.65)return 34;
        if(s->yaw_command && velocity(&s->odom.twist.twist,0,.5,.02,.08))s->turned=1;
        if(angle>=2.3 && s->turned && s->front>=.5) {
            s->resumed=s->odom;
            unsigned error=input(s,&cap[RAW_INPUT],.2,0,now,"raw-resume");if(error)return error;
            return advance(s,RESUME,now);
        }
    } else if(s->phase==RESUME) {
        if(!s->resumed_motion && now-s->input_at>=UINT64_C(100000000)) {
            unsigned error=input(s,&cap[RAW_INPUT],.2,0,now,"raw-resume-retry");if(error)return error;
        }
        double traveled=distance(&s->odom,&s->resumed);
        if(traveled>.40 || fabs(s->yaw_sum-s->rotate_origin-2.3)>.18)return 34;
        if(s->seen_command && velocity(&s->command,.2,0,1e-12,1e-12) && velocity(&s->odom.twist.twist,.2,0,.04,.03) && s->front>=.5)s->resumed_motion=1;
        if(s->resumed_motion && traveled>=.2 && s->odom_ns-s->phase_odom_ns>=UINT64_C(1000000000)) {
            unsigned error=input(s,&cap[RAW_INPUT],0,0,now,"raw-zero");if(error)return error;
            return advance(s,STOP,now);
        }
    } else if(s->phase==STOP) {
        if(s->cancel_at) {
            /* Keep the transient-local publisher alive through discovery. The
               supervisor separately requires the actual Python Wasm to exit 0;
               this delay is not a delivery acknowledgement. */
            if(!velocity(&s->odom.twist.twist,0,0,.01,.02))return 34;
            if(now-s->cancel_at>=UINT64_C(2000000000))return advance(s,COMPLETE,now);
            return 0;
        }
        if((!s->seen_command || s->command_at<s->phase_ns || !velocity(&s->command,0,0,1e-12,1e-12))
           && now-s->input_at>=UINT64_C(100000000)) {
            unsigned error=input(s,&cap[RAW_INPUT],0,0,now,"raw-zero-retry");if(error)return error;
        }
        if(stable_zero(s,now)) {
            unsigned error=roswasmc_publish_bool(&cap[CANCEL],1);if(error)return error;
            ++s->sent_inputs;s->cancel_at=now;
            return event(s,"cancel-request",now);
        }
    }
    return 0;
}
int main(int argc, char** argv)
{
    (void)argv;
    roswasmc_context context={roswasmc_ros2_backend()};
    roswasmc_capability cap[OWNER_COUNT];State s={0};
    unsigned primary=argc==1?0u:22u,cleanup[OWNER_COUNT]={0},emergency=0,io=0;
    uint64_t start=0,now=0;unsigned char wire[8368];
    for(unsigned i=0;i<OWNER_COUNT;++i)roswasmc_capability_init(&cap[i],&context);
    for(unsigned i=0;i<OWNER_COUNT && !primary;++i) {
        primary=roswasmc_open(&cap[i],aliases[i],strlen(aliases[i]));
        if(!primary && i<RAW_INPUT)primary=roswasmc_subscribe(&cap[i]);
    }
    if(!primary)primary=now_ns(&start);
    s.phase_ns=start;
    if(!primary)primary=event(&s,"owners-ready",start);
    while(!primary && s.phase!=COMPLETE) {
        primary=now_ns(&now);if(primary)break;
        uint64_t phase_limit=s.phase==BASELINE?UINT64_C(5000000000):s.phase==APPROACH?UINT64_C(20000000000):UINT64_C(8000000000);
        if(now<start || now-start>UINT64_C(45000000000) || now-s.phase_ns>phase_limit) {primary=110;break;}
        for(unsigned i=0;i<RAW_INPUT && !primary;++i) {
            roswasmc_result result=roswasmc_poll(&cap[i],wire,sizeof wire);
            if(result.error==UWVM_ROS_AGAIN)continue; /* Only ROS idle11 is benign. */
            if(result.error) {primary=result.error;break;}
            if(!result.has_length) {primary=22;break;}
            primary=i==ODOM?odometry(&s,wire,(size_t)result.length,now):i==SCAN?scan(&s,wire,(size_t)result.length,now):command(&s,wire,(size_t)result.length,now);
        }
        if(!primary)primary=step(&s,cap,now);
        if(!primary && s.phase!=COMPLETE)primary=wait_tick();
    }
    /* Best effort actual raw zero on failure. It is never physical stop proof;
       no immediate cancellation races that zero. The trusted guardian must
       retire/revoke the original actor and drive the independent direct-stop
       path if the original task cannot process this input. */
    if(primary && roswasmc_is_open(&cap[RAW_INPUT])) {
        roswasmc_twist zero={{0,0,0},{0,0,0}};emergency=roswasmc_publish_twist(&cap[RAW_INPUT],&zero);
    }
    for(unsigned i=OWNER_COUNT;i>0;--i)if(roswasmc_is_open(&cap[i-1]))cleanup[i-1]=roswasmc_close(&cap[i-1]);
    if(printf("TB3_DRIVER_RESULT_V1 phase=%s primary=%u emergency_raw_zero=%u observed_final_zero=%u "
        "input_sequence_complete=%u original_task_retired=UNQUALIFIED official_scene=UNQUALIFIED "
        "close_odom=%u close_scan=%u close_command=%u close_raw=%u close_cancel=%u\n",phases[s.phase],primary,emergency,
        s.phase==COMPLETE,s.phase==COMPLETE,cleanup[ODOM],cleanup[SCAN],cleanup[COMMAND],cleanup[RAW_INPUT],cleanup[CANCEL])<0 || fflush(stdout))io=5;
    for(unsigned i=0;i<OWNER_COUNT;++i)if(!primary && cleanup[i])primary=cleanup[i];
    if(!primary)primary=io;
    if(!primary && s.phase!=COMPLETE)primary=5;
    return primary>125?125:(int)primary;
}
