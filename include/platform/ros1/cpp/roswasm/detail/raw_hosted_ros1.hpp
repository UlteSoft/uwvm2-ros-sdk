/** @file
 * @brief Counted hosted ROS 1 raw views for profiles below C++20.
 * @details Uses the same explicit raw owner and numeric C dispatch contract.
 * Views borrow caller storage only for synchronous calls; backend selection
 * creates no alias grant, native thread or retry.
 * @see uwvm_ros1::freestanding_capability
 */
#pragma once
#include <platform/ros1/cpp/roswasm/detail/raw_ros1.hpp>
#include <platform/ros/cpp/roswasm/views.hpp>

namespace uwvm_ros1
{
    /** @brief Portable hosted view conveniences over the unique ROS 1 raw owner.
     * @details Inherits the selected freestanding ownership/lifetime and operation
     * contracts. Counted overloads add no encoding, allocation or permission.
     * Old modes use the RawOwner transfer/copy restrictions of their profile.
     * @see freestanding_capability
     */
    class capability : public freestanding_capability
    {
    public:
        /** @brief Open one explicit alias from a counted borrowed view.
         * @details Delegates the exact pointer/count base operation without retaining
         * alias storage or inventing endpoint/native-type authority.
         * @param alias Live counted nonempty host-granted alias for this call.
         * @return Base open result, including repeated-open rejection.
         * @see freestanding_capability::open
         */
        uint32_t open(::roswasmcpp::StringView alias)
        {
            return freestanding_capability::open(alias.data(), alias.size());
        }

        /** @brief Publish one borrowed complete canonical message byte view.
         * @details Uses the independently granted publication role once; this
         * convenience performs no typed conversion, resize or retry.
         * @param bytes Live complete canonical message representation.
         * @return Exact base publication status.
         * @see freestanding_capability::publish
         */
        uint32_t publish(::roswasmcpp::ByteView bytes)
        {
            return freestanding_capability::publish(bytes.data(), bytes.size());
        }

        /** @brief Poll once into explicit caller-owned byte storage.
         * @details Delegates the base sentinel length contract and numeric idle/
         * size/error results without growing the buffer or consuming another event.
         * @param output Live writable destination, null only with zero capacity.
         * @param capacity Exact writable output bytes.
         * @param length Successful/written-required byte-count destination.
         * @return Exact freestanding base poll status.
         * @see freestanding_capability::poll
         */
        uint32_t poll(void* output, size_t capacity, uint64_t& length)
        {
            return freestanding_capability::poll(output, capacity, length);
        }
    };
}  // namespace uwvm_ros1
