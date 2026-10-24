# @file observation.rb
# @brief Complete original Unitree ROS 2 observations.
# @details The selected schema retains every original field. The caller lends an
# exact alias and finite poll budget; the result owns its complete decoded value.
# Normal acquired paths close once and retain independent operation/cleanup statuses.
module Uwvm
    module Unitree
        module Ros2
            module Observation
                module_function
                # @brief Observe every original SportModeState field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_motion_state(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros2Unitree_goMsgSportModeState, attempts, pause)
                end
                # @brief Observe every original LowState field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_low_state(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros2Unitree_goMsgLowState, attempts, pause)
                end
                # @brief Observe every original WirelessController field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_wireless_controller(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros2Unitree_goMsgWirelessController, attempts, pause)
                end
            end
        end
    end
end
