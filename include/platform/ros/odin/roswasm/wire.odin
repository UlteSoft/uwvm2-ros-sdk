package roswasm

// Canonical cursors with explicit caller storage. Dynamic fields borrow the
// input or use an explicit caller allocator in the generated record reader.
// @brief Caller-owned bounded canonical writer or size-measurement cursor.
// @details Initialize position=0, code=0 and an explicit nonnegative limit no
// larger than Maximum_Request. Keep the object/storage stable and exclusively
// mutable during a call. A failed composite write can leave a consumed prefix;
// discard/reset the whole attempted value rather than publish partial bytes.
// @see put_bytes; put_integer; Reader
Writer :: struct {
    // @brief Exclusive caller output buffer, borrowed while writing/using its prefix.
    // @details Measurement mode does not write it. Ordinary mode is bounded by
    // both len(storage) and limit; no native allocation or quota is inferred.
    // @see Writer.measuring; Writer.limit; put_bytes
    storage: []u8,
    // @brief Initialized/measured prefix extent in bytes.
    // @details Initialize 0 and maintain 0<=position<=effective capacity. The
    // public primitives do not promise rollback after a later field refusal.
    // @see put_bytes; Writer.limit
    position: int,
    // @brief Current unsigned writer-refusal code; 0 denotes no recorded refusal.
    // @details Inspect false returns immediately. Do not keep writing after a
    // failure: argument-validation branches can set 22 even after an earlier error.
    // @see put_bytes; put_integer; put_string
    code: u32,
    // @brief True measures byte extents without copying any field bytes.
    // @details Uses limit as the capacity; it reserves no output buffer or Host quota.
    // @see put_bytes; Writer.position
    measuring: bool,
    // @brief Explicit inclusive byte ceiling, 0 through Maximum_Request.
    // @details Default 0 only admits empty output; choose the complete original
    // record bound deliberately. It is not a native sizeof or queue reservation.
    // @see Writer.storage; Writer.measuring
    limit: int,
}
// @brief Caller-owned cursor over complete canonical input with explicit status.
// @details Initialize position=0 and code=0. Input remains stable/immutable while
// decoding and while decoded borrowed strings/raw slices are used. Nested record
// sequences can additionally require the explicit allocator's live region.
// @see take_bytes; get_string; reader_finish; Writer
Reader :: struct {
    // @brief Complete caller-owned canonical input bytes, at most Maximum_Output.
    // @details Decoded string/raw fields can borrow this same allocation; keep
    // it live and unchanged for the full lifetime of those values.
    // @see take_bytes; get_string
    storage: []u8,
    // @brief Current consumed-byte offset within storage.
    // @details Initialize 0. A semantic refusal after a successful take can leave
    // it advanced; discard the partial reader/value rather than continue decoding.
    // @see take_bytes; reader_finish
    position: int,
    // @brief Current unsigned reader refusal; 0 denotes no recorded refusal.
    // @details Inspect failed primitive returns before consuming any returned
    // value. Invalid argument branches may replace a previous code with 22.
    // @see get_integer; get_string; reader_finish
    code: u32,
}
// @brief Append or measure one exact field-byte slice under both writer bounds.
// @details Requires a non-nil valid exclusive Writer. Checks complete capacity
// before copying/advancing. An already nonzero code returns false unchanged.
// @param[in,out] w Stable initialized writer with caller-owned output or measurement mode.
// @param[in] b Complete immutable field bytes, stable through synchronous copy.
// @return True after full copy/measurement; false for existing error or capacity
// refusal 90. No part of b is appended on this primitive's capacity failure.
// @permissions None; pure local bytes do not establish a native type or operation.
// @see Writer; put_integer; put_string
put_bytes :: proc(w: ^Writer, b: []u8) -> bool {
    if w.code!=0 { return false }
    capacity:=w.measuring ? w.limit : min(len(w.storage),w.limit)
    if capacity<0 || capacity>Maximum_Request || w.position<0 || w.position>capacity || len(b)>capacity-w.position { w.code=90; return false }
    if !w.measuring { copy(w.storage[w.position:],b) }
    w.position+=len(b); return true
}
// @brief Write the selected low integer bytes in canonical little-endian order.
// @details Low-level bit primitive: it does not reject high bits outside width.
// The caller selects the original field width and validates its scalar range;
// signed fields supply the corresponding two's-complement bit pattern.
// @param[in,out] w Non-nil valid exclusive caller writer/measurement cursor.
// @param[in] value Full source bits whose low width bytes represent the selected field.
// @param[in] width Exact original scalar extent: 1, 2, 4 or 8 bytes.
// @return True after the complete field; false with invalid-width 22, existing
// writer error or capacity 90. No native integer layout or Host call is used.
// @see get_integer; put_bytes; Writer.code
put_integer :: proc(w: ^Writer, value: u64, width: int) -> bool {
    if width!=1 && width!=2 && width!=4 && width!=8 { w.code=22; return false }
    b: [8]u8
    for i in 0..<width { b[i]=u8(value>>uint(8*i)) }
    return put_bytes(w,b[:width])
}
// @brief Consume exactly n remaining bytes and return a borrowed complete slice.
// @details Requires a non-nil valid Reader and stable input. Checks the full
// extent before advancing; never pads or truncates a selected field.
// @param[in,out] r Initialized exclusive reader; its input allocation remains live.
// @param[in] n Nonnegative exact original field extent in bytes.
// @return Borrowed input slice and true, or nil/false with existing code or local
// invalid/truncated/cursor/input-extent 22. Failed extent checks do not advance.
// @lifetime Retain input unchanged for every returned slice/decoded borrowed value.
// @see Reader; get_integer; get_string
take_bytes :: proc(r: ^Reader, n: int) -> ([]u8,bool) {
    if r.code!=0 { return nil,false }
    if n<0 || r.position<0 || r.position>len(r.storage) || len(r.storage)>Maximum_Output || n>len(r.storage)-r.position { r.code=22; return nil,false }
    start:=r.position; r.position+=n; return r.storage[start:r.position],true
}
// @brief Read one exact-width canonical little-endian integer into full u64 bits.
// @details Zero-extends widths below eight; callers interpret signed fields at
// their exact original width. No host-int narrowing or native ROS layout is inferred.
// @param[in,out] r Non-nil initialized exclusive reader over stable input.
// @param[in] width Exact original byte width, one of 1, 2, 4 or 8.
// @return Complete u64 and true, or 0/false with existing reader error or local
// invalid width/truncation 22. Discard partial record state after any refusal.
// @see put_integer; take_bytes; Reader.code
get_integer :: proc(r: ^Reader, width: int) -> (u64,bool) {
    if width!=1 && width!=2 && width!=4 && width!=8 { r.code=22; return 0,false }
    b,ok:=take_bytes(r,width); if !ok { return 0,false }
    n: u64; for i in 0..<width { n|=u64(b[i])<<uint(8*i) }; return n,true
}
// @brief Write one canonical Boolean byte, exactly 0 or 1.
// @details Uses the wire scalar representation, not Odin/native Bool storage.
// @param[in,out] w Non-nil valid exclusive writer/measurement cursor.
// @param[in] value Complete Boolean field value.
// @return True after this field, otherwise false with the current writer error.
// @see get_bool; put_integer; Writer.code
put_bool :: proc(w: ^Writer, value: bool) -> bool {
     return put_integer(w,value ? 1 : 0,1)
}
// @brief Read one canonical Boolean whose original byte must be 0 or 1.
// @details Noncanonical bytes are rejected instead of coerced to true. The byte
// can already be consumed on semantic refusal; no cursor rollback is promised.
// @param[in,out] r Non-nil initialized exclusive reader over stable input.
// @return Actual Boolean/true, or false/false with existing error or local 22.
// @see put_bool; get_integer; Reader.code
get_bool :: proc(r: ^Reader) -> (bool,bool) {
    n,ok:=get_integer(r,1); if !ok { return false,false }
    if n>1 { r.code=22; return false,false }; return n==1,true
}
// @brief Write one finite IEEE binary32 field using its exact original bits.
// @details Preserves finite signed zero/subnormals and rejects all-ones exponents
// before appending. No physical-unit conversion or coordinate scaling occurs.
// @param[in,out] w Non-nil valid exclusive writer/measurement cursor.
// @param[in] value Complete original finite f32 field.
// @return True after four canonical LE bytes; false with nonfinite 22 or writer error.
// @see get_float32; put_integer; Writer.code
put_float32 :: proc(w: ^Writer, value: f32) -> bool {
    bits:=transmute(u32)value
    if bits&0x7f800000==0x7f800000 { w.code=22; return false }
    return put_integer(w,u64(bits),4)
}
// @brief Write one finite IEEE binary64 field using exact original bits.
// @details Preserves finite bit patterns without guessing a native ROS struct or unit.
// NaN/infinity refusal precedes this field's byte append.
// @param[in,out] w Non-nil valid exclusive writer/measurement cursor.
// @param[in] value Complete original finite f64 field.
// @return True after eight canonical LE bytes; false with nonfinite 22 or writer error.
// @see get_float64; put_float32; put_integer
put_float64 :: proc(w: ^Writer, value: f64) -> bool {
    bits:=transmute(u64)value
    if bits&0x7ff0000000000000==0x7ff0000000000000 { w.code=22; return false }
    return put_integer(w,bits,8)
}
// @brief Read one finite canonical IEEE binary32 field without normalization.
// @details Reconstructs exact original finite bits, including signed zero.
// Nonfinite refusal follows consumption; discard partial reader/value state.
// @param[in,out] r Non-nil initialized exclusive reader over stable input.
// @return Complete finite f32/true, or 0/false with existing error or local 22.
// @see put_float32; get_integer; Reader.code
get_float32 :: proc(r: ^Reader) -> (f32,bool) {
    bits,ok:=get_integer(r,4); if !ok { return 0,false }
    if bits&0x7f800000==0x7f800000 { r.code=22; return 0,false }
    return transmute(f32)u32(bits),true
}
// @brief Read one finite canonical IEEE binary64 field with its exact bits.
// @details Rejects NaN/infinity rather than replacing them or inferring physical
// units. A refused semantic field can leave the input cursor advanced.
// @param[in,out] r Non-nil initialized exclusive reader over stable input.
// @return Complete finite f64/true, or 0/false with existing error or local 22.
// @see put_float64; get_integer; Reader.code
get_float64 :: proc(r: ^Reader) -> (f64,bool) {
    bits,ok:=get_integer(r,8); if !ok { return 0,false }
    if bits&0x7ff0000000000000==0x7ff0000000000000 { r.code=22; return 0,false }
    return transmute(f64)bits,true
}
// @brief Write complete bounded UTF-8 with the original u32 LE byte-count prefix.
// @details Bound counts bytes, not characters. Performs strict UTF-8 validation
// without normalization or an added NUL. A prefix may already be appended before
// body-capacity refusal; discard that attempted writer rather than send its prefix.
// @param[in,out] w Non-nil valid exclusive writer/measurement cursor.
// @param[in] value Complete original UTF-8 string; retain backing bytes through return.
// @param[in] bound Nonnegative inclusive UTF-8 byte ceiling from the exact schema.
// @param[in] reject_nul True rejects embedded NUL; false requires the original
// selected field contract independently to allow that content.
// @return True after complete prefix/body; false with invalid bound/content 22
// or the current writer/capacity status. No Host operation or quota is issued.
// @see get_string; valid_utf8; put_bytes
put_string :: proc(w: ^Writer, value: string, bound: int, reject_nul: bool = true) -> bool {
    b:=transmute([]u8)value
    if bound<0 || len(b)>bound || !valid_utf8(b,reject_nul) { w.code=22; return false }
    return put_integer(w,u64(len(b)),4) && put_bytes(w,b)
}
// @brief Read one complete bounded UTF-8 string as a borrowed immutable view.
// @details Reads exact u32 byte count, checks the original bound, takes every
// byte and validates UTF-8 without replacement/normalization. Refusal may leave
// a consumed prefix; no partial/default string is published as successful.
// @param[in,out] r Non-nil initialized exclusive reader with stable input storage.
// @param[in] bound Nonnegative inclusive original UTF-8 byte ceiling.
// @param[in] reject_nul True rejects embedded NUL; false needs the field's exact policy.
// @return Complete borrowed string/true, or empty string/false with existing reader
// error or local bound/content/truncation 22. Inspect the success flag before value.
// @lifetime Keep the original input allocation live and unchanged while the string is used.
// @see put_string; take_bytes; valid_utf8; Reader
get_string :: proc(r: ^Reader, bound: int, reject_nul: bool = true) -> (string,bool) {
    n,ok:=get_integer(r,4); if !ok { return "",false }
    if bound<0 || n>u64(bound) { r.code=22; return "",false }
    b,good:=take_bytes(r,int(n)); if !good { return "",false }
    if !valid_utf8(b,reject_nul) { r.code=22; return "",false }
    return transmute(string)b,true
}
// @brief Require exact end-of-record after complete outer decoding.
// @details Checks the existing reader status before comparing position to the
// full input extent. Nested readers leave subsequent enclosing fields unread.
// @param[in,out] r Non-nil valid exclusive reader after all selected outer fields.
// @return True only for code 0 with complete exhaustion; false preserves an
// existing error or sets trailing/unconsumed-input 22. No bytes are consumed here.
// @see Reader.position; get_string; take_bytes
reader_finish :: proc(r: ^Reader) -> bool {
    if r.code==0 && r.position!=len(r.storage) { r.code=22 }
    return r.code==0
}
