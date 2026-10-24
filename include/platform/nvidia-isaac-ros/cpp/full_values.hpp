#pragma once
#include <fast_io.h>
#include <nvidia/cpp/support/basic_io.hpp>
#include <string_view>

namespace nvidia_values
{
    /**
     * @brief Format one complete telemetry line and check its complete stdio write.
     * @details Uses actual fast_io owning formatting, followed by bounded WASIp1
     * output. Arguments must already satisfy the generated complete-value quotas;
     * allocation happens before the 4096-byte line-output admission. Requires
     * ordinary stdout write access, no ROS/device right, and immutable argument
     * lifetimes through this synchronous call. Allocation exceptions propagate when
     * EH is enabled; no-EH allocation failure is not an errno guarantee.
     * @param[in] a Actual complete scalar/string-view fields in display order.
     * @return 0 after the entire line or the exact bounded output error.
     * @see humanoid_io::output
     * @see detections
     */
    template <class... A>
    std::uint32_t line(A const&... a)
    {
        auto s = fast_io::concat_std(a..., "\n");
        return humanoid_io::output(s.data(), s.size());
    }

    /**
     * @brief Display full signed seconds, nanoseconds and counted UTF-8 frame ID.
     * @details Does not strip empty text, substitute a clock, change metadata or
     * grant ROS access. The caller retains the validated generated Header and its
     * referenced text through the synchronous ordinary-stdout write.
     * @param[in] h Complete generated Header-shaped value with valid text extent.
     * @return Full-line output status; allocation failures follow line's EH mode.
     * @see line
     * @see detections
     */
    template <class H>
    std::uint32_t header(H const& h)
    {
        return line("sec=", h.stamp.sec, " nanosec=", h.stamp.nanosec, " frame_id=", std::string_view{h.frame_id.data, h.frame_id.size});
    }

    /**
     * @brief Display every XYZ coordinate of a complete generated point value.
     * @details No coordinate is projected away or converted into a motor command.
     * Requires validated finite coordinates, stable input lifetime and ordinary
     * stdout rights; no ROS/device permission or asynchronous work occurs here.
     * @param[in] p Full point with x, y and z, in the original message's units/frame.
     * @return Checked line-output status; allocation failures follow line's EH mode.
     * @see line
     * @see detections
     */
    template <class P>
    std::uint32_t point(P const& p)
    {
        return line("x=", p.x, " y=", p.y, " z=", p.z);
    }

    /**
     * @brief Display every field of a complete AprilTagDetectionArray observation.
     * @details Preserves array Header, each family/id/center/four corners, stamped
     * pose Header, XYZ/quaternion and all 36 covariance values. Stops on the first
     * output failure and does not label partial output successful. Input must be an
     * actual validated generated complete value whose storage remains immutable
     * through this synchronous callback. Ordinary stdout access is required; ROS
     * subscription admission belongs to the caller and no GPU/actuator right follows.
     * @param[in] v Full bounded generated array, without a reduced detection view.
     * @return 0 after every field is written, otherwise first output error; normal
     * allocation failures follow the selected C++20+ standard-library/EH profile.
     * @see header
     * @see telemetry.cpp
     */
    template <class A>
    std::uint32_t detections(A const& v)
    {
        if(auto e = header(v.header))
            return e;
        if(auto e = line("detections=", v.detections.size))
            return e;
        for(std::size_t i{}; i < v.detections.size; ++i)
        {
            auto const& d = v.detections.data[i];
            if(auto e = line("family=", std::string_view{d.family.data, d.family.size}, " id=", d.id))
                return e;
            if(auto e = point(d.center))
                return e;
            for(auto const& p: d.corners)
                if(auto e = point(p))
                    return e;
            if(auto e = header(d.pose.header))
                return e;
            auto const& pose = d.pose.pose.pose;
            if(auto e = point(pose.position))
                return e;
            if(auto e = line("qx=", pose.orientation.x, " qy=", pose.orientation.y, " qz=", pose.orientation.z, " qw=", pose.orientation.w))
                return e;
            for(auto c: d.pose.pose.covariance)
                if(auto e = line("covariance=", c))
                    return e;
        }
        return 0;
    }
}  // namespace nvidia_values
