// SPDX-License-Identifier: Apache-2.0
#include <uwvm_ros/trajectory.h>
#include <joint_trajectory_controller/trajectory.hpp>
#include <array>
#include <bit>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <stdexcept>
#if defined(UWVM_TRAJECTORY_NATIVE_ORACLE)
using Point = trajectory_msgs::msg::JointTrajectoryPoint;
using Message = trajectory_msgs::msg::JointTrajectory;
using Time = rclcpp::Time;
constexpr auto ros_clock = RCL_ROS_TIME;
#else
using Point = uwvm_ros::trajectory_types::JointTrajectoryPoint;
using Message = uwvm_ros::trajectory_types::JointTrajectory;
using Time = uwvm_ros::trajectory_types::Time;
constexpr auto ros_clock = uwvm_ros::trajectory_types::Clock::ros;
#endif
using joint_trajectory_controller::Trajectory;
using joint_trajectory_controller::TrajectoryPointConstIter;
using joint_trajectory_controller::interpolation_methods::InterpolationMethod;
static unsigned checks;
static std::uint64_t digest = UINT64_C(14695981039346656037);
static void need(bool value) {
  ++checks;
  if (!value) { std::fprintf(stderr,"trajectory assertion %u failed\n",checks); std::exit(1); }
}
static void record(double value) {
  need(std::isfinite(value));
  std::uint64_t bits = std::bit_cast<std::uint64_t>(value);
  for (unsigned i=0;i<8;++i) { digest ^= (bits>>(i*8)) & 255; digest *= UINT64_C(1099511628211); }
}
static Time time_at(std::int64_t ns) { return Time(ns,ros_clock); }
static Point point(double position, std::int32_t sec, std::uint32_t ns=0) {
  Point p;p.positions={position};p.time_from_start.sec=sec;p.time_from_start.nanosec=ns;return p;
}
static void full_trajectory() {
  auto msg=std::make_shared<Message>();msg->header.stamp.sec=10;
  Point prior=point(0,0);prior.velocities={0};
  for (int i=1;i<=3;++i) {auto p=point(i,i);p.velocities={0};msg->points.push_back(p);}
  Trajectory t(time_at(INT64_C(10000000000)),prior,msg);
  Point out;TrajectoryPointConstIter start,finish;
  need(t.has_trajectory_msg() && t.has_nontrivial_msg());
  need(!t.sample(time_at(INT64_C(9999999999)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish));
  for (unsigned i=0;i<=48;++i) {
    need(t.sample(time_at(INT64_C(10000000000)+i*INT64_C(100000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish));
    need(out.positions.size()==1 && out.velocities.size()==1 && out.accelerations.size()==1);
    need(out.positions[0]>=0 && out.positions[0]<=3);
    record(out.positions[0]);record(out.velocities[0]);record(out.accelerations[0]);
  }
  need(t.last_sample_index()==2 && start==t.end()-1 && finish==t.end());
  t.update(msg);need(t.last_sample_index()==0 && !t.is_sampled_already());
  need(t.sample(time_at(INT64_C(11500000000)),InterpolationMethod::NONE,out,start,finish));
  need(out.positions[0]==2);
  Trajectory other(time_at(INT64_C(10000000000)),prior,msg);
  need(!other.is_sampled_already());
  need(other.sample(time_at(INT64_C(10250000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish,false));
  need(out.positions[0]==0.15625 && other.last_sample_index()==0);
  need(other.sample(time_at(INT64_C(10125000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish,false));
  need(out.positions[0]==0.04296875);
  auto empty=std::make_shared<Message>();Trajectory e(empty);
  need(!e.sample(time_at(0),InterpolationMethod::NONE,out,start,finish));
  need(start==e.end() && finish==e.end());
  bool caught=false;try {Trajectory absent;absent.begin();} catch(std::runtime_error const&) {caught=true;}
  need(caught);
  auto map=joint_trajectory_controller::mapping(std::vector<int>{3,2},std::vector<int>{1,2,3});
  need(map==std::vector<std::size_t>({2,1}));
  need(joint_trajectory_controller::mapping(std::vector<int>{4},std::vector<int>{1,2,3}).empty());
  std::vector<double> position{0,0},next{1.5*3.14159265358979323846,-1.5*3.14159265358979323846};
  joint_trajectory_controller::wraparound_joint(position,next,{true,true});
  need(std::abs(position[0]-2*3.14159265358979323846)<1e-12 && std::abs(position[1]+2*3.14159265358979323846)<1e-12);
  // Original skipped-final-segment velocity-only regression, with real prior
  // sampling to derive the middle point before jumping past the final point.
  auto derivative=std::make_shared<Message>();derivative->header.stamp.sec=10;
  auto p1=point(0,1);p1.velocities={1};auto p2=point(0,2);p2.positions.clear();p2.velocities={1};auto p3=p2;p3.time_from_start.nanosec=1000000;
  derivative->points={p1,p2,p3};prior=point(0,0);prior.velocities={1};
  Trajectory d(time_at(INT64_C(10000000000)),prior,derivative);
  need(d.sample(time_at(INT64_C(10000000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish));
  need(d.sample(time_at(INT64_C(11500000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish));
  need(d.sample(time_at(INT64_C(12100000000)),InterpolationMethod::VARIABLE_DEGREE_SPLINE,out,start,finish));
  need(out.positions.size()==1 && std::abs(out.positions[0]-1.001)<1e-12);record(out.positions[0]);
  auto zero=std::make_shared<Message>(*msg);zero->header.stamp.sec=0;
  Trajectory anchored(time_at(INT64_C(20000000000)),point(0,0),zero);
  need(anchored.sample(time_at(INT64_C(20000000000)),InterpolationMethod::NONE,out,start,finish));
  need(anchored.time_from_start().nanoseconds()==INT64_C(20000000000));
}
int main(int argc,char** argv) {
  bool trace=argc==2 && !std::strcmp(argv[1],"--trace");
  need(argc==1 || trace);
  full_trajectory();
  for (unsigned kind=0;kind<3;++kind) for (unsigned trial=0;trial<8;++trial) {
    constexpr std::size_t n=6;
    std::array<double,n>a,b,av,bv,aa,ba,ae,be,p,v,c,e;
    for (std::size_t j=0;j<n;++j) {
      a[j]=(double(j)-3)*0.125;b[j]=(double(trial)+1)*0.25-a[j];
      av[j]=(double(j)-2)*0.0625;bv[j]=(double(trial)-3)*0.03125;
      aa[j]=(double(j)-3)*0.125;ba[j]=-aa[j];ae[j]=double(j);be[j]=double(trial);
    }
    uwvm_ros_trajectory_point first{a.data(),kind?av.data():nullptr,kind==2?aa.data():nullptr,ae.data()};
    uwvm_ros_trajectory_point last{b.data(),kind?bv.data():nullptr,kind==2?ba.data():nullptr,be.data()};
    auto* segment=uwvm_ros_segment_create(n,&first,&last,INT64_C(2000000000));need(segment);
    for (unsigned i=0;i<=128;++i) {
      auto ns=INT64_C(15625000)*i;
      need(!uwvm_ros_segment_sample(segment,ns,p.data(),v.data(),c.data(),e.data(),n));
      for (std::size_t j=0;j<n;++j) {
        record(p[j]);record(v[j]);record(c[j]);record(e[j]);
        if (!kind) need(std::abs(p[j]-(a[j]+double(i)/128*(b[j]-a[j])))<1e-14);
      }
      if(trace) std::printf("%u %u %u %a %a %a %a\n",kind,trial,i,p[0],v[0],c[0],e[0]);
    }
    for(std::size_t j=0;j<n;++j)need(std::abs(p[j]-b[j])<1e-12);
    p.fill(123);v.fill(124);c.fill(125);e.fill(126);
    need(uwvm_ros_segment_sample(segment,0,p.data(),v.data(),c.data(),e.data(),n-1)==1);
    need(p[0]==123 && v[0]==124 && c[0]==125 && e[0]==126);
    need(uwvm_ros_segment_sample(segment,-1,p.data(),nullptr,nullptr,nullptr,n)==1 && p[0]==123);
    need(!uwvm_ros_segment_sample(segment,INT64_C(3000000000),p.data(),nullptr,nullptr,nullptr,n));
    for(std::size_t j=0;j<n;++j)need(std::abs(p[j]-b[j])<1e-12);
    uwvm_ros_segment_destroy(segment);
    need(!uwvm_ros_segment_create(0,&first,&last,1));need(!uwvm_ros_segment_create(n,&first,&last,-1));
    a[0]=std::numeric_limits<double>::quiet_NaN();need(!uwvm_ros_segment_create(n,&first,&last,1));
  }
  double a=std::numeric_limits<double>::max(),b=-a,out=42;
  uwvm_ros_trajectory_point first{&a,nullptr,nullptr,nullptr},last{&b,nullptr,nullptr,nullptr};
  auto* segment=uwvm_ros_segment_create(1,&first,&last,1000000000);need(segment);
  need(uwvm_ros_segment_sample(segment,500000000,&out,nullptr,nullptr,nullptr,1)==3 && out==42);
  uwvm_ros_segment_destroy(segment);
  a=2;b=3;segment=uwvm_ros_segment_create(1,&first,&last,0);need(segment);
  need(!uwvm_ros_segment_sample(segment,0,&out,nullptr,nullptr,nullptr,1) && out==2);
  uwvm_ros_segment_destroy(segment);
  std::printf("trajectory checks=%u digest=%016llx\n",checks,(unsigned long long)digest);
}
