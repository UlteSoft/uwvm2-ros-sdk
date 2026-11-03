# @file main.rb
# @brief Exercise the genuine Ruby guest and the VM ROS denial boundary.
# @details All assertions execute in CRuby Wasm. No native ROS client, source
# subprocess, granted capability, scene or simulator is created by this guest.
$uwvm_exit = 1
passed = 0
current = "bootstrap"
report = lambda do |name, valid, observed|
    raise RuntimeError, "guest safety assertion failed" unless valid
    line = '{"format":"uwvm-sdk-guest-safety-case-v1","language":"ruby","case":"' + name +
           '","passed":true,"observed_code":' + observed.to_s + "}\n"
    raise IOError, "incomplete guest output" unless STDOUT.write(line) == line.bytesize
    STDOUT.flush
    passed += 1
end
begin
    current = "genuine-runtime-version"
    report.call(current, RUBY_ENGINE == "ruby" && RUBY_VERSION == "3.4.7", 347)
    current = "raw-ros-abi-v1"
    abi = Uwvm::Native.invoke("abi_version", 0, "".b, 0)
    report.call(current, abi[0] == 0 && abi[3] == 1, abi[0])
    current = "guest-rejects-empty-alias"
    invalid = Uwvm::RosWasm::Capability.open("")
    report.call(current, invalid[0].nil? && invalid[1] == 22, invalid[1])
    current = "guest-rejects-invalid-utf8"
    invalid = Uwvm::RosWasm::Capability.open("\xff".b)
    report.call(current, invalid[0].nil? && invalid[1] == 22, invalid[1])
    current = "raw-ungranted-alias-denied"
    denied = Uwvm::Native.invoke("capability_open", 0, "sdk07-guest-ungranted".b, 0)
    report.call(current, denied[0] == 13 && (denied[3].nil? || denied[3] == 0), denied[0])
    raise RuntimeError, "required guest case missing" unless passed == 5
    summary = '{"format":"uwvm-sdk-guest-safety-summary-v1","language":"ruby",' +
              '"selected":5,"executed":5,"passed":5,"failed":0,"blocked":0,"skipped":0}' + "\n"
    raise IOError, "incomplete summary output" unless STDOUT.write(summary) == summary.bytesize
    STDOUT.flush
    $uwvm_exit = 0
rescue StandardError
    line = '{"format":"uwvm-sdk-guest-safety-failure-v1","language":"ruby","case":"' + current + '"}' + "\n"
    STDOUT.write(line)
    STDOUT.flush
    $uwvm_exit = 1
end
