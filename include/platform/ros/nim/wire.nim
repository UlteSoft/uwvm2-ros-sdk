## @file wire.nim
## @brief Pure finite owned canonical records for genuine Nim bindings.
## @details Native fieldPairs traversal preserves every declared field in source
## order. Text and sequence capacities are concrete type parameters. No field
## borrows input storage and this module performs no allocation or host call.

type
  NativeText*[N: static[int]; Raw: static[bool]] = object
    ## @brief Own a finite string with the original text-versus-byte domain.
    textBytes*: array[N, byte]
      ## @brief Entire possible backing storage; the inactive suffix is not encoded.
    textSize*: uint32
      ## @brief Initialized byte count, checked against the concrete type capacity.
  NativeSequence*[T; N: static[int]] = object
    ## @brief Own a finite counted sequence of complete native element values.
    sequenceItems*: array[N, T]
      ## @brief Independent backing elements; no input pointer is retained.
    sequenceSize*: uint32
      ## @brief Active element count, checked against the concrete type capacity.
  Cursor* = object
    ## @brief Borrow one exclusive bounded canonical span during pure traversal.
    bytes*: ptr UncheckedArray[byte]
      ## @brief Borrowed stable bytes; writable only for an encoding cursor.
    size*, at*: int
      ## @brief Total available storage and initialized/consumed prefix extent.
    code*: uint32
      ## @brief First canonical error; a nonzero status invalidates the whole value.
    writing*: bool
      ## @brief True encodes; false copies every field into independent native storage.

proc utf8*(bytes: openArray[byte]): bool =
  ## @brief Validate strict Unicode scalar UTF-8 without NUL.
  ## @param bytes Immutable bytes, borrowed until the pure check returns.
  ## @return True only for canonical scalar sequences, including empty text.
  var remaining, scalar, minimum: uint32
  for value in bytes:
    if remaining == 0:
      if value == 0:
        return false
      if value < 128:
        continue
      if value >= 194 and value <= 223:
        remaining = 1
        scalar = uint32(value and 31)
        minimum = 128
      elif value >= 224 and value <= 239:
        remaining = 2
        scalar = uint32(value and 15)
        minimum = 2048
      elif value >= 240 and value <= 244:
        remaining = 3
        scalar = uint32(value and 7)
        minimum = 65536
      else:
        return false
    else:
      if (value and 192) != 128:
        return false
      scalar = (scalar shl 6) or uint32(value and 63)
      dec remaining
      if remaining == 0 and (scalar < minimum or scalar > 0x10ffff or
          (scalar >= 0xd800 and scalar <= 0xdfff)):
        return false
  remaining == 0

template rawText[N: static[int]; Raw: static[bool]](value: NativeText[N, Raw]): bool =
  ## @brief Read the concrete string domain. @param value Owned finite text.
  ## @return The compile-time original raw-byte-domain selection.
  Raw

proc field*[T](cursor: var Cursor; value: var T) =
  ## @brief Traverse a complete native field recursively in declaration order.
  ## @param cursor Exclusive borrowed cursor and original canonical status.
  ## @param value Complete owned field with finite active container counts.
  ## @return Void; inspect cursor.code before using any decoded output or prefix.
  mixin validate
  if cursor.code != 0:
    return
  when T is bool:
    var raw = byte(ord(value))
    field(cursor, raw)
    if raw > 1:
      cursor.code = 22
    value = raw != 0
  elif T is SomeInteger:
    if cursor.at > cursor.size or sizeof(T) > cursor.size - cursor.at:
      cursor.code = 22
      return
    var bits: uint64
    if cursor.writing:
      bits = cast[uint64](value)
    for index in 0 ..< sizeof(T):
      if cursor.writing:
        cursor.bytes[cursor.at] = byte((bits shr (index * 8)) and 255)
      else:
        bits = bits or (uint64(cursor.bytes[cursor.at]) shl (index * 8))
      inc cursor.at
    if not cursor.writing:
      value = cast[T](bits)
  elif T is SomeFloat:
    when sizeof(T) == 4:
      var bits = cast[uint32](value)
      field(cursor, bits)
      value = cast[T](bits)
      if (bits and 0x7f800000'u32) == 0x7f800000'u32:
        cursor.code = 22
    else:
      var bits = cast[uint64](value)
      field(cursor, bits)
      value = cast[T](bits)
      if (bits and 0x7ff0000000000000'u64) == 0x7ff0000000000000'u64:
        cursor.code = 22
  elif T is array:
    for element in value.mitems:
      field(cursor, element)
  elif compiles(value.textBytes):
    field(cursor, value.textSize)
    if cursor.code != 0 or value.textSize > uint32(value.textBytes.len) or
        int(value.textSize) > cursor.size - cursor.at:
      cursor.code = 22
      return
    let count = int(value.textSize)
    if count != 0:
      when not rawText(value):
        let valid = if cursor.writing:
          utf8(value.textBytes.toOpenArray(0, count - 1))
        else:
          utf8(cursor.bytes.toOpenArray(cursor.at, cursor.at + count - 1))
        if not valid:
          cursor.code = 22
          return
      for index in 0 ..< count:
        if cursor.writing:
          cursor.bytes[cursor.at + index] = value.textBytes[index]
        else:
          value.textBytes[index] = cursor.bytes[cursor.at + index]
      cursor.at += count
  elif compiles(value.sequenceItems):
    field(cursor, value.sequenceSize)
    if cursor.code != 0 or value.sequenceSize > uint32(value.sequenceItems.len):
      cursor.code = 22
      return
    for index in 0 ..< int(value.sequenceSize):
      field(cursor, value.sequenceItems[index])
  elif T is object:
    for name, member in fieldPairs(value):
      field(cursor, member)
    when compiles(validate(value)):
      if cursor.code == 0:
        cursor.code = validate(value)
  else:
    {.error: "Canonical fields require finite complete native values".}

proc encode*[T](value: var T; output: var openArray[byte];
                maximum: int; written: var int): uint32 =
  ## @brief Encode all native fields into disjoint caller-owned canonical bytes.
  ## @param value Complete exclusive value; successful encoding preserves fields.
  ## @param output Stable exclusive writable bytes, borrowed until return.
  ## @param maximum Inclusive exact record wire ceiling from the selected catalog.
  ## @param written Complete initialized extent, valid only on success.
  ## @return Zero or canonical error 22; ignore any partial output on failure.
  written = 0
  let pointer = if output.len == 0: nil else:
    cast[ptr UncheckedArray[byte]](addr output[0])
  var cursor = Cursor(bytes: pointer, size: min(output.len, maximum), writing: true)
  field(cursor, value)
  if cursor.code != 0:
    return cursor.code
  written = cursor.at

proc decode*[T](bytes: openArray[byte]; minimum, maximum: int;
                value: var T): uint32 =
  ## @brief Decode all fields before publishing an independent complete value.
  ## @param bytes Complete immutable canonical input; no reference escapes return.
  ## @param minimum Inclusive exact record lower wire bound.
  ## @param maximum Inclusive exact record upper wire bound.
  ## @param value Complete output; it remains unchanged on canonical rejection.
  ## @return Zero or canonical error 22, including truncation and trailing bytes.
  if bytes.len < minimum or bytes.len > maximum:
    return 22
  let pointer = if bytes.len == 0: nil else:
    cast[ptr UncheckedArray[byte]](unsafeAddr bytes[0])
  var cursor = Cursor(bytes: pointer, size: bytes.len)
  var candidate: T
  field(cursor, candidate)
  if cursor.code != 0:
    return cursor.code
  if cursor.at != bytes.len:
    return 22
  value = candidate
