// SPDX-License-Identifier: Apache-2.0
#pragma once
#include "../common/config.h"
#include <uwvm2/imported/ros/common/service_availability.h>
namespace uwvm_default_control_gateway_detail {
using namespace ::uwvm2::ros_gateway;
inline std::string identity_text(std::uint8_t const(&bytes)[32]) {
 static constexpr char hex[]="0123456789abcdef";std::string text{"RIHS01_"};text.reserve(71);
 for(auto b:bytes){text.push_back(hex[b>>4]);text.push_back(hex[b&15]);}return text;
}
inline bool explicit_qos(ros::capability_spec const&cap) {
 for(auto key:{"qos.history","qos.reliability","qos.durability","qos.liveliness","qos.deadline","qos.lifespan","qos.liveliness-lease-duration"})
  if(cap.limits.find(key)==cap.limits.end())return false;
 // Native DDS history and the owned canonical queue are independent.
 // KEEP_ALL has no configured depth; KEEP_LAST requires an explicit positive
 // representable depth, without a product-invented numerical ceiling.
 auto history=field(cap,"qos.history");auto depth=limit(cap,"qos.depth");
 if(history!="keep-all"&&(history!="keep-last"||!depth||depth==ros::unlimited_quota||depth>SIZE_MAX))return false;
 auto const&r=field(cap,"qos.reliability");auto const&d=field(cap,"qos.durability");auto const&l=field(cap,"qos.liveliness");
 if((r!="reliable"&&r!="best-effort")||(d!="volatile"&&d!="transient-local")||(l!="automatic"&&l!="manual-by-topic"))return false;
 for(auto key:{"qos.deadline","qos.lifespan","qos.liveliness-lease-duration"}){auto const&t=field(cap,key);if(t!="infinite")(void)integer(t,86400000000000ULL);}return true;
}
    inline bool availability_selected(ros::capability_spec const& availability,ros::capability_spec const& source)
    {
        if(availability.alias.empty()||!explicit_qos(availability)||availability.limits.find("validator")!=availability.limits.end()||
            !ros::service_availability_pair(ros::version::ros2,availability,source))return false;
        // Actual operations enforce their own request, response, timeout and
        // concurrency quotas. Pair selection proves authority and identity;
        // omitted quotas remain unlimited and no cross-quota inequality grants
        // or removes access to this same retained client.
        return true;
    }
}
