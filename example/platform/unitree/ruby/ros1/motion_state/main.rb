# @file main.rb
# @brief Observe the entire original ROS 1 HighState through the genuine ruby guest.
# @details Preserve every canonical byte and the independent operation/close facts.
# The final process status selects primary, cleanup or output failure, capped at 125.
include Uwvm::Unitree::Ros1

# Validate exactly one alias before acquiring any native resource.
args = Uwvm::Native::ARGV
if args.length != 2
    $uwvm_exit = 22
else
    # Pause only after idle, within a finite budget of 250 polls.
    pause = -> { Uwvm::Native.pause_ms(20) }
    result = Observation.wait_motion_state(args[1], 250, pause)

    # Output after explicit close; the genuine CRuby embedding reads this slot.
    $uwvm_exit = Uwvm::Unitree::Observation.output(result)
end
