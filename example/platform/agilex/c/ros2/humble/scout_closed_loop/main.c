/* SCOUT simulation application. Every control decision executes inside Wasm.
 * Native components provide physics, the original differential drive and ROS
 * transport only. No native controller supplies velocities or task results. */
#define _POSIX_C_SOURCE 200809L
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <platform/ros/c/command.h>
#include <platform/ros2/c/roswasm/detail/ros2/abi.h>
#include <platform/agilex/c/ros2/records.h>

static uint64_t command_handle, odometry_handle;
static unsigned char incoming[952], outgoing[48];
static roswasmc_bounded_2_nav_msgs_msg_Odometry odometry;
static double now(void) {
    struct timespec t;
    if (clock_gettime(CLOCK_MONOTONIC, &t)) return -1;
    return (double)t.tv_sec + (double)t.tv_nsec * 1e-9;
}
static double angle(double a) {
    while (a > 3.141592653589793) a -= 6.283185307179586;
    while (a < -3.141592653589793) a += 6.283185307179586;
    return a;
}
static uint32_t velocity(double linear, double angular) {
    roswasmc_bounded_2_geometry_msgs_msg_Twist value = {0};
    size_t n = 0;
    value.linear.x = linear; value.angular.z = angular;
    uint32_t e = roswasmc_bounded_2_geometry_msgs_msg_Twist_encode(&value, outgoing, sizeof outgoing, &n);
    if (e || n != 48) return e ? e : 22;
    return uwvm_ros2_topic_publish(command_handle, 0, (uint64_t)(uintptr_t)outgoing, n);
}
static uint32_t receive(void) {
    uint64_t n = 0;
    uint32_t e = uwvm_ros2_event_poll(odometry_handle, 0, (uint64_t)(uintptr_t)incoming,
                                    sizeof incoming, (uint64_t)(uintptr_t)&n);
    if (e) return e;
    return roswasmc_bounded_2_nav_msgs_msg_Odometry_decode(incoming, (size_t)n, &odometry);
}
static int rejection(char const *name, uint32_t actual, uint32_t expected) {
    printf("{\"kind\":\"denial\",\"case\":\"%s\",\"errno\":%u}\n", name, actual);
    return actual == expected;
}
static int task(void) {
    uint32_t e;
    uint64_t absent = UINT64_C(0x1122334455667788);
    if (!rejection("ungranted_alias", uwvm_ros2_open("forbidden", 9, &absent), 13) ||
        absent != UINT64_C(0x1122334455667788)) return 70;
    if ((e = uwvm_ros2_open("command", 7, &command_handle)) ||
        (e = uwvm_ros2_open("odometry", 8, &odometry_handle))) return e;
    if (!rejection("wrong_memory_index", uwvm_ros2_topic_publish(command_handle, 1,
                (uint64_t)(uintptr_t)outgoing, 48), 22)) return 71;
    e = uwvm_ros2_topic_publish(command_handle, 0, UINT64_C(0xfffffff0), 48);
    printf("{\"kind\":\"denial\",\"case\":\"out_of_bounds\",\"errno\":%u}\n",e);
    if (e!=22) return 72;
    if (!rejection("forged_handle", uwvm_ros2_topic_publish(UINT64_C(0x12345678),0,
                (uint64_t)(uintptr_t)outgoing,48),9)) return 73;
    if (!rejection("publish_with_subscription", uwvm_ros2_topic_publish(odometry_handle,0,
                (uint64_t)(uintptr_t)outgoing,48),13)) return 74;
    if ((e=uwvm_ros2_topic_subscribe(odometry_handle))) return e;
    double began=now(), last_feedback=began, last_command=began, phase_began=began;
    double x0=0,y0=0,yaw0=0, stopped_x=0,stopped_y=0,stopped_yaw=0;
    uint64_t last_stamp=0; unsigned samples=0, phase_samples=0, commands=0;
    double turn_integral=0;
    int phase=0;
    if (began < 0) return 75;
    for (;;) {
        double t=now();
        if (t<began || t-began>60) return 110;
        e=receive();
        if (e && e!=11) return e;
        if (!e) {
            uint64_t stamp=(uint64_t)(uint32_t)odometry.header.stamp.sec*UINT64_C(1000000000)+odometry.header.stamp.nanosec;
            if (odometry.header.stamp.sec<0 || odometry.header.stamp.nanosec>=1000000000 ||
                odometry.header.frame_id.size!=4 || memcmp(odometry.header.frame_id.data,"odom",4) ||
                odometry.child_frame_id.size!=9 || memcmp(odometry.child_frame_id.data,"base_link",9)) return 76;
            if (stamp<last_stamp) return 77;
            if (stamp!=last_stamp) {
                last_stamp=stamp; last_feedback=t; ++samples; ++phase_samples;
                double x=odometry.pose.pose.position.x,y=odometry.pose.pose.position.y;
                double qz=odometry.pose.pose.orientation.z,qw=odometry.pose.pose.orientation.w;
                double yaw=atan2(2*qw*qz,1-2*qz*qz);
                double speed=odometry.twist.twist.linear.x, spin=odometry.twist.twist.angular.z;
                if (!isfinite(x)||!isfinite(y)||!isfinite(yaw)||!isfinite(speed)||!isfinite(spin)) return 78;
                if (!phase) { x0=x;y0=y;yaw0=yaw;phase=1;phase_began=t;phase_samples=0; }
                double dx=x-x0,dy=y-y0,progress=dx*cos(yaw0)+dy*sin(yaw0);
                double lateral=-dx*sin(yaw0)+dy*cos(yaw0);
                if (fabs(lateral)>.10 || hypot(dx,dy)>1.0) return 79;
                if (phase==1 && progress>=.49) { phase=2;phase_began=t;phase_samples=0;stopped_x=x;stopped_y=y; }
                if (phase==2 && t-phase_began>=1.5 && phase_samples>=20 && fabs(speed)<.01) {
                    if (hypot(x-stopped_x,y-stopped_y)>.04) return 80;
                    phase=3;phase_began=t;phase_samples=0;
                }
                if (phase==3 && angle(yaw-yaw0)>=.78 && angle(yaw-yaw0)<=.82 &&
                    progress>=.49 && progress<=.57 && fabs(speed)<.015 && fabs(spin)<.08) { phase=4;phase_began=t;phase_samples=0;stopped_x=x;stopped_y=y;stopped_yaw=yaw; }
                printf("{\"kind\":\"feedback\",\"sample\":%u,\"stamp_ns\":%llu,\"phase\":%d,\"x\":%.9f,\"y\":%.9f,\"yaw\":%.9f,\"linear\":%.9f,\"angular\":%.9f}\n",
                       samples,(unsigned long long)stamp,phase,x,y,yaw,speed,spin);
                if (phase==4 && t-phase_began>=2 && phase_samples>=30 && fabs(speed)<.01 && fabs(spin)<.015) {
                    if (hypot(x-stopped_x,y-stopped_y)>.02 || fabs(angle(yaw-stopped_yaw))>.04 ||
                        progress<.49 || progress>.57 || fabs(angle(yaw-yaw0)-.8)>.06 || samples<100) return 81;
                    /* The common exit path sends the final zero exactly once. */
                    printf("{\"kind\":\"task_pass\",\"distance_m\":%.9f,\"yaw_delta_rad\":%.9f,\"unique_feedback\":%u,\"commands\":%u,\"elapsed_seconds\":%.9f}\n",
                           progress,angle(yaw-yaw0),samples,commands+1,t-began);
                    return 0;
                }
                if (t-phase_began>20) return 110;
            }
        }
        if (t-last_feedback>(phase?1.0:10.0)) return 110;
        if (phase && t-last_command>=.05) {
            double yaw=atan2(2*odometry.pose.pose.orientation.w*odometry.pose.pose.orientation.z,
                            1-2*odometry.pose.pose.orientation.z*odometry.pose.pose.orientation.z);
            double progress=(odometry.pose.pose.position.x-x0)*cos(yaw0)+(odometry.pose.pose.position.y-y0)*sin(yaw0);
            double linear=phase==1?fmin(.12,fmax(.025,.8*(.5-progress))):0;
            double angular=phase==1?fmax(-.15,fmin(.15,-angle(yaw-yaw0))):
                           phase==3?fmax(-.25,fmin(.25,.8*(.8-angle(yaw-yaw0)))):0;
            if (phase==3) {
                /* Hold the endpoint using measured body velocity and position.
                 * This also rejects drift from the original skid-steer model.
                 * All feedback correction and integration happen in Wasm. */
                double target_x=x0+.5*cos(yaw0),target_y=y0+.5*sin(yaw0);
                double error=(target_x-odometry.pose.pose.position.x)*cos(yaw)+
                             (target_y-odometry.pose.pose.position.y)*sin(yaw);
                double desired=fmax(-.08,fmin(.08,.8*error));
                double velocity_error=desired-odometry.twist.twist.linear.x;
                turn_integral=fmax(-.10,fmin(.10,turn_integral+.8*velocity_error*fmin(.1,t-last_command)));
                linear=fmax(-.10,fmin(.10,.15*desired+.12*velocity_error+turn_integral));
            }
            if ((e=velocity(linear,angular))) return e;
            ++commands;last_command=t;
        }
        if (uwvm_ros_command_pause(10000000)) return 5;
    }
}
int main(void) {
    setvbuf(stdout,NULL,_IONBF,0);
    int status=task(); uint32_t stop=0,rxclose=0,txclose=0;
    if (command_handle) stop=velocity(0,0);
    if (odometry_handle) rxclose=uwvm_ros2_capability_close(odometry_handle);
    if (command_handle) {
        txclose=uwvm_ros2_capability_close(command_handle);
        if (!status && !rejection("closed_handle",uwvm_ros2_topic_publish(command_handle,0,
             (uint64_t)(uintptr_t)outgoing,48),9)) status=82;
    }
    printf("{\"kind\":\"exit\",\"task_status\":%d,\"stop_status\":%u,\"rx_close\":%u,\"tx_close\":%u}\n",status,stop,rxclose,txclose);
    return status?status:stop?stop:rxclose?rxclose:txclose;
}
