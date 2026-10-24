/** @brief Own and recover every complete original uwvm_spot_bridge/srv/Feedback_Response field.
 * @details Uses the public C++ codec and owning byte vectors. Invalid complete
 * extents are refused without a native call or authority grant.
 * @return Zero after exact bytes and checked stdout, otherwise a refusal code.
 */
#include <boston_dynamics/cpp/ros2/records.hpp>
#include <cstdio>

int main()
{
    uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response value{}, recovered{};
    roswasmcpp::wire::bytes encoded, restored;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>::encode(value, encoded))
        return 22;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>::decode(roswasmcpp::ByteView(encoded), recovered))
        return 22;
    if(!roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>::encode(recovered, restored))
        return 22;
    if(encoded != restored)
        return 22;
    const auto length = encoded.size();
    encoded.push_back(0);
    if(roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>::decode(roswasmcpp::ByteView(encoded), recovered))
        return 22;
    encoded.resize(length);
    if(length)
    {
        encoded.pop_back();
        if(roswasmcpp::Codec<uwvm_custom::Ros2Uwvm_spot_bridgeSrvFeedback_Response>::decode(roswasmcpp::ByteView(encoded), recovered))
            return 22;
    }
    if(std::printf("%zu\n", length) < 0 || std::fflush(stdout) == EOF)
        return 5;
    return 0;
}
