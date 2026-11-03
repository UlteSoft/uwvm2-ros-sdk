# @file main.rb
# @brief Run typed publish/refusal/echo assertions in genuine CRuby Wasm.
# @details GroupValues is the authored Fourier ROS bridge fixture. It is not
# vendor-official API compatibility, a peer replacement or memory isolation.
status = 1
echo = nil
echo_retired = false
passed = 0
current = "bootstrap"
check = lambda { |ok| raise "required publisher API assertion failed" unless ok }
report = lambda do |name, ok|
    check.call(ok)
    text = '{"format":"uwvm-sdk-publisher-api-case-v1","language":"ruby","case":"' + name + '","passed":true}' + "\n"
    check.call(STDOUT.write(text) == text.bytesize)
    STDOUT.flush
    passed += 1
end
begin
    args = Uwvm::Native::ARGV
    check.call(args.length == 2 && args[1].instance_of?(String) && args[1].match?(/\A[0-9a-f]{32}\z/))
    nonce = args[1]
    codec = Uwvm::Fourier::Ros2AuroraBridgeV1::Ros2Uwvm_fourier_bridgeMsgGroupValues
    current = "genuine-pinned-engine"
    report.call(current, RUBY_ENGINE == "ruby" && RUBY_VERSION == "3.4.7")
    current = "reject-oversized-field-before-acquisition"
    bad = codec.new({"group" => "x" * 129, "values" => [1.25]})
    facts = Uwvm::Language::RubyObservation.publish("publish", bad)
    report.call(current, facts[:primary] == 22 && !facts[:publish_invoked] && !facts[:cleanup_present])
    current = "reject-nonfinite-field-before-acquisition"
    bad = codec.new({"group" => nonce, "values" => [Float::NAN]})
    facts = Uwvm::Language::RubyObservation.publish("publish", bad)
    report.call(current, facts[:primary] == 22 && !facts[:publish_invoked] && !facts[:cleanup_present])
    message = codec.new({"group" => nonce, "values" => [1.25, -2.5]})
    current = "default-denied-publisher-has-no-publish-call"
    facts = Uwvm::Language::RubyObservation.publish("publisher-denied", message)
    report.call(current, facts[:primary] == 13 && !facts[:publish_invoked] && !facts[:cleanup_present])
    echo, error = Uwvm::RosWasm::Capability.open("echo")
    check.call(error == 0 && !echo.nil? && echo.invoke("topic_subscribe")[0] == 0)
    current = "one-accepted-typed-publish-and-explicit-close"
    facts = Uwvm::Language::RubyObservation.publish("publish", message)
    report.call(current, facts[:primary] == 0 && facts[:publish_invoked] && facts[:publish_accepted] &&
        facts[:cleanup_present] && facts[:cleanup] == 0 && !facts[:response_present] &&
        facts[:wire_hex] == codec.encode(message).unpack1("H*"))
    current = "fresh-complete-typed-echo-inside-guest"
    frame = nil
    250.times do |attempt|
        frame = echo.invoke("event_poll", "".b, codec::MAX_WIRE_BYTES)
        break if frame[0] != 11 || attempt == 249
        check.call(Uwvm::Native.pause_ms(20) == 0)
    end
    check.call(frame[0] == 0 && frame[2] == frame[1].bytesize && frame[3].nil?)
    received = codec.decode(frame[1])
    report.call(current, frame[1] == codec.encode(message) && received["group"] == nonce &&
        received["values"] == [1.25, -2.5])
    echo_retired = true
    check.call(echo.close == 0 && passed == 6)
    text = '{"format":"uwvm-sdk-publisher-api-summary-v1","language":"ruby","nonce":"' + nonce + '","required":6,"selected":6,"executed":6,"passed":6,"failed":0,"blocked":0,"not_run":0,"vendor_official_API_compatibility":false,"component_isolation_pass":false}' + "\n"
    status = STDOUT.write(text) == text.bytesize ? 0 : 1
    STDOUT.flush
rescue Exception
    STDOUT.write('{"format":"uwvm-sdk-publisher-api-failure-v1","language":"ruby","case":"' + current + '","passed_before_failure":' + passed.to_s + '}' + "\n")
    STDOUT.flush
    status = 1
ensure
    status = 1 if !echo.nil? && !echo_retired && echo.close != 0
end
exit(status)
