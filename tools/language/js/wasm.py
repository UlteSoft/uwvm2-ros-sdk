"""@brief Validate every original typed import of complete genuine language engines.

@details The helper parses complete Wasm section extents, function types and
function imports. Each backend's complete bridge is compiled from source.
Imported tables, globals and tags are refused. A threaded engine may import
its one shared env.memory; all declarations must match its requested profile.
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

    def u64(self):
        """Decode the full memory64/table64 unsigned LEB range, including padding."""
        value = 0
        for index in range(10):
            byte = self.byte()
            if index == 9 and byte & 0xfe:
                raise ValueError("An unsigned Wasm field exceeds 64 bits")
            value |= (byte & 127) << (7 * index)
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


def memory_type(reader):
    """Read the explicitly bounded memory used by these interpreter builds."""
    flags = reader.u32()
    if flags not in (1, 3, 5, 7):
        raise ValueError("The engine requires an explicit memory maximum and known flags")
    pages = reader.u64 if flags & 4 else reader.u32
    minimum, maximum = pages(), pages()
    if minimum > maximum or maximum > (1 << (48 if flags & 4 else 16)):
        raise ValueError("Invalid linear-memory page limits")
    return dict(address_bits=64 if flags & 4 else 32, shared=bool(flags & 2),
                minimum_pages=minimum, maximum_pages=maximum)


def memory_profile(data):
    """Inspect one defined or explicitly imported engine memory and its tables."""
    if data[:8] != b"\0asm\1\0\0\0":
        raise ValueError("A complete core Wasm command is required")
    reader, memories, tables, seen = Reader(data, 8), [], [], set()
    while reader.position < reader.end:
        kind, size = reader.byte(), reader.u32()
        start = reader.position
        reader.take(size)
        if kind and kind in seen:
            raise ValueError("A standard Wasm section is repeated")
        seen.add(kind)
        section = Reader(data, start, start + size)
        if kind == 2:
            for _ in range(section.u32()):
                module, _, _ = section.name()
                name, _, _ = section.name()
                imported_kind = section.byte()
                if imported_kind == 0:
                    section.u32()
                elif imported_kind == 2 and (module, name) == ("env", "memory"):
                    entry = memory_type(section)
                    if not entry["shared"]:
                        raise ValueError("Only the threaded engine may import env.memory")
                    memories.append(dict(entry, imported=True))
                else:
                    raise ValueError("Unexpected imported engine state")
        elif kind == 4:
            for _ in range(section.u32()):
                if section.byte() != 0x70:
                    raise ValueError("Engine tables must use ordinary function references")
                flags = section.u32()
                if flags not in (0, 1, 4, 5):
                    raise ValueError("Shared engine tables are not supported")
                count = section.u64 if flags & 4 else section.u32
                minimum = count()
                maximum = count() if flags & 1 else None
                if maximum is not None and minimum > maximum:
                    raise ValueError("Invalid table limits")
                tables.append(dict(address_bits=64 if flags & 4 else 32,
                                   minimum=minimum, maximum=maximum))
        elif kind == 5:
            for _ in range(section.u32()):
                memories.append(dict(memory_type(section), imported=False))
        else:
            continue
        if section.position != section.end:
            raise ValueError("Unexpected trailing engine declaration bytes")
    if len(memories) != 1:
        raise ValueError("Exactly one engine linear memory is required")
    return dict(memories[0], tables=tables)


def parse(data, *, expected_maximum_pages=4096, address_bits=32, shared=False, exceptions=False):
    """@brief Parse complete original section extents and every typed function import.

    @param data Complete original version-one Wasm bytes.
    @param expected_maximum_pages Explicit maximum page count of the selected engine profile.
    @return Original import records and complete section extents.
    """
    if type(expected_maximum_pages) is not int or expected_maximum_pages <= 0:
        raise ValueError("The engine requires an explicit positive memory maximum")
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
    if 13 in payloads and not exceptions:
        raise ValueError("A no-EH engine cannot declare exception tags")
    memory = memory_profile(data)
    if type(shared) is not bool or memory["shared"] != shared:
        raise ValueError("The actual memory sharing differs from the requested thread profile")
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
            count = table.u64 if flags & 4 else table.u32
            count()
            if flags & 1:
                count()
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
        kind = reader.byte()
        if kind == 2 and shared and (module, name) == ("env", "memory"):
            memory_type(reader)
            continue
        if kind != 0:
            raise ValueError("Imported state or tags are outside this engine profile")
        index = reader.u32()
        if index >= len(types):
            raise ValueError("An imported function references a missing type")
        imports.append({"module": module, "name": name, **types[index], "module_span": [start, end]})
    if reader.position != reader.end:
        raise ValueError("Unexpected trailing import-section bytes")
    return imports, sections


def validate(data, descriptor, backend, *, expected_maximum_pages=4096, address_bits=32, shared=False, exceptions=False):
    """@brief Match all38 ROS1 or43 ROS2 imports to the exact original ABI descriptor.

    @param data Complete candidate standalone engine bytes.
    @param descriptor Exact retained descriptor containing 38 ROS1 and 43 ROS2 functions.
    @param backend Explicit requested ros1 or ros2 namespace.
    @param expected_maximum_pages Explicit maximum page count of the selected engine profile.
    @return Complete typed original imports and section extents.
    """
    module = "uwvm_" + backend + "_v1"
    for family, expected in (("ros1", 38), ("ros2", 43)):
        catalog = descriptor["modules"]["uwvm_" + family + "_v1"]
        if catalog["function_count"] != expected or len(catalog["functions"]) != expected:
            raise ValueError("The exact full ROS ABI descriptor count changed")
    authority = {entry["name"]: entry for entry in descriptor["modules"][module]["functions"]}
    imports, sections = parse(data, expected_maximum_pages=expected_maximum_pages, address_bits=address_bits, shared=shared, exceptions=exceptions)
    observed = []
    for entry in imports:
        if entry["module"] == "wasi_snapshot_preview1":
            continue
        if shared and entry["module"] == "wasi" and entry["name"] == "thread-spawn":
            if entry["params"] != ["i32"] or entry["results"] != ["i32"]:
                raise ValueError("The WASIp1 thread-spawn signature differs from its ABI")
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


