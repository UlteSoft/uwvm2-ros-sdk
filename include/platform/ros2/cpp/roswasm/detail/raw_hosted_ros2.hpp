/** @file
 * @brief Counted hosted ROS 2 raw views for profiles below C++20.
 * @details Uses the same explicit raw owner and numeric C dispatch contract.
 * Borrowed views must remain live during synchronous calls. Selection supplies
 * no alias grant, native type association, callback thread or retry.
 * @see uwvm_ros2::freestanding_capability
 */
#pragma once
#include <platform/ros2/cpp/roswasm/detail/raw_ros2.hpp>
#include <platform/ros/cpp/roswasm/views.hpp>

namespace uwvm_ros2
{
    /** @brief Portable hosted view conveniences over the unique ROS 2 raw owner.
     * @details Inherits the selected freestanding lifetime/ownership and operation
     * contract. Counted overloads add no encoding, allocation or stronger grant.
     * Old modes retain their RawOwner transfer/copy restrictions.
     * @see freestanding_capability
     */
    class capability : public freestanding_capability
    {
    public:
        /** @brief Open one exact explicit alias from a borrowed counted view.
         * @details Delegates the pointer/count base operation; alias storage is
         * borrowed only during this acquisition and host authorization stays separate.
         * @param alias Live nonempty counted host-granted spelling.
         * @return Base open result, including repeated-open rejection.
         * @see freestanding_capability::open
         */
        uint32_t open(::roswasmcpp::StringView alias)
        {
            return freestanding_capability::open(alias.data(), alias.size());
        }

        /** @brief Publish one complete borrowed canonical message byte view.
         * @details Uses the independently granted publication role once without
         * local typed conversion, buffer growth or automatic replay.
         * @param bytes Live complete selected canonical message representation.
         * @return Exact base publication result.
         * @see freestanding_capability::publish
         */
        uint32_t publish(::roswasmcpp::ByteView bytes)
        {
            return freestanding_capability::publish(bytes.data(), bytes.size());
        }

        /** @brief Poll one event/message into explicit borrowed byte storage.
         * @details Preserves the base length-slot contract and numeric idle/size/
         * error behavior; no hidden decoding, resize or repeated receive is added.
         * @param output Live writable destination, null only with zero capacity.
         * @param capacity Exact available output bytes.
         * @param length Successful/written-required byte-count destination.
         * @return Exact base poll status.
         * @see freestanding_capability::poll
         */
        uint32_t poll(void* output, size_t capacity, uint64_t& length)
        {
            return freestanding_capability::poll(output, capacity, length);
        }
    };
}  // namespace uwvm_ros2
