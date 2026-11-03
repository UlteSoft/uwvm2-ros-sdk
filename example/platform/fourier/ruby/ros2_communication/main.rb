# @file main.rb
# @brief Assert a genuine Ruby -> restricted host -> official ROS relay round trip.
# @details One interpreter instance is one trust domain. It performs all request,
# reply, freshness, denial, stale-handle and bounded-idle assertions in Wasm.
$uwvm_exit = 1
current = "bootstrap"
passed = 0
owners = []
report = lambda do |name, code|
    text = '{"format":"uwvm-sdk-stage-a-case-v1","language":"ruby","case":"' + name +
           '","passed":true,"observed_code":' + code.to_s + "}\n"
    raise IOError, "bounded guest output failed" unless STDOUT.write(text) == text.bytesize
    STDOUT.flush
    passed += 1
end
check = lambda do |ok|
    raise RuntimeError, "required Stage A assertion failed" unless ok
end
open_alias = lambda do |name|
    owner, error = Uwvm::RosWasm::Capability.open(name)
    check.call(error == 0 && !owner.nil?)
    owners << owner
    owner
end
encode_string = lambda do |text|
    check.call(text.instance_of?(String) && text.bytesize <= 128)
    [text.bytesize].pack("V") + text.b
end
decode_string = lambda do |frame|
    check.call(frame[0] == 0 && frame[1].instance_of?(String) && frame[2] == frame[1].bytesize)
    check.call(frame[1].bytesize.between?(4, 256))
    length = frame[1].byteslice(0, 4).unpack1("V")
    check.call(length == frame[1].bytesize - 4)
    text = frame[1].byteslice(4, length).dup.force_encoding(Encoding::UTF_8)
    check.call(text.valid_encoding? && !text.include?("\0"))
    text
end
begin
    args = Uwvm::Native::ARGV
    check.call(args.length == 2 && args[1].instance_of?(String) && args[1].match?(/\A[0-9a-f]{32}\z/))
    challenge = args[1]
    current = "genuine-runtime-and-raw-abi"
    abi = Uwvm::Native.invoke("abi_version", 0, "".b, 0)
    check.call(RUBY_ENGINE == "ruby" && RUBY_VERSION == "3.4.7" && abi[0] == 0 && abi[3] == 1)
    report.call(current, 347)

    outgoing = open_alias.call("send")
    incoming = open_alias.call("receive")
    idle = open_alias.call("idle")
    steady = open_alias.call("steady")
    now = lambda do
        # Clock reads return one complete little-endian u64 response frame.
        clock = steady.invoke("time_read_steady", "".b, 8)
        check.call(clock[0] == 0 && clock[1].instance_of?(String) &&
                   clock[1].bytesize == 8 && clock[2] == 8 && clock[3].nil?)
        clock[1].unpack1("Q<")
    end
    check.call(incoming.invoke("topic_subscribe")[0] == 0)
    check.call(idle.invoke("topic_subscribe")[0] == 0)
    previous = nil
    2.times do |index|
        current = index == 0 ? "official-ros-correlated-first-reply" : "official-ros-fresh-second-reply"
        expected = "sdk07-stage-a:" + challenge + ":" + (index + 1).to_s
        started = now.call
        # Each request is submitted exactly once. Transient-local QoS is an
        # explicit deployment property; it preserves discovery without replay.
        sent = outgoing.invoke("topic_publish", encode_string.call(expected))
        check.call(sent[0] == 0)
        matched = false
        last_clock = started
        200.times do
            stamp = now.call
            check.call(stamp >= last_clock && stamp - started <= 6_000_000_000)
            last_clock = stamp
            frame = incoming.invoke("event_poll", "".b, 256)
            if frame[0] == 0
                observed = decode_string.call(frame)
                if observed == expected
                    check.call(previous.nil? || observed != previous)
                    matched = true
                    break
                end
                # A previous or unrelated message cannot satisfy this request.
                check.call(!previous.nil? && observed == previous)
            else
                check.call(frame[0] == 11)
            end
            check.call(Uwvm::Native.pause_ms(20) == 0)
        end
        check.call(matched)
        previous = expected
        report.call(current, 0)
    end

    current = "ungranted-topic-alias-denied"
    denied = Uwvm::Native.invoke("capability_open", 0, "denied-send".b, 0)
    check.call(denied[0] == 13 && (denied[3].nil? || denied[3] == 0))
    report.call(current, 13)

    current = "retired-publisher-handle-refused"
    stale = outgoing.borrow_handle
    check.call(outgoing.close == 0)
    owners.delete(outgoing)
    refused = Uwvm::Native.invoke("topic_publish", stale, encode_string.call("sdk07-stage-a:retired"), 0)
    check.call(refused[0] == 9)
    report.call(current, 9)

    current = "bounded-idle-feedback-timeout"
    started = now.call
    20.times do
        check.call(idle.invoke("event_poll", "".b, 256)[0] == 11)
        check.call(incoming.invoke("event_poll", "".b, 256)[0] == 11)
        check.call(Uwvm::Native.pause_ms(10) == 0)
    end
    elapsed = now.call - started
    check.call(elapsed >= 100_000_000 && elapsed <= 3_000_000_000)
    report.call(current, 11)
    owners.reverse_each { |owner| check.call(owner.close == 0) }
    owners.clear
    check.call(passed == 6)
    text = '{"format":"uwvm-sdk-stage-a-summary-v1","language":"ruby","required":6,' +
           '"selected":6,"executed":6,"passed":6,"failed":0,"blocked":0,"not_run":0,' +
           '"stage_b_pass":false,"component_isolation_pass":false}' + "\n"
    check.call(STDOUT.write(text) == text.bytesize)
    STDOUT.flush
    $uwvm_exit = 0
rescue StandardError
    text = '{"format":"uwvm-sdk-stage-a-failure-v1","language":"ruby","case":"' + current + '"}' + "\n"
    STDOUT.write(text)
    STDOUT.flush
    $uwvm_exit = 1
ensure
    owners.reverse_each do |owner|
        begin
            owner.close
        rescue StandardError
            $uwvm_exit = 1
        end
    end
end
