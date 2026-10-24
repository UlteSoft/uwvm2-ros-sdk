# SPDX-License-Identifier: Apache-2.0
require 'agibot/shared/schema/aimdk_v1_1_0_main'

module Agibot
    # Complete original-field codecs, executed inside the genuine Ruby Wasm VM.
    # Every decoded value owns its strings/arrays. Integer arithmetic is exact;
    # the pinned mruby profile includes the official arbitrary-precision gem.
    module Records
        class DecodeError < StandardError
            # @return [Integer] Local errno 22 (malformed) or 90 (guest bound).
            attr_reader :code

            def initialize(code, message)
                super(message)
                @code = code
            end
        end

        # Validate strict UTF-8 without depending on a desktop encoding library.
        # @param bytes [String] Borrowed binary UTF-8 bytes, without NUL.
        # @return [String] The same validated string; no ownership transfer.
        # @raise [DecodeError] Overlong, truncated, surrogate or invalid scalar.
        def self.utf8(bytes)
            index = 0
            while index < bytes.bytesize
                first = bytes.getbyte(index)
                index += 1
                value = first
                trailing = 0
                minimum = 0
                if first >= 0xc2 && first <= 0xdf
                    value &= 31
                    trailing = 1
                    minimum = 0x80
                elsif first >= 0xe0 && first <= 0xef
                    value &= 15
                    trailing = 2
                    minimum = 0x800
                elsif first >= 0xf0 && first <= 0xf4
                    value &= 7
                    trailing = 3
                    minimum = 0x10000
                elsif first > 0x7f
                    raise DecodeError.new(22, 'Invalid UTF-8 lead')
                end
                raise DecodeError.new(22, 'Truncated UTF-8') if trailing > bytes.bytesize - index
                trailing.times do
                    next_byte = bytes.getbyte(index)
                    index += 1
                    raise DecodeError.new(22, 'Invalid UTF-8 continuation') unless (next_byte & 0xc0) == 0x80
                    value = value * 64 + (next_byte & 63)
                end
                if value == 0 || value < minimum || value > 0x10ffff || (value >= 0xd800 && value <= 0xdfff)
                    raise DecodeError.new(22, 'Invalid Unicode scalar')
                end
            end
            bytes
        end

        # Transactionally decode every original field before committing a value.
        # @param typename [String] Exact fully qualified original record name.
        # @param bytes [String] Borrowed canonical bytes, at most 32768 bytes.
        # @return [Hash] Complete owned original fields and nested arrays.
        # @raise [DecodeError] Invalid bounds, UTF-8, boolean, float or envelope.
        def self.decode(typename, bytes)
            unless bytes.is_a?(String) && bytes.bytesize <= 32768 && Agibot::SCHEMA.key?(typename)
                raise DecodeError.new(22, 'Invalid canonical record')
            end
            offset = 0
            take = lambda do |size|
                raise DecodeError.new(22, 'Truncated canonical record') if size < 0 || size > bytes.bytesize - offset
                start = offset
                offset += size
                bytes[start, size]
            end
            unsigned = lambda do |size|
                value = 0
                part = take.call(size)
                (size - 1).downto(0) { |index| value = value * 256 + part.getbyte(index) }
                value
            end
            sizes = {'bool' => 1, 'byte' => 1, 'char' => 1, 'int8' => 1, 'uint8' => 1,
                'int16' => 2, 'uint16' => 2, 'int32' => 4, 'uint32' => 4, 'int64' => 8, 'uint64' => 8}
            record = nil
            scalar = lambda do |kind, bound|
                if kind == 'string'
                    size = unsigned.call(4)
                    raise DecodeError.new(90, 'String exceeds guest bound') if size > bound
                    utf8(take.call(size))
                elsif kind == 'float32' || kind == 'float64'
                    value = take.call(kind == 'float32' ? 4 : 8).unpack(kind == 'float32' ? 'e' : 'E')[0]
                    raise DecodeError.new(22, 'Nonfinite canonical float') unless value.finite?
                    value
                elsif sizes.key?(kind)
                    size = sizes[kind]
                    value = unsigned.call(size)
                    if kind == 'bool'
                        raise DecodeError.new(22, 'Noncanonical boolean') if value > 1
                        value == 1
                    else
                        value -= 1 << (size * 8) if kind.start_with?('int') && (value & (1 << (size * 8 - 1))) != 0
                        value
                    end
                else
                    record.call(kind)
                end
            end
            record = lambda do |kind|
                definition = Agibot::SCHEMA[kind]
                raise DecodeError.new(22, 'Unknown original record') unless definition
                value = {}
                definition['fields'].each do |field|
                    if field.key?('array') || field.key?('sequence')
                        count = field.key?('array') ? field['array'] : unsigned.call(4)
                        if field.key?('sequence') && count > field['sequence']
                            raise DecodeError.new(90, 'Sequence exceeds guest bound')
                        end
                        value[field['name']] = Array.new(count) { scalar.call(field['type'], field['string']) }
                    else
                        value[field['name']] = scalar.call(field['type'], field['string'])
                    end
                end
                value
            end
            value = record.call(typename)
            raise DecodeError.new(22, 'Trailing canonical bytes') unless offset == bytes.bytesize
            value
        end

        # @param value [String] Already validated original string.
        # @return [String] JSON-escaped text preserving original UTF-8 bytes.
        def self.quote(value)
            result = '"'
            value.bytesize.times do |index|
                byte = value.getbyte(index)
                result << (byte < 32 || byte == 34 || byte == 92 ? sprintf('\\u%04x', byte) : value[index, 1])
            end
            result << '"'
        end

        # Render every original field with unambiguous array/object shapes.
        # @param typename [String] Matching original decoded type.
        # @param value [Hash] Complete, unmodified successful decoded value.
        # @return [String] Full JSON; int64/uint64 use exact decimal strings.
        def self.json(typename, value)
            record = nil
            scalar = lambda do |kind, field|
                if kind == 'string' || kind == 'int64' || kind == 'uint64'
                    quote(field.to_s)
                elsif kind == 'bool'
                    field ? 'true' : 'false'
                elsif kind.start_with?('float')
                    sprintf('%.17g', field)
                elsif kind == 'byte' || kind == 'char' || kind.start_with?('int', 'uint')
                    field.to_s
                else
                    record.call(kind, field)
                end
            end
            record = lambda do |kind, object|
                fields = Agibot::SCHEMA[kind]['fields'].map do |field|
                    item = object[field['name']]
                    encoded = if field.key?('array') || field.key?('sequence')
                        '[' + item.map { |entry| scalar.call(field['type'], entry) }.join(',') + ']'
                    else
                        scalar.call(field['type'], item)
                    end
                    quote(field['name']) + ':' + encoded
                end
                '{' + fields.join(',') + '}'
            end
            record.call(typename, value)
        end
    end
end
