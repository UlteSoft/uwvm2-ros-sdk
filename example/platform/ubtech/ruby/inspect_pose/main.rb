# @file main.rb
# @brief Observe grab_demo_msgs/msg/GraspCandidate using the genuine CRuby guest.
# @details argv[1] is the exact manually granted alias. The complete original
# value is decoded, retained and emitted as canonical hex after one close.
# A service is attempted once; topic idle polling has a finite 250-poll budget.
args = Uwvm::Native::ARGV
if args.length != 2
    $uwvm_exit = 22
else
    catalog = Uwvm::Ubtech::Ros2Main
    codec = catalog::Ros2Grab_demo_msgsMsgGraspCandidate
    request = "".b
    result = Uwvm::Language::RubyObservation.receive(args[1], codec, request, true)
    # Inspect complete finite quaternion components in the original frame.
    if result[:response_present]
        pose = result[:value].pose.pose
        q = pose.orientation
        norm2 = q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w
        result[:primary] = 22 unless norm2.finite? && norm2 > 0.0
    end
    $uwvm_exit = Uwvm::Language::RubyObservation.output(result)
end
