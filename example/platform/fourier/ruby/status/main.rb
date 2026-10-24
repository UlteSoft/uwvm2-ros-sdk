# @file main.rb
# @brief Observe uwvm_fourier_bridge/msg/Status using the genuine CRuby guest.
# @details argv[1] is the exact manually granted alias. The complete original
# value is decoded, retained and emitted as canonical hex after one close.
# A service is attempted once; topic idle polling has a finite 250-poll budget.
args = Uwvm::Native::ARGV
if args.length != 2
    $uwvm_exit = 22
else
    catalog = Uwvm::Fourier::Ros2AuroraBridgeV1
    codec = catalog::Ros2Uwvm_fourier_bridgeMsgStatus
    request = "".b
    result = Uwvm::Language::RubyObservation.receive(args[1], codec, request, true)
    $uwvm_exit = Uwvm::Language::RubyObservation.output(result)
end
