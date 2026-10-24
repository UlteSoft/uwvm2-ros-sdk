/** @file
 * @brief Portable field-shape adapter to the original Unitree C CRC API.
 * @details The platform supplies crc.h first. No native padding, transport, allocation
 * or authority is introduced. Only crc commits after the original C packer
 * succeeds; range/model/controller safety remains outside this checksum.
 * @see roswasm_unitree::set_go_lowcmd_crc
 */
#pragma once
#include <platform/ros/cpp/roswasm/views.hpp>
#if __cplusplus >= 201103L
# include <array>
#endif
namespace roswasm_unitree
{
    namespace cpp_profile_detail
    {
        template <size_t N>
        struct CountProof
        {
            char elements[N ? N : 1];
        };
        template <class T, size_t N>
        CountProof<N> count(T const (&)[N]);
        template <class T, size_t N>
        CountProof<N> count(::roswasmcpp::FixedArray<T, N> const&);
#if __cplusplus >= 201103L
        template <class T, size_t N>
        CountProof<N> count(std::array<T, N> const&);
#endif
        template <class T>
        struct FloatProof
        {
            char different[2];
        };

        template <>
        struct FloatProof<float>
        {
            char exact;
        };
        template <class T>
        FloatProof<T> floating(T const&);

        template <class Out, class In>
        void go_motor(Out& out, In const& in)
        {
            out.mode = in.mode;
            out.q = in.q;
            out.dq = in.dq;
            out.tau = in.tau;
            out.kp = in.kp;
            out.kd = in.kd;
            for(unsigned i = 0; i < 3; ++i)
            {
                out.reserve[i] = in.reserve[i];
            }
        }

        template <class Out, class In>
        void hg_motor(Out& out, In const& in)
        {
            out.mode = in.mode;
            out.q = in.q;
            out.dq = in.dq;
            out.tau = in.tau;
            out.kp = in.kp;
            out.kd = in.kd;
            out.reserve = in.reserve;
        }
    }  // namespace cpp_profile_detail

    /** @brief Compute and commit a Go-family LowCmd checksum through the C packer.
     * @details Copies named fields into a zero-initialized canonical C value and
     * packs explicit bytes on the stack, never native Message padding. Compile-time
     * shape checks require 20 motors; 2-element head/sn/version/fan; 40 remote and
     * 12 LED bytes; 3 BMS/motor reserve elements; and exact float motor q. Other
     * field assignments follow ordinary compatible C++ conversions. The platform's
     * crc.h must declare the original C value, byte constant and pack_crc function.
     * Only message.crc changes, after successful C packing; numeric failure preserves
     * it. No packet is transmitted and a checksum establishes no controller safety.
     * @tparam Message Complete compatible fixed-field value using C arrays, FixedArray
     * or supported std::array fields, with nonthrowing scalar access/assignment.
     * @param message Live caller-owned complete LowCmd fields; crc is the destination.
     * @return Original uwvm_unitree_go_lowcmd_pack_crc status without remapping.
     * @see uwvm_unitree_go_lowcmd_pack_crc
     */
    template <class Message>
    uint32_t set_go_lowcmd_crc(Message& message) ROSWASM_CPP_NOEXCEPT
    {
        typedef char motors[(sizeof(cpp_profile_detail::count(message.motor_cmd)) == 20) ? 1 : -1];
        typedef char head[(sizeof(cpp_profile_detail::count(message.head)) == 2) ? 1 : -1];
        typedef char serial[(sizeof(cpp_profile_detail::count(message.sn)) == 2) ? 1 : -1];
        typedef char version[(sizeof(cpp_profile_detail::count(message.version)) == 2) ? 1 : -1];
        typedef char fan[(sizeof(cpp_profile_detail::count(message.fan)) == 2) ? 1 : -1];
        typedef char remote[(sizeof(cpp_profile_detail::count(message.wireless_remote)) == 40) ? 1 : -1];
        typedef char led[(sizeof(cpp_profile_detail::count(message.led)) == 12) ? 1 : -1];
        typedef char battery[(sizeof(cpp_profile_detail::count(message.bms_cmd.reserve)) == 3) ? 1 : -1];
        typedef char motor_reserve[(sizeof(cpp_profile_detail::count(message.motor_cmd[0].reserve)) == 3) ? 1 : -1];
        typedef char exact_float[(sizeof(cpp_profile_detail::floating(message.motor_cmd[0].q)) == 1) ? 1 : -1];
        uwvm_unitree_go_lowcmd view = {0};
        for(unsigned i = 0; i < 2; ++i)
        {
            view.head[i] = message.head[i];
            view.sn[i] = message.sn[i];
            view.version[i] = message.version[i];
            view.fan[i] = message.fan[i];
        }
        view.level_flag = message.level_flag;
        view.frame_reserve = message.frame_reserve;
        view.bandwidth = message.bandwidth;
        for(unsigned i = 0; i < 20; ++i)
        {
            cpp_profile_detail::go_motor(view.motor_cmd[i], message.motor_cmd[i]);
        }
        view.bms_off = message.bms_cmd.off;
        for(unsigned i = 0; i < 3; ++i)
        {
            view.bms_reserve[i] = message.bms_cmd.reserve[i];
        }
        for(unsigned i = 0; i < 40; ++i)
        {
            view.wireless_remote[i] = message.wireless_remote[i];
        }
        for(unsigned i = 0; i < 12; ++i)
        {
            view.led[i] = message.led[i];
        }
        view.gpio = message.gpio;
        view.reserve = message.reserve;
        uint8_t packed[UWVM_UNITREE_GO_LOWCMD_BYTES];
        size_t used = 0;
        uint32_t crc = 0;
        uint32_t status = uwvm_unitree_go_lowcmd_pack_crc(&view, packed, sizeof packed, &used, &crc);
        if(!status)
        {
            message.crc = crc;
        }
        return status;
    }

