"""@brief Validate every original typed import of complete genuine language engines.

@details The helper parses complete Wasm section extents, function types and
function imports. Each backend's complete bridge is compiled from source.
Imported tables, memories, globals and tags are refused by this engine profile.
"""

VALUE_TYPES = {0x7F: "i32", 0x7E: "i64", 0x7D: "f32", 0x7C: "f64", 0x7B: "v128", 0x70: "funcref", 0x6F: "externref"}


class Reader:
    """@brief Read finite Wasm bytes with explicit section bounds."""

    def __init__(self, data, start=0, end=None):
        """@brief Retain one bounded original section view.

        @param data Complete immutable Wasm byte string.
        @param start First admitted byte offset.
        @param end Exclusive section limit; None selects the complete input.
        """
        self.data = data
        self.position = start
        self.end = len(data) if end is None else end

    def take(self, count):
        """@brief Consume exactly a finite number of admitted bytes.

        @param count Nonnegative complete field width.
        @return Original bytes, or ValueError on a truncated field.
        """
        if count < 0 or count > self.end - self.position:
            raise ValueError("Truncated Wasm field")
        result = self.data[self.position : self.position + count]
        self.position += count
        return result

    def byte(self):
        """@brief Read one admitted byte.

        @return Integer byte value, or ValueError on truncation.
        """
        return self.take(1)[0]

    def u32(self):
        """@brief Decode one bounded unsigned 32-bit LEB field.

        @return Complete unsigned value, or ValueError on overflow or truncation.
        """
        value = 0
        for index in range(5):
            byte = self.byte()
            if index == 4 and byte & 0xF0:
                raise ValueError("An unsigned Wasm field exceeds 32 bits")
            value |= (byte & 127) << (index * 7)
            if not byte & 128:
                return value
        raise ValueError("Unterminated Wasm integer")

    def name(self):
        """@brief Read a complete UTF-8 name and its exact original byte span.

        @return Decoded name and inclusive/exclusive payload offsets.
        """
        count = self.u32()
        start = self.position
        return self.take(count).decode("utf-8", "strict"), start, self.position

    def vector(self):
        """@brief Read a complete finite plain function value-type vector.

        @return Type names in original order, or ValueError for unsupported types.
        """
        count = self.u32()
        if count > self.end - self.position:
            raise ValueError("Truncated function type vector")
        try:
            return [VALUE_TYPES[self.byte()] for _ in range(count)]
        except KeyError as error:
            raise ValueError("This interpreter profile requires plain function value types") from error


def memory_profile(data):
    """@brief Read the actual defined memory width without guessing from a filename.

    @param data Complete standalone core Wasm module.
    @return Exact address bits, sharing and page limits from section five.
    @details SDK engine maxima are bounded below 2^32 pages, so both memory32
    and memory64 page counts use the same admitted finite LEB representation.
    """
    if data[:8] != b"\0asm\1\0\0\0":
        raise ValueError("A complete core Wasm command is required")
    reader = Reader(data, 8)
    found = None
    tables = []
    while reader.position < reader.end:
        kind, size = reader.byte(), reader.u32()
        start = reader.position
        reader.take(size)
        if kind == 4:
            table = Reader(data, start, start + size)
            for _ in range(table.u32()):
                if table.byte() != 0x70:
                    raise ValueError("Engine tables must use ordinary function references")
                table_flags = table.u32()
                if table_flags not in (0, 1, 4, 5):
                    raise ValueError("Shared tables are outside the single-threaded profile")
                minimum = table.u32()
                maximum = table.u32() if table_flags & 1 else None
                tables.append({"address_bits": 64 if table_flags & 4 else 32,
                               "minimum": minimum, "maximum": maximum})
            if table.position != table.end:
                raise ValueError("The complete engine table section is malformed")
        if kind != 5:
            continue
        if found is not None:
            raise ValueError("The memory section must not be repeated")
        memory = Reader(data, start, start + size)
        if memory.u32() != 1:
            raise ValueError("Exactly one engine linear memory is required")
        flags = memory.u32()
        if flags not in (1, 5):
            raise ValueError("An explicit maximum and an unshared memory are required")
        minimum, maximum = memory.u32(), memory.u32()
        if memory.position != memory.end or minimum > maximum:
            raise ValueError("The complete finite memory section is malformed")
        found = {"address_bits": 64 if flags & 4 else 32, "shared": False,
                 "minimum_pages": minimum, "maximum_pages": maximum}
    if found is None:
        raise ValueError("A standalone interpreter must define its linear memory")
    found["tables"] = tables
    return found


