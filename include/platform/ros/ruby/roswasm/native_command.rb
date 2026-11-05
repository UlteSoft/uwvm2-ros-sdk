# SPDX-License-Identifier: Apache-2.0
# Execute complete String/Trigger observations in the genuine Ruby guest.
# The caller supplies "sample" through its explicit host permission policy.
module Uwvm
  module RosWasm
    module NativeCommand
      # Decode one entire counted UTF-8 field, preserving the original bytes.
      def self.text(wire, offset, maximum)
        raise ArgumentError, "truncated field length" if wire.bytesize < offset + 4
        length = wire.byteslice(offset, 4).unpack1("V")
        unless length <= maximum && wire.bytesize == offset + 4 + length
          raise ArgumentError, "invalid field extent"
        end
        value = wire.byteslice(offset + 4, length).dup.force_encoding(Encoding::UTF_8)
        raise ArgumentError, "invalid scalar UTF-8" unless value.valid_encoding? && !value.include?("\0")
        value
      end

      # Escape complete scalar text as JSON without requiring an optional extension.
      def self.json_string(value)
        '"' + value.codepoints.map { |cp|
          if cp >= 32 && cp <= 126 && cp != 34 && cp != 92
            cp.chr
          elsif cp <= 0xffff
            "\\u%04x" % cp
          else
            scalar = cp - 0x10000
            "\\u%04x\\u%04x" % [0xd800 + (scalar >> 10), 0xdc00 + (scalar & 1023)]
          end
        }.join + '"'
      end

      # Return operation/codec failure before independent close or output failure.
      # Only idle subscription polls repeat. Service calls never replay.
      def self.run(operation)
        return 22 unless [1, 2, 3].include?(operation)
        owner, primary = Capability.open("sample")
        return primary unless primary == 0
        rpc = nil
        required = nil
        wire = "".b
        value = ""
        present = false
        success = false
        cleanup = 0
        begin
          if operation == 1
            value = "hello native ROS"
            request = [value.bytesize].pack("V") + value.b
            2.times do |sample|
              rpc = owner.invoke("topic_publish", request)[0]
              primary = rpc
              break unless primary == 0
              primary = Uwvm::Native.pause_ms(sample == 0 ? 1000 : 200)
              break unless primary == 0
            end
          elsif operation == 2
            primary = owner.invoke("topic_subscribe")[0]
            if primary == 0
              250.times do |attempt|
                rpc, wire, required = owner.invoke("event_poll", "".b, 256)
                primary = rpc
                break unless primary == 11 && attempt != 249
                primary = Uwvm::Native.pause_ms(20)
                break unless primary == 0
              end
            end
          else
            rpc, wire, required = owner.invoke("service_call", "".b, 256)
            primary = rpc
          end
          if primary == 0 && operation != 1
            raise ArgumentError, "missing complete returned extent" unless required == wire.bytesize
            if operation == 2
              value = text(wire, 0, 252)
            else
              raise ArgumentError, "invalid canonical Boolean" if wire.empty? || wire.getbyte(0) > 1
              success = wire.getbyte(0) == 1
              value = text(wire, 1, 251)
            end
            present = true
            primary = 5 if operation == 3 && !success
          end
        rescue ArgumentError
          primary = 22
        ensure
          cleanup = owner.close
        end
        fields = [
          '"primary":' + primary.to_s,
          '"rpc_status":' + (rpc.nil? ? "null" : rpc.to_s),
          '"required_bits":' + (required.nil? ? "null" : json_string([required].pack("Q<").unpack1("H*"))),
          '"cleanup":' + cleanup.to_s,
          '"cleanup_present":true',
          '"response_present":' + present.to_s,
          '"success":' + success.to_s,
          '"wire":' + json_string(wire.unpack1("H*")),
          '"text":' + json_string(value)
        ]
        output = 0
        begin
          line = "{" + fields.join(",") + "}\n"
          output = 5 unless $stdout.write(line) == line.bytesize
          $stdout.flush
        rescue IOError, SystemCallError
          output = 5
        end
        primary != 0 ? primary : cleanup != 0 ? cleanup : output
      end
    end
  end
end