    /** @brief Compute and commit an HG-family LowCmd checksum through the C packer.
     * @details Requires 35 motor entries, 4 reserve entries and exact float motor q
     * at compile time. Copies named mode/motor/reserve fields into a zeroed C value,
     * then packs canonical bytes into fixed stack storage. Other field assignments
     * use compatible ordinary C++ conversions. Include the platform's original C
     * crc.h first. Only crc is committed after successful packing; no native padding,
     * transmission, implicit allocation or controller-state validation is added.
     * @tparam Message Complete compatible fixed-field value with nonthrowing scalar
     * accesses/assignments and supported fixed-count containers.
     * @param message Caller-owned complete HG LowCmd value; crc changes only on success.
     * @return Exact uwvm_unitree_hg_lowcmd_pack_crc status; failure preserves crc.
     * @see uwvm_unitree_hg_lowcmd_pack_crc
     */
    template <class Message>
    uint32_t set_hg_lowcmd_crc(Message& message) ROSWASM_CPP_NOEXCEPT
    {
        typedef char motors[(sizeof(cpp_profile_detail::count(message.motor_cmd)) == 35) ? 1 : -1];
        typedef char reserved[(sizeof(cpp_profile_detail::count(message.reserve)) == 4) ? 1 : -1];
        typedef char exact_float[(sizeof(cpp_profile_detail::floating(message.motor_cmd[0].q)) == 1) ? 1 : -1];
        uwvm_unitree_hg_lowcmd view = {0};
        view.mode_pr = message.mode_pr;
        view.mode_machine = message.mode_machine;
        for(unsigned i = 0; i < 35; ++i)
        {
            cpp_profile_detail::hg_motor(view.motor_cmd[i], message.motor_cmd[i]);
        }
        for(unsigned i = 0; i < 4; ++i)
        {
            view.reserve[i] = message.reserve[i];
        }
        uint8_t packed[UWVM_UNITREE_HG_LOWCMD_BYTES];
        size_t used = 0;
        uint32_t crc = 0;
        uint32_t status = uwvm_unitree_hg_lowcmd_pack_crc(&view, packed, sizeof packed, &used, &crc);
        if(!status)
        {
            message.crc = crc;
        }
        return status;
    }
}  // namespace roswasm_unitree
