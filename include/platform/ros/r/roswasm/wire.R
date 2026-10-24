#' @brief Construct the local complete canonical R wire toolkit.
#' @details R reserves native INT32_MIN for NA, so canonical integers up to32
#' bits use exact integral numeric values and64-bit fields use eight raw bytes.
#' The returned functions perform synchronous local conversion with no ROS
#' import, filesystem/socket access, clock, worker, finalizer or permission grant.
#' Requires actual base-R raw/IEEE packing/UTF-8 behavior in the admitted runtime.
#' Callers own ordinary R values and keep mutable environments stable per call.
#' @return Named list containing records, word64, from_decimal and to_decimal.
#' Creating the toolkit opens no resource and needs no explicit disposal.
#' @see roswasm_wire
roswasm_wire <- function() {
  need <- function(ok, message) if (!isTRUE(ok)) stop(message, call. = FALSE)
  #' @brief Wrap exactly eight little-endian raw bytes as a typed64-bit value.
  #' @details Preserves all bits without converting through an R double. The
  #' class marker distinguishes ros_int64 from ros_uint64 and is not a protected
  #' native handle/type identity. Ordinary R copy-on-modify semantics apply;
  #' caller-added class attributes are not a security boundary. No I/O occurs.
  #' @param bytes [in] Raw vector of exactly8 bytes, low byte first.
  #' @param signed [in] Use scalar FALSE for uint64 or TRUE for two's-complement
  #' int64; ordinary R if coercion applies rather than strict logical validation.
  #' @return Typed raw vector retaining all64 bits; allocation may fail.
  #' @details Invalid bytes stop with an R error; an invalid selector may raise
  #' the ordinary R condition/coercion error. No numeric range is lost.
  #' @see from_decimal
  word64 <- function(bytes, signed = FALSE) {
    need(is.raw(bytes) && length(bytes) == 8L, "exact eight-byte LE word required")
    structure(as.raw(bytes), class = if (signed) "ros_int64" else "ros_uint64")
  }
  negate <- function(bytes) {
    result <- 255L - as.integer(bytes)
    carry <- 1L
    for (i in seq_len(8L)) {
      value <- result[i] + carry
      result[i] <- value %% 256L
      carry <- value %/% 256L
    }
    as.raw(result)
  }
  #' @brief Parse an exact canonical decimal into a typed eight-byte word.
  #' @details Uses bounded byte arithmetic, never an inexact double conversion.
  #' Rejects leading plus/zeros, whitespace, negative zero and values outside
  #' uint64 or int64. Errors stop locally; no partial word or native effect is
  #' exposed. Synchronous conversion allocates ordinary R values only.
  #' @param text [in] One non-NA character value, at most21 bytes, canonical
  #' decimal spelling. Unsigned range0..18446744073709551615; signed range
  #' -9223372036854775808..9223372036854775807.
  #' @param signed [in] Scalar FALSE for unsigned or TRUE for signed interpretation;
  #' use logical values, since this helper does not strictly validate the selector.
  #' @return New ros_uint64/ros_int64 raw word; allocation/validation may error.
  #' @see to_decimal
  from_decimal <- function(text, signed = FALSE) {
    need(is.character(text) && length(text) == 1L && !is.na(text) &&
         grepl("^-?(0|[1-9][0-9]*)$", text) && nchar(text, type = "bytes") <= 21L,
         "canonical exact integer decimal text required")
    negative <- startsWith(text, "-")
    need(!negative || (signed && text != "-0"), "unsigned/negative-zero decimal refused")
    if (negative) text <- substring(text, 2L)
    result <- integer(8L)
    for (digit in utf8ToInt(text) - 48L) {
      carry <- digit
      for (i in seq_len(8L)) {
        value <- result[i] * 10L + carry
        result[i] <- value %% 256L
        carry <- value %/% 256L
      }
      need(carry == 0L, "integer exceeds uint64")
    }
    if (signed) {
      need(result[8L] < 128L || (negative && result[8L] == 128L && all(result[1:7] == 0L)),
           "integer exceeds signed int64")
    }
    word64(if (negative) negate(as.raw(result)) else as.raw(result), signed)
  }
  #' @brief Render every bit of a typed64-bit raw word as exact decimal text.
  #' @details Requires eight raw bytes and a recognized class marker. If both
  #' markers are supplied, ros_int64 classification selects signed high-bit
  #' interpretation. Decimal arithmetic does not narrow through a double or
  #' mutate input; caller-forged markers remain caller data, not native authority.
  #' @param value [in] Complete ros_int64 or ros_uint64 raw vector of length8.
  #' @return One canonical decimal string, including minus only for negative
  #' signed values. Invalid type/extent/class stops with an R error.
  #' @see word64
  to_decimal <- function(value) {
    need(is.raw(value) && length(value) == 8L &&
         (inherits(value, "ros_int64") || inherits(value, "ros_uint64")), "typed 64-bit word required")
    negative <- inherits(value, "ros_int64") && as.integer(value[8L]) >= 128L
    bytes <- if (negative) negate(value) else value
    digits <- 0L
    for (i in 8:1) {
      carry <- as.integer(bytes[i])
      for (j in seq_along(digits)) {
        part <- digits[j] * 256L + carry
        digits[j] <- part %% 10L
        carry <- part %/% 10L
      }
      while (carry > 0L) {
        digits <- c(digits, carry %% 10L)
        carry <- carry %/% 10L
      }
    }
    paste0(if (negative) "-" else "", paste0(rev(digits), collapse = ""))
  }
  integral <- function(value, low, high) {
    need(is.numeric(value) && length(value) == 1L && !is.na(value) && is.finite(value) &&
         value == floor(value) && value >= low && value <= high, "exact integral scalar range required")
    as.double(value)
  }
  widths <- c(bool = 1L, uint8 = 1L, int8 = 1L, uint16 = 2L, int16 = 2L,
              uint32 = 4L, int32 = 4L, uint64 = 8L, int64 = 8L, float32 = 4L, float64 = 8L)
  append <- function(writer, bytes) {
    need(is.raw(bytes) && length(bytes) <= length(writer$bytes) - writer$position, "canonical output byte bound")
    if (length(bytes)) writer$bytes[writer$position + seq_along(bytes)] <- bytes
    writer$position <- writer$position + length(bytes)
  }
  integer_bytes <- function(value, width, signed) {
    bound <- 2 ^ (8L * width)
    number <- integral(value, if (signed) -bound / 2 else 0, if (signed) bound / 2 - 1 else bound - 1)
    if (number < 0) number <- number + bound
    as.raw(floor(number / 256 ^ (seq_len(width) - 1L)) %% 256)
  }
  take <- function(reader, count) {
    integral(count, 0, length(reader$bytes) - reader$position)
    result <- if (count) reader$bytes[reader$position + seq_len(count)] else raw()
    reader$position <- reader$position + count
    result
  }
  unsigned32 <- function(bytes) sum(as.double(bytes) * 256 ^ (seq_along(bytes) - 1L))
  count <- function(reader, maximum, minimum) {
    value <- unsigned32(take(reader, 4L))
    need(value <= maximum && (minimum == 0L || value <= floor((length(reader$bytes) - reader$position) / minimum)),
         "sequence count/remaining extent")
    as.integer(value)
  }
  text_bytes <- function(value, maximum, raw_domain) {
    if (raw_domain) {
      need(is.raw(value) && length(value) <= maximum, "bounded raw byte string required")
      return(value)
    }
    need(is.character(value) && length(value) == 1L && !is.na(value) && Encoding(value) != "bytes",
         "one Unicode string required")
    result <- charToRaw(enc2utf8(value))
    need(length(result) <= maximum && !any(result == as.raw(0L)) && validUTF8(rawToChar(result)),
         "bounded strict UTF-8 without NUL required")
    result
  }
  semantics <- function(schema, value) {
    rule <- schema$semantics
    if (rule %in% c("normalized-time", "normalized-duration")) {
      integral(value[[if (schema$ros_version == 2L) "nanosec" else "nsec"]], 0, 999999999)
    } else if (rule == "joint-state-optional-equal-length-arrays") {
      lengths <- vapply(value[c("name", "position", "velocity", "effort")], length, integer(1L))
      need(length(unique(lengths[lengths != 0L])) <= 1L, "nonempty JointState arrays must match")
    } else need(rule == "", "unknown complete-value semantic rule")
    invisible(NULL)
  }
  #' @brief Bind trusted complete IR schemas into symbol-keyed local codecs.
  #' @details Checks unique symbols/native field names and complete bounds
  #' 0..32768 bytes. This is not an untrusted-schema validator or native registry.
  #' Nested records must appear in dependency order. Each returned codec retains
  #' its schema/registry and exposes new, encode, decode and internal read, plus
  #' native_type/native_identity/codec_identity/constants/minimum_wire_bytes/
  #' maximum_wire_bytes. Metadata supplies no native compatibility or grant;
  #' absent native identity remains NULL and constants consume no wire bytes.
  #' @param schemas [in] Trusted generated ordered list of complete descriptors,
  #' all fields, finite scalar/string/array bounds, supported semantic rules,
  #' exact supplied identities/defaults/constants. Do not mutate during binding.
  #' @return Named list of complete codec lists; caller owns ordinary R values,
  #' while closures retain their registry for nested conversion. No disposal,
  #' background callback, I/O or ROS resource acquisition occurs. Invalid
  #' descriptors or allocation failures raise ordinary R errors.
  #' @see roswasm_wire
  records <- function(schemas) {
    registry <- new.env(parent = emptyenv())
    for (schema in schemas) local({
      schema <- schema
      symbol <- schema$symbol
      need(!exists(symbol, registry, inherits = FALSE) && schema$minimum >= 0L &&
           schema$maximum <= 32768L && schema$minimum <= schema$maximum, "unique resolved complete record required")
      fields <- schema$fields
      field_names <- vapply(fields, function(field) field$name, character(1L))
      need(!anyDuplicated(field_names), "unique native field names required")
      default_one <- function(field) {
        if (!is.null(field$default)) return(field$default)
        type <- field$type
        if (type == "bool") return(FALSE)
        if (type == "uint64" || type == "int64") return(word64(raw(8L), type == "int64"))
        if (type == "string") return(if (field$raw) raw() else "")
        if (type %in% names(widths)) return(0)
        get(type, registry, inherits = FALSE)$new()
      }
      #' @brief Construct complete fresh native defaults with optional field overrides.
      #' @details Defaults allocate independent lists/nested records; exact scalar
      #' defaults and raw words retain their declared bits. Overrides are assigned
      #' without full domain validation and follow ordinary R reference/copy-on-
      #' modify rules. A NULL override uses R's list deletion semantics and will
      #' fail later complete-value encoding. Unknown/duplicate names stop locally.
      #' @param values [in] Optional uniquely named list of native field overrides;
      #' default empty list. Borrowed synchronously; no ROS acquisition occurs.
      #' @return New symbol/ros_record-classed list. Encode performs full shape,
      #' scalar, byte and semantic checks; construction alone is not validation.
      #' @see encode
      new_value <- function(values = list()) {
        need(is.list(values) && (length(values) == 0L || !is.null(names(values))) &&
             !anyDuplicated(names(values)) && all(names(values) %in% field_names), "exact native field initializer required")
        parts <- lapply(fields, function(field) {
          if (field$array == "sequence") list()
          else if (field$array == "array") lapply(seq_len(field$count), function(i) default_one(field))
          else default_one(field)
        })
        names(parts) <- field_names
        for (name in names(values)) parts[[name]] <- values[[name]]
        structure(parts, class = c(symbol, "ros_record"))
      }
      write_one <- function(writer, field, value) {
        type <- field$type
        if (type == "string") {
          bytes <- text_bytes(value, field$string_bound, field$raw)
          append(writer, integer_bytes(length(bytes), 4L, FALSE)); append(writer, bytes)
        } else if (type == "bool") {
          need(is.logical(value) && length(value) == 1L && !is.na(value), "exact Bool required")
          append(writer, as.raw(if (value) 1L else 0L))
        } else if (type == "uint64" || type == "int64") {
          need(is.raw(value) && length(value) == 8L && inherits(value, if (type == "int64") "ros_int64" else "ros_uint64"), "exact typed 64-bit word required")
          append(writer, as.raw(value))
        } else if (type == "float32" || type == "float64") {
          need(is.numeric(value) && length(value) == 1L && !is.na(value) && is.finite(value), "finite floating scalar required")
          bytes <- writeBin(as.double(value), raw(), size = widths[[type]], endian = "little")
          need(is.finite(readBin(bytes, "double", n = 1L, size = widths[[type]], endian = "little")), "finite target-width scalar required")
          append(writer, bytes)
        } else if (type %in% names(widths)) append(writer, integer_bytes(value, widths[[type]], startsWith(type, "int")))
        else append(writer, get(type, registry, inherits = FALSE)$encode(value))
      }
      #' @brief Encode every native field of one complete classed value to LE raw.
      #' @details Requires the symbol class and exact ordered native names. Checks
      #' integral scalar widths, typed64-bit words, bool, finite target-width
      #' floats, UTF-8/NUL or raw-string domains, fixed/sequence list shapes,
      #' complete byte bounds and normalized time/JointState semantics. Errors
      #' discard private writer state and expose no partial output. No I/O,
      #' native grant, callback or replay occurs. Allocation can also fail.
      #' @param value [in] Complete borrowed record list; do not mutate during
      #' this synchronous call. R environments supplied as fields are not copies
      #' of valid record values and remain subject to canonical validation.
      #' @return New raw byte vector within minimum_wire_bytes..maximum_wire_bytes.
      #' @see decode
      encode <- function(value) {
        need(is.list(value) && inherits(value, symbol) && identical(as.character(names(value)), field_names), "exact complete generated value required")
        writer <- new.env(parent = emptyenv()); writer$bytes <- raw(schema$maximum); writer$position <- 0L
        for (field in fields) {
          part <- value[[field$name]]
          if (field$array != "") {
            need(is.list(part) && if (field$array == "array") length(part) == field$count else length(part) <= field$count,
                 "complete fixed/sequence list required")
            if (field$array == "sequence") append(writer, integer_bytes(length(part), 4L, FALSE))
            for (item in part) write_one(writer, field, item)
          } else write_one(writer, field, part)
        }
        semantics(schema, value)
        need(writer$position >= schema$minimum, "complete minimum wire extent")
        if (writer$position) writer$bytes[seq_len(writer$position)] else raw()
      }
      read_one <- function(reader, field) {
        type <- field$type
        if (type == "string") {
          bytes <- take(reader, count(reader, field$string_bound, 1L))
          if (field$raw) return(bytes)
          need(!any(bytes == as.raw(0L)), "NUL in custom UTF-8 string")
          value <- rawToChar(bytes); need(validUTF8(value), "invalid canonical UTF-8")
          Encoding(value) <- "UTF-8"; return(value)
        }
        if (type == "uint64" || type == "int64") return(word64(take(reader, 8L), type == "int64"))
        if (type == "bool") { value <- unsigned32(take(reader, 1L)); need(value <= 1, "canonical Bool0/1 required"); return(value == 1) }
        if (type == "float32" || type == "float64") {
          value <- readBin(take(reader, widths[[type]]), "double", n = 1L, size = widths[[type]], endian = "little")
          need(is.finite(value), "nonfinite canonical scalar"); return(value)
        }
        if (type %in% names(widths)) {
          value <- unsigned32(take(reader, widths[[type]]))
          bound <- 2 ^ (8L * widths[[type]])
          if (startsWith(type, "int") && value >= bound / 2) value <- value - bound
          return(value)
        }
        get(type, registry, inherits = FALSE)$read(reader)
      }
      #' @brief Read one complete nested record using an internal mutable cursor.
      #' @details Exposed only for registry composition; ordinary callers use
      #' decode. Advances reader$position as fields are consumed and validates
      #' nested extent/record semantics. On error the cursor may already have
      #' advanced: discard that reader, never treat this as rollback. No I/O or
      #' ROS resource is touched; caller-thread use requires exclusive cursor access.
      #' @param reader [in,out] Trusted internal environment with raw bytes and
      #' valid zero-based position created by decode/nested read, not arbitrary IR.
      #' @return New complete classed list on success; ordinary R errors on
      #' malformed input or allocation, with no partial value returned.
      #' @see decode
      read <- function(reader) {
        start <- reader$position; value <- new_value()
        for (field in fields) {
          part <- if (field$array == "") read_one(reader, field) else {
            n <- if (field$array == "array") field$count else count(reader, field$count, field$element_minimum)
            lapply(seq_len(n), function(i) read_one(reader, field))
          }
          value[[field$name]] <- part
        }
        need(reader$position - start >= schema$minimum && reader$position - start <= schema$maximum, "nested complete wire extent")
        semantics(schema, value); value
      }
      #' @brief Decode exactly one whole canonical raw byte vector into a record.
      #' @details Rejects truncation, forged counts, invalid widths/bool/UTF-8/
      #' finite floats, semantic violations and trailing input. The private
      #' cursor is discarded on error. Returned lists/raw words use ordinary
      #' owned R value semantics with no exposed native memory or resource.
      #' @param bytes [in] Raw vector within the codec's inclusive complete wire
      #' bounds; borrowed synchronously and not mutated. Not CDR/TCPROS bytes.
      #' @return New complete symbol/ros_record-classed list after full validation;
      #' validation/allocation errors stop locally and return no partial record.
      #' @see encode
      decode <- function(bytes) {
        need(is.raw(bytes) && length(bytes) >= schema$minimum && length(bytes) <= schema$maximum, "complete bounded wire required")
        reader <- new.env(parent = emptyenv()); reader$bytes <- as.raw(bytes); reader$position <- 0L
        value <- read(reader); need(reader$position == length(bytes), "trailing canonical bytes"); value
      }
      assign(symbol, list(new = new_value, encode = encode, decode = decode, read = read,
        native_type = schema$native_type, native_identity = schema$native_identity,
        codec_identity = schema$codec_identity, constants = schema$constants,
        minimum_wire_bytes = schema$minimum, maximum_wire_bytes = schema$maximum), registry)
    })
    as.list(registry, all.names = TRUE)
  }
  list(records = records, word64 = word64, from_decimal = from_decimal, to_decimal = to_decimal)
}
