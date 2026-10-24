# @file wire.rb
# @brief Provide complete local canonical Ruby value construction and codecs.
# @details Uses exact Ruby Integer bits, binary Strings and finite IEEE packing.
# All work is synchronous on the caller thread and opens no ROS resource,
# filesystem/socket, callback, clock or worker. A genuine static CRuby/Wasm ROS
# extension/runtime remains separately required for any native operation.
# @see Uwvm::RosWasm::Wire.records
module Uwvm
    module RosWasm
        module Wire
            # @brief Describe each admitted scalar's LE pack format, byte width and range.
            # @details Read-only by contract: the outer Hash is frozen but its Array
            # descriptors are not deeply frozen. Mutating them invalidates codec
            # contracts. This metadata neither installs a native type nor grants rights.
            # @see Uwvm::RosWasm::Wire.records
            SCALARS = {
                "bool" => ["C", 1, 0, 1],
                "uint8" => ["C", 1, 0, 255],
                "int8" => ["c", 1, -128, 127],
                "uint16" => ["S<", 2, 0, 65_535],
                "int16" => ["s<", 2, -32_768, 32_767],
                "uint32" => ["L<", 4, 0, (1 << 32) - 1],
                "int32" => ["l<", 4, -(1 << 31), (1 << 31) - 1],
                "uint64" => ["Q<", 8, 0, (1 << 64) - 1],
                "int64" => ["q<", 8, -(1 << 63), (1 << 63) - 1],
                "float32" => ["e", 4],
                "float64" => ["E", 8],
            }.freeze
            module_function

            # @brief Require a local predicate or raise ArgumentError with its message.
            # @details Uses ordinary Ruby truthiness; this is not an exact-Boolean or
            # untrusted-object validator. Called synchronously by the trusted codecs;
            # raises before continuing the current conversion, with no I/O or cleanup.
            # @param condition [in] Predicate result; false/nil mean failure.
            # @param message [in] Diagnostic String for the raised ArgumentError.
            # @return nil on success; no resource or permission is acquired.
            # @see Uwvm::RosWasm::Wire.integer
            def require_value(condition, message)
                unless condition
                    raise ArgumentError, message
                end
            end

            # @brief Validate an exact built-in Ruby Integer in an inclusive range.
            # @details Excludes subclasses and never narrows via Float. Bounds are
            # trusted scalar codec metadata; no numeric ID creates native authority.
            # @param value [in] Exact Integer to borrow for synchronous validation.
            # @param minimum [in] Trusted inclusive Integer lower bound.
            # @param maximum [in] Trusted inclusive Integer upper bound, >=minimum.
            # @return Same Integer object; invalid type/range raises ArgumentError.
            # @see Uwvm::RosWasm::Wire::SCALARS
            def integer(value, minimum, maximum)
                require_value(
                    value.instance_of?(Integer) && value >= minimum && value <= maximum,
                    "exact bounded Integer required"
                )
                value
            end

            # @brief Validate bounded binary/strict-UTF-8 String bytes for canonical wire.
            # @details Does not mutate input. Non-raw mode checks strict UTF-8 and no
            # NUL; raw mode preserves every byte including NUL. This is synchronous
            # local conversion with no locale lookup, native resource or permissions.
            # @param value [in] Exact String, unchanged throughout this call.
            # @param maximum [in] Trusted inclusive maximum byte length, not characters.
            # @param raw [in] Use true for raw bytes, false for strict UTF-8; ordinary
            # Ruby truthiness applies rather than strict Boolean validation.
            # @return Binary String value; invalid type/extent/UTF-8 raises ArgumentError.
            # @see Uwvm::RosWasm::Wire.records
            def text(value, maximum, raw)
                require_value(value.instance_of?(String) && value.bytesize <= maximum, "bounded String bytes required")
                bytes = value.b
                unless raw
                    decoded = bytes.dup.force_encoding(Encoding::UTF_8)
                    require_value(
                        decoded.valid_encoding? && !decoded.include?("\0"),
                        "strict UTF-8 without NUL required"
                    )
                end
                bytes
            end

            # @brief Accumulate bounded canonical byte parts for one local encoding.
            # @details Internal-style public helper; retains appended String references
            # until finish. Callers must keep them unchanged and discard this writer
            # after failure. No rollback, thread safety, I/O or ROS authority is provided.
            # @see Uwvm::RosWasm::Wire::Writer#append
            class Writer
                # @brief Allocate empty writer bookkeeping without an output reservation.
                # @details Does not itself validate arbitrary bounds; trusted generated
                # codecs pass their admitted complete maximum. Allocation can fail.
                # @param maximum [in] Trusted nonnegative Integer complete byte cap,
                # at most32768 for this admitted profile. Grants no native quota/credit.
                # @return New Writer; no resource needs explicit disposal.
                # @see Uwvm::RosWasm::Wire::Writer#finish
                def initialize(maximum)
                    @maximum, @count, @parts = maximum, 0, []
                end

                # @brief Retain one immutable-for-this-call byte part within the cap.
                # @details Checks remaining extent before appending, then advances the
                # accumulated count. The String is retained by reference, not copied;
                # later caller mutation breaks the writer contract. No I/O occurs.
                # @param bytes [in] Binary String stable until finish; byte length must
                # fit the remaining complete cap. Generated callers supply real Strings.
                # @return New accumulated byte count; extent failure raises ArgumentError.
                # Allocation/type failures propagate; discard a failed writer.
                # @see Uwvm::RosWasm::Wire::Writer#finish
                def append(bytes)
                    Wire.require_value(bytes.bytesize <= @maximum - @count, "canonical output byte bound")
                    @parts << bytes
                    @count += bytes.bytesize
                end

                # @brief Join retained parts after checking the complete minimum extent.
                # @details Relies on prior append checks and unmodified borrowed parts;
                # does not reset or consume the writer. Joining allocates new binary
                # output. No resource effect, retry or permission change occurs.
                # @param minimum [in] Trusted inclusive minimum byte length.
                # @return New binary String; too-short output raises ArgumentError and
                # allocation errors propagate. Caller owns the returned bytes.
                # @see Uwvm::RosWasm::Wire::Writer#append
                def finish(minimum)
                    Wire.require_value(@count >= minimum, "complete minimum wire extent")
                    @parts.join.b
                end
            end

            # @brief Borrow canonical bytes with an explicit advancing local cursor.
            # @details Internal-style helper; input remains unchanged throughout use.
            # Failed compound reads can advance the cursor. Discard after failure;
            # no rollback, locking, I/O, native memory view or ROS resource is provided.
            # @see Uwvm::RosWasm::Wire::Reader#take
            class Reader
                # @brief Observe the zero-based byte position already consumed.
                # @details Read-only accessor; a failed later count/domain check may
                # leave it advanced. Position alone is not proof of a valid whole record.
                # @return Nonnegative Integer byte position under valid helper use.
                # @see Uwvm::RosWasm::Wire::Reader#remaining
                attr_reader :position
                # @brief Borrow one unchanged byte String with initial position0.
                # @details Constructor stores its argument directly; whole-input type/
                # extent checks belong to generated decode. No copy, I/O or grant occurs.
                # @param bytes [in] Trusted binary String, stable for the reader lifetime.
                # @return New local Reader; allocation errors can propagate.
                # @see Uwvm::RosWasm::Wire::Reader#take
                def initialize(bytes)
                    @bytes, @position = bytes, 0
                end

                # @brief Count bytes after the current cursor without advancing it.
                # @details Requires the original borrowed String to remain unchanged.
                # This local diagnostic neither reserves output nor validates a record.
                # @return Remaining Integer byte length under valid helper use.
                # @see Uwvm::RosWasm::Wire::Reader#position
                def remaining
                    @bytes.bytesize - @position
                end

                # @brief Copy one exact bounded byte slice and advance the cursor.
                # @details Checks exact Integer size and remaining extent first; no
                # native memory view escapes. Invalid bounds raise ArgumentError. Caller
                # must discard a reader after a later compound-read validation failure.
                # @param size [in] Exact Integer0..remaining byte count.
                # @return New String slice of exactly size bytes; allocation may fail.
                # @see Uwvm::RosWasm::Wire::Reader#count
                def take(size)
                    Wire.integer(size, 0, remaining)
                    bytes = @bytes.byteslice(@position, size)
                    @position += size
                    bytes
                end

                # @brief Consume one LE u32 count and check finite schema/remaining bounds.
                # @details Requires count<=maximum and, when minimum!=0, enough remaining
                # bytes for count*minimum. The4-byte prefix is consumed before a failed
                # bound check; discard the reader rather than retrying from its cursor.
                # @param maximum [in] Trusted inclusive schema element/byte count cap.
                # @param minimum [in] Trusted nonnegative minimum bytes per element;
                # zero disables only this remaining-byte division check.
                # @return Exact Integer count; invalid/truncated input raises ArgumentError.
                # @see Uwvm::RosWasm::Wire::Reader#take
                def count(maximum, minimum)
                    size = take(4).unpack1("L<")
                    Wire.require_value(
                        size <= maximum && (minimum == 0 || size <= remaining / minimum),
                        "sequence count/remaining extent"
                    )
                    size
                end
            end

            # @brief Enforce the admitted record-specific time/JointState rules locally.
            # @details Normalized fractional nanoseconds must be0..999999999. Every
            # nonempty JointState name/position/velocity/effort array has equal length.
            # Empty rule adds no constraint; unknown rules raise ArgumentError. Full
            # field-domain checks belong to encode/decode, not this helper alone.
            # @param schema [in] Trusted generated descriptor with backend/rule.
            # @param value [in] Complete borrowed bracket-addressable native value.
            # @return Rule-dependent local result, for validation only; no I/O, state
            # mutation, permission, time normalization or native admission occurs.
            # @see Uwvm::RosWasm::Wire.records
            def semantics(schema, value)
                case schema.fetch("semantics")
                when "normalized-time", "normalized-duration"
                    integer(value[schema.fetch("ros_version") == 2 ? "nanosec" : "nsec"], 0, 999_999_999)
                when "joint-state-optional-equal-length-arrays"
                    counts = %w[name position velocity effort].map do |name|
                        value[name].length
                    end.reject(&:zero?)
                    require_value(counts.uniq.length <= 1, "nonempty JointState arrays must match")
                when ""
                    nil
                else
                    raise ArgumentError, "unimplemented complete-value semantic rule"
                end
            end

            # @brief Construct complete value/codec classes from trusted admitted IR.
            # @details Checks unique Ros1/Ros2 symbols, fields and0..32768-byte bounds.
            # Dependencies must precede users. This is not an untrusted-schema sandbox.
            # Classes expose exact-name bracket access, non-conflicting field methods,
            # new, encode, decode, internal __read, codec metadata, NATIVE_CONSTANTS
            # and native_constant(name). Representable native constants additionally
            # retain direct Ruby access; reserved names remain available in the map.
            # Absent identity stays nil; no type registration/grant occurs.
            # Construction is synchronous; keep schemas unchanged during binding.
            # @param schemas [in] Trusted ordered complete schemas with original field
            # order, finite domains/bounds/defaults/constants and supported semantics.
            # @return Frozen symbol-to-Class Hash. Class objects/metadata contents are
            # read-only by contract rather than deeply frozen. Invalid schema raises
            # ArgumentError/KeyError; allocation/type failures propagate. No I/O or ROS
            # resource ownership is acquired and no explicit disposal is needed.
            # @see Uwvm::RosWasm::Wire::SCALARS
            def records(schemas)
                classes = {}
                schemas.each do |schema|
                    name = schema.fetch("symbol")
                    require_value(
                        !classes.key?(name) && name.match?(/\ARos[12][A-Za-z0-9_]+\z/),
                        "unique resolved complete symbol required"
                    )
                    fields = schema.fetch("fields")
                    minimum, maximum = schema.fetch("minimum"), schema.fetch("maximum")
                    require_value(
                        minimum >= 0 && maximum <= 32_768 && minimum <= maximum,
                        "complete resolved bounds required"
                    )
                    names = fields.map do |field|
                        field.fetch("name")
                    end
                    require_value(names.uniq.length == names.length, "unique native fields required")
                    klass = Class.new do
                        # Bracket access always preserves the exact native name, including
                        # a name such as initialize that conflicts with Ruby construction.
                        # @brief Expose each exact native field's getter/setter when representable.
                        # @details Native initialize uses brackets only to preserve Ruby's
                        # constructor. Setters retain supplied references without full domain
                        # validation; encode is the canonical validation boundary. No I/O.
                        # @see Uwvm::RosWasm::Wire.records
                        names.each do |field|
                            if field == "initialize"
                                next
                            end
                            define_method(field.to_sym) do
                                @__ros_fields.fetch(field)
                            end
                            define_method((field + "=").to_sym) do |value|
                                @__ros_fields[field] = value
                            end
                        end
                        # @brief Borrow one exact native field by its original String name.
                        # @details Returns the stored value/reference without copying or
                        # validation; unknown names raise KeyError. Caller mutation affects
                        # the same value and must not overlap synchronous encoding.
                        # @param field [in] Exact native String key from this schema.
                        # @return Stored field value; no resource or permission is acquired.
                        # @see Uwvm::RosWasm::Wire.records
                        define_method(:[]) do |field|
                            @__ros_fields.fetch(field)
                        end
                        # @brief Replace one known native field with an explicitly supplied value.
                        # @details Keeps the reference, preserving field order. Full domain,
                        # bounds and record semantics are checked by encode. No I/O occurs.
                        # @param field [in] Exact known native String key; unknown names error.
                        # @param value [in] Replacement field; caller retains shared references.
                        # @return Assigned value; invalid key raises ArgumentError.
                        # @see Uwvm::RosWasm::Wire.records
                        define_method(:[]=) do |field, value|
                            Wire.require_value(names.include?(field), "unknown native field")
                            @__ros_fields[field] = value
                        end
                    end
                    default_one = lambda do |field|
                        if field.key?("default")
                            field.fetch("default")
                        elsif field.fetch("type") == "bool"
                            false
                        elsif field.fetch("type") == "string"
                            "".b
                        elsif SCALARS.key?(field.fetch("type"))
                            0
                        else
                            classes.fetch(field.fetch("type")).new
                        end
                    end
                    # @brief Initialize every native field from fresh defaults/explicit overrides.
                    # @details Defaults allocate independent arrays/nested records. Explicit
                    # overrides retain references and do not validate complete domains.
                    # Unknown names/non-Hash initializers raise ArgumentError. No ROS handle,
                    # native type identity or permission is created; allocation may fail.
                    # @param values [in] Optional exact Hash of original String field names.
                    # @return New mutable complete value; use encode for full validation.
                    # @see Uwvm::RosWasm::Wire.records
                    klass.define_method(:initialize) do |values = {}|
                        Wire.require_value(
                            values.instance_of?(Hash) && (values.keys - names).empty?,
                            "exact native field initializer required"
                        )
                        @__ros_fields = {}
                        fields.each do |field|
                            if field.fetch("array") == "sequence"
                                initial = []
                            elsif field.fetch("array") == "array"
                                initial = Array.new(field.fetch("count")) do
                                    default_one.call(field)
                                end
                            else
                                initial = default_one.call(field)
                            end
                            @__ros_fields[field.fetch("name")] = values.fetch(field.fetch("name"), initial)
                        end
                    end
                    metadata = {
                        "ROS_VERSION" => schema.fetch("ros_version"),
                        "NATIVE_TYPE" => schema.fetch("native_type"),
                        "NATIVE_IDENTITY" => schema["native_identity"],
                        "CODEC_IDENTITY" => schema.fetch("codec_identity"),
                        "MIN_WIRE_BYTES" => minimum,
                        "MAX_WIRE_BYTES" => maximum,
                    }
                    # @brief Preserve every original constant name outside Ruby syntax.
                    # @details The frozen map retains lowercase, mixed-case and reserved
                    # names without renaming them or replacing codec metadata. String
                    # values are copied and frozen; the trusted schema stays unchanged.
                    # Representable nonreserved names also remain Ruby constants for
                    # compatibility. Construction performs no I/O or ROS operation.
                    native_constants = schema.fetch("constants").each_with_object({}) do |(key, value), result|
                        require_value(key.instance_of?(String), "original String constant name required")
                        result[key] = value.instance_of?(String) ? value.dup.freeze : value
                    end.freeze
                    metadata.each do |key, value|
                        klass.const_set(key, value)
                    end
                    klass.const_set("NATIVE_CONSTANTS", native_constants)
                    native_constants.each do |key, value|
                        if key.match?(/\A[A-Z][A-Za-z0-9_]*\z/) && !klass.const_defined?(key, false)
                            klass.const_set(key, value)
                        end
                    end
                    # @brief Fetch a native constant using its unchanged source name.
                    # @details Lookup is case-sensitive and includes names that collide
                    # with Ruby or codec metadata. Returned String values and the map
                    # are frozen; scalar values preserve their exact Ruby type.
                    # @param name [in] Exact original String identifier.
                    # @return Original value; unknown names raise KeyError and non-String
                    # names raise ArgumentError. This accessor acquires no resources.
                    klass.define_singleton_method(:native_constant) do |name|
                        Wire.require_value(name.instance_of?(String), "original String constant name required")
                        native_constants.fetch(name)
                    end
                    write_one = lambda do |writer, field, value|
                        type = field.fetch("type")
                        if type == "string"
                            bytes = text(value, field.fetch("string_bound"), field.fetch("raw"))
                            writer.append([bytes.bytesize].pack("L<"))
                            writer.append(bytes)
                        elsif type == "bool"
                            require_value(value.equal?(true) || value.equal?(false), "exact bool required")
                            writer.append([value ? 1 : 0].pack("C"))
                        elsif SCALARS.key?(type)
                            format, _size, low, high = SCALARS.fetch(type)
                            if type == "float32" || type == "float64"
                                require_value(
                                    (value.instance_of?(Float) || value.instance_of?(Integer)) && value.finite?,
                                    "finite scalar required"
                                )
                                bytes = [value].pack(format)
                                require_value(bytes.unpack1(format).finite?, "finite target-width scalar required")
                            else
                                integer(value, low, high)
                                bytes = [value].pack(format)
                            end
                            writer.append(bytes)
                        else
                            writer.append(classes.fetch(type).encode(value))
                        end
                    end
                    # @brief Encode every field of this exact generated class into LE bytes.
                    # @details Validates scalar widths, exact Integer bits, bool, strict/raw
                    # strings, finite target-width floats, array shapes, total bounds and
                    # record semantics. Input is borrowed unchanged; failures discard the
                    # private writer and expose no partial output. No I/O/retry/grant occurs.
                    # @param value [in] Exact class instance; nested references stay stable.
                    # @return New binary String within MIN_WIRE_BYTES..MAX_WIRE_BYTES.
                    # Validation raises ArgumentError; allocation/type errors propagate.
                    # @see Uwvm::RosWasm::Wire.records
                    klass.define_singleton_method(:encode) do |value|
                        Wire.require_value(value.instance_of?(klass), "exact complete generated record required")
                        writer = Writer.new(maximum)
                        fields.each do |field|
                            part = value[field.fetch("name")]
                            if field.fetch("array") != ""
                                Wire.require_value(part.instance_of?(Array), "complete fixed/sequence shape")
                                if field.fetch("array") == "array"
                                    valid_shape = part.length == field.fetch("count")
                                else
                                    valid_shape = part.length <= field.fetch("count")
                                end
                                Wire.require_value(valid_shape, "complete fixed/sequence shape")
                                if field.fetch("array") == "sequence"
                                    writer.append([part.length].pack("L<"))
                                end
                                part.each do |item|
                                    write_one.call(writer, field, item)
                                end
                            else
                                write_one.call(writer, field, part)
                            end
                        end
                        Wire.semantics(schema, value)
                        writer.finish(minimum)
                    end
                    read_one = lambda do |reader, field|
                        type = field.fetch("type")
                        if type == "string"
                            bytes = text(
                                reader.take(reader.count(field.fetch("string_bound"), 1)),
                                field.fetch("string_bound"),
                                field.fetch("raw")
                            )
                            field.fetch("raw") ? bytes : bytes.force_encoding(Encoding::UTF_8)
                        elsif type == "bool"
                            value = reader.take(1).unpack1("C")
                            integer(value, 0, 1)
                            value == 1
                        elsif SCALARS.key?(type)
                            format, size = SCALARS.fetch(type)
                            value = reader.take(size).unpack1(format)
                            if type == "float32" || type == "float64"
                                require_value(value.finite?, "nonfinite canonical scalar")
                            end
                            value
                        else
                            classes.fetch(type).__read(reader)
                        end
                    end
                    # @brief Decode one nested complete value through an internal cursor.
                    # @details Internal public singleton for registry composition; ordinary
                    # callers use decode. Error may leave the reader advanced: discard it,
                    # never infer rollback. Validates complete nested extent and semantics.
                    # @param reader [in,out] Trusted Reader exclusively borrowed by this call.
                    # @return New complete value; invalid bytes raise ArgumentError and
                    # allocation/type errors propagate. No native memory/resource escapes.
                    # @see Uwvm::RosWasm::Wire::Reader
                    klass.define_singleton_method(:__read) do |reader|
                        start = reader.position
                        value = klass.new
                        fields.each do |field|
                            if field.fetch("array") == ""
                                part = read_one.call(reader, field)
                            else
                                if field.fetch("array") == "array"
                                    count = field.fetch("count")
                                else
                                    count = reader.count(field.fetch("count"), field.fetch("element_minimum"))
                                end
                                part = Array.new(count) do
                                    read_one.call(reader, field)
                                end
                            end
                            value[field.fetch("name")] = part
                        end
                        Wire.require_value(
                            (minimum..maximum).cover?(reader.position - start),
                            "nested complete wire extent"
                        )
                        Wire.semantics(schema, value)
                        value
                    end
                    # @brief Decode exactly one entire bounded canonical byte String.
                    # @details Checks exact String type/whole byte bounds, every field and
                    # semantic rule, then rejects trailing input. Private cursor state is
                    # discarded on error. No I/O, normalization, retry or grant occurs.
                    # @param bytes [in] Complete binary canonical String; borrowed unchanged.
                    # @return Fresh complete value with independent decoded nested arrays/
                    # records/Strings. Invalid input raises ArgumentError; other failures
                    # propagate and return no partial value.
                    # @see Uwvm::RosWasm::Wire.records
                    klass.define_singleton_method(:decode) do |bytes|
                        Wire.require_value(
                            bytes.instance_of?(String) && (minimum..maximum).cover?(bytes.bytesize),
                            "complete bounded wire required"
                        )
                        reader = Reader.new(bytes.b)
                        value = klass.__read(reader)
                        Wire.require_value(reader.remaining == 0, "trailing canonical bytes")
                        value
                    end
                    classes[name] = klass
                end
                classes.freeze
            end
        end
    end
end