def parse(data, *, expected_maximum_pages=4096, address_bits=32):
    """@brief Parse complete original section extents and every typed function import.

    @param data Complete original version-one Wasm bytes.
    @param expected_maximum_pages Explicit qualified memory32 limit, either 4096 or 16384 pages.
    @return Original import records and complete section extents.
    """
    if type(expected_maximum_pages) is not int or expected_maximum_pages not in (4096, 16384):
        raise ValueError("The engine requires an explicit qualified 4096-page or 16384-page memory32 profile")
    if data[:8] != b"\x00asm\x01\x00\x00\x00":
        raise ValueError("A complete version-one Wasm module is required")
    reader = Reader(data, 8)
    sections = []
    payloads = {}
    while reader.position < reader.end:
        section_start = reader.position
        kind = reader.byte()
        size = reader.u32()
        start = reader.position
        reader.take(size)
        sections.append({"id": kind, "start": section_start, "payload_start": start, "end": reader.position})
        if kind:
            if kind in payloads:
                raise ValueError("A standard Wasm section is repeated")
            payloads[kind] = (start, reader.position)
    if 1 not in payloads or 2 not in payloads:
        raise ValueError("The interpreter requires explicit type and import sections")
    if 13 in payloads or 5 not in payloads:
        raise ValueError("This no-EH standalone profile requires its own wasm32 memory")
    memory = memory_profile(data)
    if address_bits not in (32, 64) or memory["address_bits"] != address_bits:
        raise ValueError("The actual module memory width differs from the requested target")
    if memory["maximum_pages"] != expected_maximum_pages:
        raise ValueError("This engine requires its explicit finite memory limit")
    if 4 in payloads:
        table = Reader(data, *payloads[4])
        for _ in range(table.u32()):
            if table.byte() != 0x70:
                raise ValueError("This profile requires ordinary function-reference tables")
            flags = table.u32()
            if flags not in ((0, 1, 4, 5) if address_bits == 64 else (0, 1)):
                raise ValueError("Shared storage or a table width inconsistent with the target is outside this profile")
            table.u32()
            if flags & 1:
                table.u32()
        if table.position != table.end:
            raise ValueError("Unexpected trailing table-section bytes")
    types = []
    reader = Reader(data, *payloads[1])
    for _ in range(reader.u32()):
        if reader.byte() != 0x60:
            raise ValueError("This interpreter profile requires ordinary function types")
        types.append({"params": reader.vector(), "results": reader.vector()})
    if reader.position != reader.end:
        raise ValueError("Unexpected trailing type-section bytes")
    reader = Reader(data, *payloads[2])
    imports = []
    for _ in range(reader.u32()):
        module, start, end = reader.name()
        name, _, _ = reader.name()
        if reader.byte() != 0:
            raise ValueError("Imported state or tags are outside this standalone engine profile")
        index = reader.u32()
        if index >= len(types):
            raise ValueError("An imported function references a missing type")
        imports.append({"module": module, "name": name, **types[index], "module_span": [start, end]})
    if reader.position != reader.end:
        raise ValueError("Unexpected trailing import-section bytes")
    return imports, sections


def validate(data, descriptor, backend, *, expected_maximum_pages=4096, address_bits=32):
    """@brief Match all38 ROS1 or43 ROS2 imports to the exact original ABI descriptor.

    @param data Complete candidate standalone engine bytes.
    @param descriptor Exact retained descriptor containing 38 ROS1 and 43 ROS2 functions.
    @param backend Explicit requested ros1 or ros2 namespace.
    @param expected_maximum_pages Explicit qualified memory32 limit, either 4096 or 16384 pages.
    @return Complete typed original imports and section extents.
    """
    module = "uwvm_" + backend + "_v1"
    for family, expected in (("ros1", 38), ("ros2", 43)):
        catalog = descriptor["modules"]["uwvm_" + family + "_v1"]
        if catalog["function_count"] != expected or len(catalog["functions"]) != expected:
            raise ValueError("The exact full ROS ABI descriptor count changed")
    authority = {entry["name"]: entry for entry in descriptor["modules"][module]["functions"]}
    imports, sections = parse(data, expected_maximum_pages=expected_maximum_pages, address_bits=address_bits)
    observed = []
    for entry in imports:
        if entry["module"] == "wasi_snapshot_preview1":
            continue
        if entry["module"] != module or entry["name"] not in authority:
            raise ValueError("An unexpected interpreter import is present: " + entry["module"] + "/" + entry["name"])
        required = authority[entry["name"]]
        if (
            entry["params"] != [parameter["type"] for parameter in required["params"]]
            or entry["results"] != required["results"]
        ):
            raise ValueError("A real ROS import signature differs from the ABI descriptor")
        observed.append(entry["name"])
    if len(observed) != len(authority) or set(observed) != set(authority):
        raise ValueError("Every complete backend import must appear exactly once with its original signature")
    return imports, sections


