# @file main.rb
# @brief Observe kuavo_msgs/sensorsData using the genuine CRuby guest.
# @details argv[1] is the exact manually granted alias. The complete original
# value is decoded, retained and emitted as canonical hex after one close.
# A service is attempted once; topic idle polling has a finite 250-poll budget.
args = Uwvm::Native::ARGV
if args.length != 2
    $uwvm_exit = 22
else
    catalog = Uwvm::Leju::Ros1MainPlatform
    codec = catalog::Ros1Kuavo_msgsSensorsData
    request = "".b
    result = Uwvm::Language::RubyObservation.receive(args[1], codec, request, true)
    $uwvm_exit = Uwvm::Language::RubyObservation.output(result)
end
