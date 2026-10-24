/// @file observation.d
/// @brief Typed complete clearpath observers and service clients.
module clearpath.d.ros2.main.observation;
public
import native.d.observation;
import native.d.wire;
public
import clearpath.d.ros2.main.records;
/// @brief Observe every original builtin_interfaces/msg/Duration field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Builtin_interfacesMsgDuration waitRos2Builtin_interfacesMsgDuration(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros2Builtin_interfacesMsgDuration(aliasBytes, attempts);
}

/// @brief Observe every original builtin_interfaces/msg/Time field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Builtin_interfacesMsgTime waitRos2Builtin_interfacesMsgTime(const(ubyte)[] aliasBytes, uint attempts)
    @nogc nothrow
{
    return receive !Ros2Builtin_interfacesMsgTime(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Drive field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgDrive waitRos2Clearpath_platform_msgsMsgDrive(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgDrive(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/DriveFeedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgDriveFeedback waitRos2Clearpath_platform_msgsMsgDriveFeedback(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgDriveFeedback(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Fans field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgFans waitRos2Clearpath_platform_msgsMsgFans(const(ubyte)[] aliasBytes,
                                                                                       uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgFans(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Feedback field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgFeedback waitRos2Clearpath_platform_msgsMsgFeedback(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgFeedback(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Lights field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgLights waitRos2Clearpath_platform_msgsMsgLights(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgLights(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Power field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgPower waitRos2Clearpath_platform_msgsMsgPower(const(ubyte)[] aliasBytes,
                                                                                         uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgPower(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/RGB field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgRGB waitRos2Clearpath_platform_msgsMsgRGB(const(ubyte)[] aliasBytes,
                                                                                     uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgRGB(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/Status field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgStatus waitRos2Clearpath_platform_msgsMsgStatus(const(ubyte)[] aliasBytes,
                                                                                           uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgStatus(aliasBytes, attempts);
}

/// @brief Observe every original clearpath_platform_msgs/msg/StopStatus field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Clearpath_platform_msgsMsgStopStatus waitRos2Clearpath_platform_msgsMsgStopStatus(
    const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Clearpath_platform_msgsMsgStopStatus(aliasBytes, attempts);
}

/// @brief Observe every original std_msgs/msg/Header field through one retained owner.
/// @param aliasBytes Borrowed exact-type strict UTF-8 subscription alias.
/// @param attempts Total finite poll budget in 1..250.
/// @return Complete owned original record and independent operation/close facts.
/// @details Only idle 11 is retried; fatal traps cannot promise ordinary cleanup.
Observation !Ros2Std_msgsMsgHeader waitRos2Std_msgsMsgHeader(const(ubyte)[] aliasBytes, uint attempts) @nogc nothrow
{
    return receive !Ros2Std_msgsMsgHeader(aliasBytes, attempts);
}

/// @brief Call complete clearpath_platform_msgs/srv/ConfigureMcu exactly once.
/// @details Encode the complete request before acquisition. Retain original transport and close errors.
/// @param aliasBytes Strict UTF-8 exact-type service.call alias, 1..255 bytes, borrowed until return.
/// @param requestValue Complete immutable original request; every field and bound is validated.
/// @return Entire owned response with independent transport, provider and cleanup facts.
/// @details A timeout or ambiguous effect is never replayed. Normal acquired owners close once.
Observation !Ros2Clearpath_platform_msgsSrvConfigureMcu_Response callRos2Clearpath_platform_msgsSrvConfigureMcu(
    const(ubyte)[] aliasBytes, ref const(Ros2Clearpath_platform_msgsSrvConfigureMcu_Request) requestValue) @nogc nothrow
{
    Observation !Ros2Clearpath_platform_msgsSrvConfigureMcu_Response result;
    ubyte[261] bytes;
    size_t written;
    Ros2Clearpath_platform_msgsSrvConfigureMcu_Request owned_request = requestValue;
    result.primary = native.d.wire.encode(owned_request, bytes, written);
    if (result.primary)
        return result;
    result = native.d.observation.request !Ros2Clearpath_platform_msgsSrvConfigureMcu_Response(
        aliasBytes, 1, bytes[0 ..written]);
    return result;
}
