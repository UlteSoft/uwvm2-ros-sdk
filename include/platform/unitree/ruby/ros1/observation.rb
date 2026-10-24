# @file observation.rb
# @brief Complete original Unitree ROS 1 observations.
# @details The selected schema retains every original field. The caller lends an
# exact alias and finite poll budget; the result owns its complete decoded value.
# Normal acquired paths close once and retain independent operation/cleanup statuses.
module Uwvm
    module Unitree
        module Ros1
            module Observation
                module_function
                # @brief Observe every original HighState field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_motion_state(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros1Unitree_legged_msgsHighState, attempts, pause)
                end
                # @brief Observe every original LowState field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_low_state(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros1Unitree_legged_msgsLowState, attempts, pause)
                end
                # @brief Observe every original MotorState field.
                # @param name Exact alias. @param attempts Total budget 1..250.
                # @param pause Caller idle wait. @return Whole value and independent native facts.
                def wait_motor_state(name, attempts, pause)
                    Uwvm::Unitree::Observation.receive(name, Ros1Unitree_legged_msgsMotorState, attempts, pause)
                end
            end
        end
    end
end
