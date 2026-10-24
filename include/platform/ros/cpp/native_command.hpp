/**
 * @file native_command.hpp
 * @brief Execute complete finite native ROS commands with the actual C++ owner.
 * @details The selected freestanding C++ capability keeps its original ABI and
 * retirement semantics. Shared local C codecs only encode/decode values; they
 * do not execute this C++ application's control flow or own its capability.
 */
#ifndef UWVM_ROS_CPP_NATIVE_COMMAND_HPP
#define UWVM_ROS_CPP_NATIVE_COMMAND_HPP
#include <ros/c/native_command.h>

/**
 * @brief Perform one finite operation with a real backend-specific C++ owner.
 * @tparam Owner Selected original ROS1 or ROS2 freestanding_capability type.
 * @param operation One=publish, two=subscribe, three=Trigger.
 * @return Original primary error before independent cleanup or output error.
 * @details Only idle subscription 11 admits another poll. Failed publication
 * and synchronous service calls are never replayed. Whole original false
 * Trigger diagnostics and strict UTF-8 responses remain observable.
 */
template <typename Owner>
uwvm_ros_u32 uwvm_ros_cpp_native_run(unsigned operation)
{
    uwvm_ros_native_outcome facts{};
    if(operation < 1 || operation > 3)
    {
        return UWVM_ROS_INVALID;
    }
    Owner owner;
    facts.primary = owner.open("sample", 6);
    if(facts.primary)
    {
        return uwvm_ros_native_report(&facts);
    }
    if(operation == 1)
    {
        char const data[] = "hello native ROS";
        size_t size{};
        facts.primary = roswasmc_encode_string(roswasmc_string_init(data, sizeof data - 1), facts.wire, sizeof facts.wire, &size);
        for(unsigned sample{}; !facts.primary && sample != 2; ++sample)
        {
            facts.rpc = facts.primary = owner.publish(facts.wire, size);
            facts.rpc_present = 1;
            if(!facts.primary)
            {
                facts.primary = uwvm_ros_command_pause(sample == 0 ? 1000000000 : 200000000);
            }
        }
        facts.text = roswasmc_string_init(data, sizeof data - 1);
        facts.wire_size = size;
        facts.cleanup_present = 1;
        facts.cleanup = owner.close();
        return uwvm_ros_native_report(&facts);
    }
    if(operation == 2)
    {
        facts.primary = owner.subscribe();
    }
    for(unsigned attempt{}; !facts.primary && attempt != (operation == 2 ? 250u : 1u); ++attempt)
    {
        uwvm_ros_u64 length = ~(uwvm_ros_u64)0;
        facts.rpc = operation == 2 ? owner.poll(facts.wire, sizeof facts.wire, length) : owner.service_call(nullptr, 0, facts.wire, sizeof facts.wire, length);
        facts.rpc_present = 1;
        facts.length_present = length != ~(uwvm_ros_u64)0;
        facts.length = length;
        if(operation == 2 && facts.rpc == UWVM_ROS_AGAIN && attempt != 249)
        {
            facts.primary = uwvm_ros_command_pause(20000000);
            continue;
        }
        facts.primary = facts.rpc;
        break;
    }
    uwvm_ros_native_decode(&facts, operation);
    facts.cleanup_present = 1;
    facts.cleanup = owner.close();
    return uwvm_ros_native_report(&facts);
}
#endif
