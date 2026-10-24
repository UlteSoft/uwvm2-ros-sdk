<?php
// SPDX-License-Identifier: Apache-2.0

/**
 * Own one explicitly granted observation capability inside the PHP Wasm VM.
 * @param string $alias Exact strict UTF-8 grant name, 1..255 bytes.
 * @param string $typename Original message/response identity.
 * @param int $capacity Explicit canonical response bound in bytes.
 * @param bool $topic Whether to subscribe/poll instead of calling a service.
 * @param int $timeoutMs Monotonic state deadline, 1..30000 milliseconds.
 * @return array Owned typename/value/error/cleanup/vendor facts. Vendor is exact
 * signed int64 decimal text, including state value "0". No handle escapes.
 * @details Services are attempted once under gateway policy. Only idle errno 11
 * permits another topic poll. Capability close precedes response decoding.
 */
function agibot_observe($alias, $typename, $capacity, $topic, $timeoutMs)
{
    $result = array('typename' => $typename, 'value' => null, 'error' => 0, 'cleanup' => 0, 'vendor' => '0');
    if(!is_string($alias) || strlen($alias) < 1 || strlen($alias) > 255 || !uwvm_ros_utf8($alias) ||
       !is_int($timeoutMs) || $timeoutMs < 1 || $timeoutMs > 30000)
    {
        $result['error'] = 22;
        return $result;
    }
    $version = uwvm_ros_invoke('abi_version', '0', '', 0);
    if(!is_array($version) || $version[3] !== '1') { $result['error'] = 22; return $result; }
    $opened = uwvm_ros_invoke('capability_open', '0', $alias, 0);
    $result['error'] = $opened[0];
    if($result['error'] != 0) { return $result; }
    $owner = $opened[3];
    $frame = null;
    try
    {
        if($topic)
        {
            $clock = uwvm_ros_invoke('monotonic_ns', '0', '', 0);
            $result['error'] = $clock[0];
            $start = $clock[3];
            if($result['error'] == 0)
            {
                $activation = uwvm_ros_invoke('topic_subscribe', $owner, '', 0);
                $result['error'] = $activation[0];
            }
            while($result['error'] == 0)
            {
                $frame = uwvm_ros_invoke('event_poll', $owner, '', $capacity);
                $result['error'] = $frame[0];
                if($result['error'] != 11) { break; }
                $result['error'] = uwvm_ros_deadline($start, $timeoutMs);
                if($result['error'] != 0) { break; }
                $result['error'] = uwvm_ros_pause_ms(1);
            }
        }
        else
        {
            $frame = uwvm_ros_invoke('service_call', $owner, str_repeat("\0", 8), $capacity);
            $result['error'] = $frame[0];
        }
    }
    catch(Exception $failure)
    {
        $closed = uwvm_ros_invoke('capability_close', $owner, '', 0);
        throw $failure;
    }
    $closed = uwvm_ros_invoke('capability_close', $owner, '', 0);
    $result['cleanup'] = $closed[0];
    if($result['error'] != 0 || $result['cleanup'] != 0) { return $result; }
    try
    {
        if(!is_array($frame) || $frame[2] !== uwvm_ros_int64_text(strlen($frame[1])))
        {
            throw new AgibotDecodeError(22, 'Invalid returned extent');
        }
        $value = agibot_decode($typename, $frame[1]);
        $result['value'] = $value;
        if(!$topic)
        {
            $header = $value['header'];
            $code = $typename == 'aimdk_msgs/srv/GetRobotResources_Response' ? $header['header']['code'] : $header['code'];
            $result['vendor'] = uwvm_ros_int64_text($code);
        }
    }
    catch(AgibotDecodeError $failure) { $result['error'] = $failure->errorCode; }
    return $result;
}

/** Query original GetMcAction once. @param string $alias Explicit service grant.
 * @return array Owned complete response with independent error/close/vendor facts.
 */
function agibot_query_mode($alias)
{
    return agibot_observe($alias, 'aimdk_msgs/srv/GetMcAction_Response', 156, false, 3000);
}

/** Receive complete original state before a real monotonic deadline.
 * @param string $alias Explicit state-subscribe grant.
 * @param int $timeoutMs Deadline 1..30000 ms, default 3000; requires monotonic-clock.
 * @return array Full owned state; error 110 means expiry. No callback or worker
 * thread enters PHP. Original units, frames and timestamps remain intact.
 */
function agibot_next_motion_state($alias, $timeoutMs = 3000)
{
    return agibot_observe($alias, 'aimdk_msgs/msg/McCommonState', 698, true, $timeoutMs);
}

/** Enumerate original X2 Ultra resources without playback or download.
 * @param string $alias Explicit GetRobotResources service grant.
 * @return array Complete bounded resource/file lists and exact vendor code text.
 */
function agibot_list_resources($alias)
{
    return agibot_observe($alias, 'aimdk_msgs/srv/GetRobotResources_Response', 10236, false, 3000);
}
