/*************************************************************
 * UWVM2 filtered, bounded TF ingress. APL-2.0.               *
 *************************************************************/
#pragma once
#include "quota_wait.h"
#include <uwvm2/imported/ros/ipc/transform.h>
#include <mutex>
#include <deque>
#include <thread>
#include <cstring>

namespace uwvm2::ros_gateway
{
    inline std::uint32_t transform_permission(ros::capability_spec const& cap,ipc::transform_data const& transform)
    {
        if(!ipc::valid_transform(transform)) { return 22; }
        if(transform.parent!=field(cap,"target-frame")||transform.child!=field(cap,"source-frame")) { return 13; }
        auto bound{positive(field(cap,"tf.max-translation-abs"))},epsilon{positive(field(cap,"tf.quaternion-norm-tolerance"))};
        if(epsilon>0.001) { return 22; }
        for(unsigned i{};i!=3;++i) { if(std::abs(transform.values[i])>bound) { return 13; } }
        double norm{};for(unsigned i=3;i!=7;++i) { norm+=transform.values[i]*transform.values[i]; }
        return std::abs(norm-1.)<=epsilon?0:22;
    }
    struct tf_ingress
    {
        ros::capability_spec capability;
        std::mutex mutex;
        std::deque<ipc::transform_data> history{};
        std::uint64_t history_bytes{};
        gateway_bucket quota;
        std::shared_ptr<quota_connection> waiting{quota_owner()};
        bool active{true};
        explicit tf_ingress(ros::capability_spec c):capability{std::move(c)} {}
        void deactivate() {std::lock_guard<std::mutex> guard{mutex};active=false;quota.notify_waiters();}
        // A callback owns the canonical transform while a wait releases only
        // this ingress mutex; it never asks the middleware to take it again.
        bool admit(ipc::transform_data const& transform,std::unique_lock<std::mutex>& guard)
        {
            if(!active||transform_permission(capability,transform))return false;
            auto size=ipc::encode_transform(transform).size();
            if(size>limit(capability,"max-message-bytes")||size>limit(capability,"max-queue-bytes"))return false;
            return quota.take_locked(capability,size,guard,[&]{return active;});
        }
        bool retain(ipc::transform_data const& transform,std::unique_lock<std::mutex>& guard)
        {
            // Dynamic tf2 samples keep their existing duplicate-stamp rule.
            if(capability.resource!="/tf_static"&&!history.empty()&&history.back().seconds==transform.seconds&&history.back().nanoseconds==transform.nanoseconds) { return false; }
            auto size{ipc::encode_transform(transform).size()};
            auto depth{queue_capacity(capability,capability.type.find("/msg/")==std::string::npos?"queue-depth":"qos.depth")};
            auto maximum{limit(capability,"max-queue-bytes")};
            if(capability.resource=="/tf_static")
            {
                // A static frame has one latest value, including replacements
                // with the same timestamp. Admission already checked rate,
                // wire bytes and frame permissions before this cache update.
                if(!depth||size>maximum) { return false; }
                if(history.size()==1)
                {
                    auto const& previous{history.front()};
                    if(previous.sequence==transform.sequence&&previous.seconds==transform.seconds&&previous.nanoseconds==transform.nanoseconds&&
                       previous.parent==transform.parent&&previous.child==transform.child&&
                       !std::memcmp(previous.values.data(),transform.values.data(),previous.values.size()*sizeof(previous.values[0]))) { return false; }
                }
                if(history.empty()) { history.push_back(transform); }
                else { history.front()=transform;while(history.size()>1) { history.pop_back(); } }
                history_bytes=size;return true;
            }
            // Reclaim only samples outside the explicitly configured TF cache
            // horizon. Local resource exhaustion does not discard live samples.
            auto stamp=[](ipc::transform_data const& t){return std::uint64_t(t.seconds)*1000000000u+t.nanoseconds;};
            auto newest=stamp(transform);auto horizon=limit(capability,"buffer-cache-ms")*1000000u;
            while(!history.empty()&&newest>stamp(history.front())&&newest-stamp(history.front())>horizon)
            {history_bytes-=ipc::encode_transform(history.front()).size();history.pop_front();quota.notify_waiters();}
            auto depth_key=capability.type.find("/msg/")==std::string::npos?"queue-depth":"qos.depth";
            auto depth_action=ros::quota_setting(capability,depth_key,".on-exhausted");
            auto bytes_action=ros::quota_setting(capability,"max-queue-bytes",".on-exhausted");
            if(depth_action.empty())depth_action=field(capability,"overflow-policy");
            if(bytes_action.empty())bytes_action=field(capability,"overflow-policy");
            ros::synchronous_quota_wait space;
            while(history.size()>=depth||history_bytes>maximum||size>maximum-history_bytes)
            {
                bool full=history.size()>=depth,bytes_full=history_bytes>maximum||size>maximum-std::min(maximum,history_bytes);
                if(!depth||size>maximum||(full&&depth_action!="wait")||(bytes_full&&bytes_action!="wait"))return false;
                auto* scope=current_quota_scope;if(!scope)return false;
                auto error=quota.wait_locked(space,scope->deadline,guard,[&]{return active;},
                    (full&&ros::quota_wait_on_exit(capability,depth_key))||(bytes_full&&ros::quota_wait_on_exit(capability,"max-queue-bytes")));
                if(error){scope->error=error;return false;}
            }
            history.push_back(transform); history_bytes+=size; return true;
        }
    };
}
