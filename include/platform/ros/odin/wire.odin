// @file wire.odin
// @brief Pure finite owned canonical primitives for genuine Odin records.
// @details No allocation, C record layout, host import or implicit authority is
// used. Generated codecs visit every original field and own all backing arrays.
package roswire

// @brief Own a finite original string with its declared byte/text domain.
// @param capacity Inclusive schema byte bound. @param raw Catalogued byte domain.
Text :: struct($capacity: int, $raw: bool) {
    // @brief Independent backing bytes; the suffix after size has no wire bytes.
    data: [capacity]u8,
    // @brief Initialized byte extent, constrained to the concrete capacity.
    size: u32,
}

// @brief Own a finite sequence of complete native-language elements.
// @param Element Exact original element type. @param capacity Inclusive bound.
Sequence :: struct($Element: typeid, $capacity: int) {
    // @brief Own every possible active element independently of input storage.
    items: [capacity]Element,
    // @brief Active element count, constrained to the concrete capacity.
    size: u32,
}

// @brief Borrow one exclusive bounded canonical span during pure traversal.
// @details A refused composite may advance a prefix; ignore all partial values.
Cursor :: struct {
    // @brief Borrowed stable storage; writes occur only in an encoding cursor.
    bytes: []u8,
    // @brief Current initialized or consumed prefix extent.
    at: int,
    // @brief First local canonical refusal; zero indicates no refusal so far.
    code: u32,
    // @brief True encodes fields; false copies fields into owned record storage.
    writing: bool,
}

// @brief Validate canonical Unicode scalar UTF-8 without NUL.
// @param bytes Immutable bytes borrowed until return.
// @return True only for strict scalar encodings, including empty text.
utf8 :: proc "contextless"(bytes: []u8) -> bool {
    remaining, scalar, minimum: u32
    for value in bytes {
        if remaining == 0 {
            if value == 0 {
                return false
            }
            if value < 128 {
                continue
            }
            if value >= 194 && value <= 223 {
                remaining = 1
                scalar = u32(value & 31)
                minimum = 128
            } else if value >= 224 && value <= 239 {
                remaining = 2
                scalar = u32(value & 15)
                minimum = 2048
            } else if value >= 240 && value <= 244 {
                remaining = 3
                scalar = u32(value & 7)
                minimum = 65536
            } else { return false }
        } else {
            if value & 192 != 128 {
                return false
            }
            scalar = scalar << 6 | u32(value & 63)
            remaining -= 1
            if remaining == 0 &&
                (scalar < minimum || scalar > 0x10ffff ||
                 scalar >= 0xd800 && scalar <= 0xdfff) { return false }
        }
    }
    return remaining == 0
}

// @brief Traverse one exact-width little-endian integer bit pattern.
// @param cursor Exclusive bounded reader/writer. @param original Original bits.
// @param size Exact original scalar width, 1, 2, 4 or 8 bytes.
// @return Original or decoded bits; cursor.code invalidates the value on refusal.
number :: proc "contextless"(cursor: ^Cursor, original: u64, size: int) -> u64 {
    if cursor.code != 0 {
        return 0
    }
    if cursor.at > len(cursor.bytes) || size > len(cursor.bytes) - cursor.at {
        cursor.code = 22
        return 0
    }
    value := original
    if !cursor.writing {
        value = 0
    }
    for index in 0..<size {
        if cursor.writing {
            cursor.bytes[cursor.at] = u8(value >> u32(index * 8))
        } else {
            value |= u64(cursor.bytes[cursor.at]) << u32(index * 8)
        }
        cursor.at += 1
    }
    return value
}

// @brief Traverse a canonical boolean without integer truthiness coercion.
// @param cursor Exclusive reader/writer. @param original Original boolean.
// @return Native boolean; raw values above one set canonical error 22.
boolean :: proc "contextless"(cursor: ^Cursor, original: bool) -> bool {
    raw := number(cursor, u64(u8(original)), 1)
    if raw > 1 {
        cursor.code = 22
    }
    return raw != 0
}

// @brief Traverse one finite original Float32 with exact IEEE754 bit retention.
// @param cursor Exclusive reader/writer. @param original Original float value.
// @return Original/decoded value; NaN/infinity set canonical error 22.
float32 :: proc "contextless"(cursor: ^Cursor, original: f32) -> f32 {
    bits := u32(number(cursor, u64(transmute(u32)original), 4))
    if bits & 0x7f800000 == 0x7f800000 {
        cursor.code = 22
    }
    return transmute(f32)bits
}

// @brief Traverse one finite original Float64 with exact IEEE754 bit retention.
// @param cursor Exclusive reader/writer. @param original Original float value.
// @return Original/decoded value; NaN/infinity set canonical error 22.
float64 :: proc "contextless"(cursor: ^Cursor, original: f64) -> f64 {
    bits := number(cursor, transmute(u64)original, 8)
    if bits & 0x7ff0000000000000 == 0x7ff0000000000000 {
        cursor.code = 22
    }
    return transmute(f64)bits
}

// @brief Traverse a finite owned original text/byte string without truncation.
// @param cursor Exclusive reader/writer. @param value Complete independently owned text.
// @return Void; cursor.code preserves a malformed, UTF-8 or finite-bound refusal.
text :: proc "contextless"(cursor: ^Cursor, value: ^Text($Capacity, $Raw)) {
    value.size = u32(number(cursor, u64(value.size), 4))
    if cursor.code != 0 {
        return
    }
    if value.size > u32(Capacity) || int(value.size) > len(cursor.bytes) - cursor.at {
        cursor.code = 22
        return
    }
    count := int(value.size)
    when !Raw {
        input := value.data[:count]
        if !cursor.writing {
            input = cursor.bytes[cursor.at:cursor.at + count]
        }
        if !utf8(input) {
            cursor.code = 22
            return
        }
    }
    for index in 0..<count {
        if cursor.writing {
            cursor.bytes[cursor.at + index] = value.data[index]
        } else {
            value.data[index] = cursor.bytes[cursor.at + index]
        }
    }
    cursor.at += count
}
