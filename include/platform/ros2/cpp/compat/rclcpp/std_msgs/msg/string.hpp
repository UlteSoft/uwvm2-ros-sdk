/** @file
 * @brief Complete source String value for the selected minimal examples.
 * @details This opt-in include map supplies ordinary C++20 values and pointer
 * aliases. The selected adapter codec separately validates canonical bytes; no
 * native generated type support, binary rclcpp ABI or RIHS provider is supplied.
 * @see std_msgs::msg::String
 */
#pragma once
#include <memory>
#include <string>

namespace std_msgs::msg
{
    /** @brief Owning String field surface used by the selected source examples.
     * @details Copies own their text. Publishing requires a separately granted
     * topic row and the adapter's canonical String codec and byte capacity.
     * @see String::data
     */
    struct String
    {
        /** @brief Shared mutable source-message ownership alias.
         * @details Copying the pointer shares this C++ value, not a ROS capability.
         * @see String::ConstSharedPtr
         */
        using SharedPtr = std::shared_ptr<String>;
        /** @brief Shared const source-message ownership alias.
         * @details The pointed value remains alive while a shared owner is retained.
         * @see String::SharedPtr
         */
        using ConstSharedPtr = std::shared_ptr<String const>;
        /** @brief Owning source text serialized by the selected String codec.
         * @details The value adds no topic alias, encoding guarantee or host quota;
         * canonical validation occurs when encoding/decoding it.
         * @see String
         */
        std::string data;
    };
}  // namespace std_msgs::msg
