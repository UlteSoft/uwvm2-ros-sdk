module roswasm.wire;
import roswasm : validUtf8, maximumRequest, maximumOutput;

// BetterC cursor codecs. Readers borrow input; decoded strings borrow that
// input. Generated variable containers use an explicit caller-owned Arena.
@nogc nothrow:
/// @brief Caller-owned monotonic region for complete decoded dynamic containers.
/// @details Initialize used=0 with stable exclusive backing bytes. Allocations
/// respect actual target T alignment and initialize every element with T.init.
/// Returned views borrow this region; no GC, Druntime allocator or implicit free
/// is used. Discard a dedicated region after partial decode refusal once all
/// dependent values are dead; resetting storage while values survive is invalid.
/// @see Arena.allocate; Reader; roswasm.typed.callValue
struct Arena {
    /// @brief Caller-owned writable region retained for all allocated typed views.
    /// @details Keep its base allocation stable and exclusive during allocation;
    /// do not resize/free/overwrite it while decoded arrays or nested values survive.
    /// @see Arena.used; Arena.allocate
    ubyte[] storage;
    /// @brief Consumed region bytes, including alignment padding.
    /// @details Initialize 0 and maintain 0<=used<=storage.length. Reuse/reset
    /// requires every previous dependent decoded value to be out of lifetime.
    /// @see Arena.storage; Arena.allocate
    size_t used;
    /// @brief Reserve an aligned complete T array from this explicit region.
    /// @details Checks capacity using division before multiplying count*T.sizeof,
    /// updates used only after admission and initializes all elements with T.init.
    /// No native ROS type, original schema validation or transport grant is inferred.
    /// @param[in] T Actual nonzero-size BetterC-compatible target element type,
    /// with positive alignment and no GC/Druntime/throwing initialization dependency.
    /// @param[in] count Exact nonnegative selected array/sequence element count.
    /// @return Borrowed initialized T slice, or null on invalid cursor/capacity.
    /// A valid zero-element result can also have length 0; length alone cannot
    /// distinguish zero-count success from refusal. Existing live views are not freed.
    /// @see Arena.storage; Arena.used; Reader.take
    T[] allocate(T)(size_t count) {
        if(used>storage.length) return null;
        auto address=cast(size_t)storage.ptr+used;
        auto padding=(T.alignof-address%T.alignof)%T.alignof;
        if(padding>storage.length-used) return null;
        auto start=used+padding;
        if(count>(storage.length-start)/T.sizeof) return null;
        auto p=cast(T*)(storage.ptr+start);
        used=start+count*T.sizeof;
        auto result=p[0..count];
        foreach(ref value; result) value=T.init;
        return result;
    }
}
/// @brief Bounded caller-output writer or exact byte-measurement cursor.
/// @details Initialize position=0 and code=0; select measurement/output mode
/// explicitly. Writes use exact selected canonical field order, not a native
/// ROS struct cast. A failed composite write may leave a consumed prefix;
/// discard/reset the attempted whole value before reusing its cursor/storage.
/// @see Writer.put; Writer.bytes; Reader
struct Writer {
    /// @brief Exclusive caller-owned output bytes, borrowed while writing/using prefix views.
    /// @details Ordinary writes are bounded by both storage.length and limit.
    /// Measurement mode never copies bytes and does not reserve a future buffer.
    /// @see Writer.measuring; Writer.limit; Writer.put
    ubyte[] storage;
    /// @brief Initialized/measured prefix extent in bytes, initially 0.
    /// @details Maintain it within the effective capacity; semantic refusal in
    /// a later field does not roll back earlier successful field writes.
    /// @see Writer.put; Writer.bytes
    size_t position;
    /// @brief Current unsigned writer refusal; 0 denotes no recorded failure.
    /// @details Inspect false returns immediately. Do not continue writing after
    /// refusal: argument/content checks may replace an earlier error with 22.
    /// @see Writer.put; Writer.text; Writer.float32
    uint code;
    /// @brief True computes extents without copying any field into storage.
    /// @details Uses limit directly; Writer.bytes requires an ordinary valid
    /// output-backed writer, not a measurement cursor exceeding storage.length.
    /// @see Writer.put; Writer.bytes
    bool measuring;
    /// @brief Explicit inclusive byte ceiling, default maximumRequest.
    /// @details Values above maximumRequest are refused during put. The bound
    /// creates no allocation, native queue slot or Host operation quota.
    /// @see Writer.storage; Writer.measuring; Writer.put
    size_t limit=maximumRequest;
    /// @brief Append or measure one complete byte slice after remaining-capacity checks.
    /// @details A previous code returns false unchanged. This primitive checks the
    /// full extent before copying/advancing and never silently truncates b.
    /// @param[in] b Complete immutable field bytes, stable through synchronous copy.
    /// @return True after complete copy/measurement, otherwise false with the
    /// existing code or capacity 90. No part of b is appended on capacity refusal.
    /// @see Writer.position; Writer.limit; Writer.integer
    bool put(const(ubyte)[] b) {
        if(code) return false;
        auto capacity=measuring ? limit : (storage.length<limit ? storage.length : limit);
        if(capacity>maximumRequest || position>capacity || b.length>capacity-position) {
             code=90;
             return false;
        }
        if(!measuring) storage[position..position+b.length]=b;
        position+=b.length; return true;
    }
    /// @brief Write the exact selected standard integral scalar in canonical LE bytes.
    /// @details This low-level template assumes T.sizeof<=8 and uses a ulong
    /// accumulator; it has no wider-integer implementation. Select the original
    /// schema's actual signed/unsigned scalar instead of guessing another width.
    /// @param[in] T Exact original standard integral type of 1, 2, 4 or 8 bytes.
    /// @param[in] value Complete T field; its signed two's-complement bits are preserved.
    /// @return True after T.sizeof field bytes, or false with the current writer error.
    /// @see Reader.integer; Writer.put; Writer.boolean
    bool integer(T)(T value) if(__traits(isIntegral,T)) {
        ubyte[T.sizeof] b;
        auto n=cast(ulong)value;
        foreach(i; 0..T.sizeof) b[i]=cast(ubyte)(n>>(i*8));
        return put(b);
    }
    /// @brief Write one canonical Boolean byte, exactly 0 or 1.
    /// @details Uses the original wire representation, not native Bool memory layout.
    /// @param[in] value Complete Boolean field value.
    /// @return True after the whole byte, otherwise false with current writer status.
    /// @see Reader.boolean; Writer.integer
    bool boolean(bool value) {
         return integer(cast(ubyte)value);
    }
    /// @brief Write one finite IEEE binary32 field with its exact original bits.
    /// @details Preserves finite signed zero/subnormals in LE order; rejects
    /// NaN/infinity before appending this field. No physical-unit conversion occurs.
    /// @param[in] value Complete original finite float field.
    /// @return True after four bytes, or false with nonfinite 22/current writer error.
    /// @see Reader.float32; Writer.integer; float32Bits
    bool float32(float value) {
        union Bits {
             float f;
             uint u;
        }
        Bits b; b.f=value;
        if((b.u&0x7f800000)==0x7f800000) {
             code=22;
             return false;
        }
        return integer(b.u);
    }
    /// @brief Write one finite IEEE binary64 field with its exact original bits.
    /// @details Uses eight canonical LE bytes without native ROS layout or scaling.
    /// NaN/infinity refusal occurs before this scalar's byte append.
    /// @param[in] value Complete original finite double field.
    /// @return True after the complete field, or false with nonfinite 22/current error.
    /// @see Reader.float64; Writer.integer; float64Bits
    bool float64(double value) {
        union Bits {
             double f;
             ulong u;
        }
        Bits b; b.f=value;
        if((b.u&0x7ff0000000000000UL)==0x7ff0000000000000UL) {
             code=22;
             return false;
        }
        return integer(b.u);
    }
    /// @brief Write complete bounded UTF-8 with its exact u32 LE byte-length prefix.
    /// @details Counts UTF-8 bytes rather than characters, validates complete
    /// content and adds no normalization/trailing NUL. A prefix may be written
    /// before body-capacity refusal; discard the attempted whole writer on failure.
    /// @param[in] value Complete immutable original UTF-8 bytes, stable through return.
    /// @param[in] bound Exact original inclusive UTF-8 byte ceiling.
    /// @param[in] rejectNul True rejects embedded NUL; false requires the exact
    /// original selected field contract independently to allow that content.
    /// @return True for complete prefix/body, otherwise false with invalid
    /// bound/content/u32 extent 22 or current writer/capacity status.
    /// @see Reader.text; validUtf8; Writer.put
    bool text(const(ubyte)[] value, size_t bound, bool rejectNul=true) {
        if(value.length>bound || value.length>uint.max || !validUtf8(value,rejectNul)) {
             code=22;
             return false;
        }
        return integer(cast(uint)value.length) && put(value);
    }
    /// @brief Return the initialized prefix of an ordinary valid output-backed writer.
    /// @details Requires position<=storage.length when code==0. Do not call on a
    /// measurement cursor without sufficient actual storage; invalid caller cursor
    /// invariants can trap rather than return a checked error.
    /// @return Borrowed caller-output prefix on code 0, otherwise null. Retain
    /// output unchanged for its complete use; a slice transfers no allocation.
    /// @see Writer.measuring; Writer.position; Writer.storage
    const(ubyte)[] bytes() {
         return code ? null : storage[0..position];
    }
}
/// @brief Construct the exact IEEE binary32 value from complete original bits.
/// @details Pure bit constructor, not a finite-value validator. NaN/infinity
/// patterns remain representable; selected finite wire codecs reject them separately.
/// @param[in] n Exact 32-bit original IEEE representation, with no unit conversion.
/// @return Bit-identical float; no Host call, allocation or exception is performed.
/// @see Writer.float32; Reader.float32; float64Bits
float float32Bits(uint n) {
     union Bits {
         float f;
         uint u;
    } Bits b;
     b.u=n;
     return b.f;
}
/// @brief Construct the exact IEEE binary64 value from complete original bits.
/// @details Pure bit constructor accepts every pattern, including NaN/infinity.
/// Original selected field finiteness constraints are checked by wire operations.
/// @param[in] n Exact 64-bit original IEEE representation, preserved without narrowing.
/// @return Bit-identical double; no native type, physical scale or authority is inferred.
/// @see Writer.float64; Reader.float64; float32Bits
double float64Bits(ulong n) {
     union Bits {
         double f;
         ulong u;
    } Bits b;
     b.u=n;
     return b.f;
}
/// @brief Caller-owned cursor over immutable canonical input with explicit status.
/// @details Initialize position=0/code=0. Returned string/raw slices borrow input;
/// decoded dynamic arrays additionally borrow the explicit Arena region. Both
/// allocations remain live and unchanged while their dependent values are used.
/// A semantic refusal can consume a prefix; discard partial reader/value state.
/// @see Reader.take; Reader.finish; Arena; Writer
struct Reader {
    /// @brief Complete immutable original input bytes, at most maximumOutput.
    /// @details Retain the allocation unchanged for decoding and every borrowed
    /// string/raw field. No Native pointer or implicit ownership transfer occurs.
    /// @see Reader.take; Reader.text; Arena
    const(ubyte)[] storage;
    /// @brief Current consumed-byte offset, initially 0, within storage.length.
    /// @details Successful take advances it; later content rejection does not
    /// roll it back or make a partial decoded record usable.
    /// @see Reader.take; Reader.finish
    size_t position;
    /// @brief Current unsigned reader refusal; 0 denotes no recorded failure.
    /// @details Inspect every bool/status before output. Failed operations may
    /// leave partially consumed storage and initialized-but-unusable out-values.
    /// @see Reader.take; Reader.text; Reader.finish
    uint code;
    /// @brief Consume exactly n bytes and return their complete borrowed slice.
    /// @details Checks original input/cursor/extent before any advance and never
    /// pads or truncates a selected field. Existing code returns false unchanged.
    /// @param[in] n Exact nonnegative selected field-byte extent.
    /// @param[out] b Unused caller output destination; valid only on true, borrowing
    /// this reader's original stable immutable input allocation.
    /// @return True after complete take, otherwise false with existing status or
    /// invalid input/cursor/truncation 22 before this primitive advances.
    /// @see Reader.storage; Reader.position; Reader.integer
    bool take(size_t n, out const(ubyte)[] b) {
        if(code) return false;
        if(storage.length>maximumOutput || position>storage.length || n>storage.length-position) {
             code=22;
             return false;
        }
        b=storage[position..position+n]; position+=n; return true;
    }
    /// @brief Decode the exact selected standard integral width from canonical LE bytes.
    /// @details Uses a ulong accumulator and assumes T.sizeof<=8. Select the
    /// original 1/2/4/8-byte integral field; wider types have no implementation.
    /// Signed/unsigned conversion preserves the selected original field bits.
    /// @param[in] T Exact original standard integral field type.
    /// @param[out] value Complete T scalar on true; ignore the out-value on false.
    /// @return True after the complete scalar, otherwise false with current reader status.
    /// @see Writer.integer; Reader.take; Reader.code
    bool integer(T)(out T value) if(__traits(isIntegral,T)) {
        const(ubyte)[] b; if(!take(T.sizeof,b)) return false;
        ulong n; foreach(i; 0..T.sizeof) n|=cast(ulong)b[i]<<(8*i);
        value=cast(T)n; return true;
    }
    /// @brief Read one canonical Boolean whose original byte must be 0 or 1.
    /// @details Rejects other values without coercion. Semantic refusal can
    /// follow consumption of that byte and does not roll the cursor back.
    /// @param[out] value Actual Boolean only after true; ignore it on false.
    /// @return True for exact canonical value, otherwise false with existing code or 22.
    /// @see Writer.boolean; Reader.integer; Reader.code
    bool boolean(out bool value) {
        ubyte n; if(!integer(n)) return false;
        if(n>1) {
             code=22;
             return false;
        } value=n==1;
         return true;
    }
    /// @brief Read one finite IEEE binary32 field with its exact original bits.
    /// @details Reconstructs finite signed zero/subnormal values without scaling.
    /// Nonfinite rejection occurs after consuming the original four bytes.
    /// @param[out] value Complete finite float on true; ignore partial/default output on false.
    /// @return True for complete valid field, otherwise false with existing code or 22.
    /// @see Writer.float32; Reader.integer; float32Bits
    bool float32(out float value) {
        union Bits {
             float f;
             uint u;
        }
        Bits b; if(!integer(b.u)) return false;
        if((b.u&0x7f800000)==0x7f800000) {
             code=22;
             return false;
        }
        value=b.f; return true;
    }
    /// @brief Read one finite IEEE binary64 field from eight exact LE bytes.
    /// @details No native ROS struct, normalization or physical unit is inferred.
    /// A refused NaN/infinity can leave the input cursor advanced.
    /// @param[out] value Complete finite double on true; ignore it on false.
    /// @return True for a complete valid field, otherwise false with existing code or 22.
    /// @see Writer.float64; Reader.integer; float64Bits
    bool float64(out double value) {
        union Bits {
             double f;
             ulong u;
        }
        Bits b; if(!integer(b.u)) return false;
        if((b.u&0x7ff0000000000000UL)==0x7ff0000000000000UL) {
             code=22;
             return false;
        }
        value=b.f; return true;
    }
    /// @brief Read one complete bounded length-prefixed UTF-8 byte view.
    /// @details Reads exact u32 count, checks its original bound, takes every
    /// byte and validates UTF-8 without replacement/normalization. Semantic
    /// refusal can leave a consumed prefix and even an assigned unusable out-slice.
    /// @param[out] value Complete borrowed UTF-8 bytes only after true; ignore on false.
    /// @param[in] bound Exact original inclusive UTF-8 byte ceiling.
    /// @param[in] rejectNul True rejects embedded NUL; false needs the field's exact policy.
    /// @return True for complete validated content, otherwise false with existing
    /// code or local bound/content/truncation 22. Keep input live while using value.
    /// @see Writer.text; Reader.take; validUtf8; Reader.storage
    bool text(out const(ubyte)[] value, size_t bound, bool rejectNul=true) {
        uint n; if(!integer(n)) return false;
        if(n>bound) {
             code=22;
             return false;
        }
        if(!take(n,value)) return false;
        if(!validUtf8(value,rejectNul)) {
             code=22;
             return false;
        }
        return true;
    }
    /// @brief Require exact input exhaustion after all outer record fields were decoded.
    /// @details Preserves an existing error, otherwise sets 22 for trailing or
    /// unconsumed bytes. Nested record readers leave enclosing fields for the caller.
    /// @return True only for code 0 with position==storage.length; no bytes are consumed.
    /// @see Reader.position; Reader.code; Reader.take
    bool finish() {
         if(position!=storage.length && !code) code=22;
         return code==0;
    }
}
