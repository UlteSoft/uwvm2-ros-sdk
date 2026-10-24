# @file main.rb
# @brief Observe aimdk_msgs/srv/GetMcAction_Response using the genuine CRuby guest.
# @details argv[1] is the exact manually granted alias. The complete original
# value is decoded, retained and emitted as canonical hex after one close.
# A service is attempted once; topic idle polling has a finite 250-poll budget.
args = Uwvm::Native::ARGV
if args.length != 2
    $uwvm_exit = 22
else
    catalog = Uwvm::Agibot::Ros2SdkV110Main
    codec = catalog::Ros2Aimdk_msgsSrvGetMcAction_Response
    request_codec = catalog::Ros2Aimdk_msgsSrvGetMcAction_Request
    request_value = request_codec.new()
    request = request_codec.encode(request_value)
    result = Uwvm::Language::RubyObservation.receive(args[1], codec, request, false)
    if result[:response_present]
        result[:rpc_status_present] = true
        result[:rpc_status] = result[:value].header.code.to_s
    end
    $uwvm_exit = Uwvm::Language::RubyObservation.output(result)
end
