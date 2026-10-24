# @file main.rb
# @brief Observe uwvm_fourier_bridge/srv/GetStandPose_Response using the genuine CRuby guest.
# @details argv[1] is the exact manually granted alias. The complete original
# value is decoded, retained and emitted as canonical hex after one close.
# A service is attempted once; topic idle polling has a finite 250-poll budget.
args = Uwvm::Native::ARGV
if args.length != 3
    $uwvm_exit = 22
else
    catalog = Uwvm::Fourier::Ros2AuroraBridgeV1
    codec = catalog::Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    raise ArgumentError, "positive decimal sequence required" unless args[2].match?(/\A[1-9][0-9]*\z/)
    request_codec = catalog::Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
    request_value = request_codec.new({"sequence" => Integer(args[2], 10)})
    request = request_codec.encode(request_value)
    result = Uwvm::Language::RubyObservation.receive(args[1], codec, request, false)
    if result[:response_present]
        result[:rpc_status_present] = true
        result[:rpc_status] = result[:value].status.to_s
    end
    $uwvm_exit = Uwvm::Language::RubyObservation.output(result)
end
