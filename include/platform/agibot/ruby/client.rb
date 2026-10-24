# SPDX-License-Identifier: Apache-2.0
require 'agibot/ruby/records'

module Agibot
    # Owned full original data with independent ABI/codec, close and vendor facts.
    Observation = Struct.new(:typename, :value, :error, :cleanup, :vendor)

    # Synchronous AimDK operations executed exclusively inside the mruby Wasm VM.
    # Each operation owns one explicit capability and closes it before decoding.
    # No native Ruby application, socket, callback thread or service replay exists.
    module Client
        def self.observe(name, typename, capacity, topic, timeout_ms)
            result = Observation.new(typename, nil, 0, 0, 0)
            unless name.is_a?(String) && name.bytesize >= 1 && name.bytesize <= 255 &&
                timeout_ms.is_a?(Integer) && timeout_ms >= 1 && timeout_ms <= 30000
                result.error = 22
                return result
            end
            begin
                Records.utf8(name)
            rescue Records::DecodeError
                result.error = 22
                return result
            end
            unless UwvmRos.invoke('abi_version', '0', '', 0)[3] == '1'
                result.error = 22
                return result
            end
            opened = UwvmRos.invoke('capability_open', '0', name, 0)
            result.error = opened[0]
            return result unless result.error == 0
            owner = opened[3]
            frame = nil
            begin
                if topic
                    clock = UwvmRos.invoke('monotonic_ns', '0', '', 0)
                    result.error = clock[0]
                    start = clock[3].to_i if result.error == 0
                    result.error = UwvmRos.invoke('topic_subscribe', owner, '', 0)[0] if result.error == 0
                    while result.error == 0
                        frame = UwvmRos.invoke('event_poll', owner, '', capacity)
                        result.error = frame[0]
                        break unless result.error == 11
                        now = UwvmRos.invoke('monotonic_ns', '0', '', 0)
                        if now[0] != 0 || now[3].to_i < start
                            result.error = now[0] == 0 ? 5 : now[0]
                            break
                        end
                        if now[3].to_i - start >= timeout_ms * 1000000
                            result.error = 110
                            break
                        end
                        result.error = UwvmRos.pause_ms(1)
                    end
                else
                    frame = UwvmRos.invoke('service_call', owner, "\0" * 8, capacity)
                    result.error = frame[0]
                end
            ensure
                result.cleanup = UwvmRos.invoke('capability_close', owner, '', 0)[0]
            end
            return result unless result.error == 0 && result.cleanup == 0
            begin
                unless frame && frame[2] == frame[1].bytesize.to_s
                    raise Records::DecodeError.new(22, 'Invalid returned extent')
                end
                result.value = Records.decode(typename, frame[1])
                unless topic
                    header = result.value['header']
                    result.vendor = typename.include?('GetRobotResources') ? header['header']['code'] : header['code']
                end
            rescue Records::DecodeError => invalid
                result.error = invalid.code
            end
            result
        end

        # Query original GetMcAction once; inspect vendor separately from errno.
        # @param name [String] Exact granted service alias, 1..255 UTF-8 bytes.
        # @return [Observation] Owned full record after one checked close.
        def self.query_mode(name)
            observe(name, 'aimdk_msgs/srv/GetMcAction_Response', 156, false, 3000)
        end

        # Receive full original state without changing units, frames or timestamps.
        # @param name [String] Exact granted state-subscribe alias.
        # @param timeout_ms [Integer] Monotonic deadline in 1..30000 ms.
        # @return [Observation] Error 110 means expiry; no owner or pointer escapes.
        def self.next_motion_state(name, timeout_ms = 3000)
            observe(name, 'aimdk_msgs/msg/McCommonState', 698, true, timeout_ms)
        end

        # Enumerate complete bounded X2 Ultra resources without playback/download.
        # @param name [String] Explicit GetRobotResources service alias.
        # @return [Observation] Owned full resources and exact vendor code.
        def self.list_resources(name)
            observe(name, 'aimdk_msgs/srv/GetRobotResources_Response', 10236, false, 3000)
        end
    end
end
