# @file embedded_wasm.py
# @brief Provide the complete shared language embedded_wasm.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
"""@brief Validate every typed canonical import of a complete standalone engine.

@details The helper parses complete Wasm section extents, function types and
function imports. A separately requested legacy utility can derive the historical
eight-import subset; that result never qualifies as a complete backend.
Imported tables, memories, globals and tags are refused by this engine profile.
"""

import hashlib

VALUE_TYPES = {0x7F: "i32", 0x7E: "i64", 0x7D: "f32", 0x7C: "f64", 0x7B: "v128", 0x70: "funcref", 0x6F: "externref"}
ROS_NAMES = {
    "abi_version",
    "capability_open",
    "capability_close",
    "capability_revoke",
    "topic_subscribe",
    "topic_publish",
    "event_poll",
    "service_call",
}


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


def parse(data, *, expected_maximum_pages=4096):
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
    memory = Reader(data, *payloads[5])
    if memory.u32() != 1 or memory.u32() != 1:
        raise ValueError("Exactly one unshared wasm32 memory with an explicit maximum is required")
    minimum, maximum = memory.u32(), memory.u32()
    if maximum != expected_maximum_pages or minimum > maximum or memory.position != memory.end:
        raise ValueError("This engine requires its explicit qualified memory32 limit")
    if 4 in payloads:
        table = Reader(data, *payloads[4])
        for _ in range(table.u32()):
            if table.byte() != 0x70:
                raise ValueError("This profile requires ordinary function-reference tables")
            flags = table.u32()
            if flags not in (0, 1):
                raise ValueError("Shared or table64 storage is outside this profile")
            table.u32()
            if flags:
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


def validate(data, descriptor, backend, *, expected_maximum_pages=4096, legacy_subset=False):
    """@brief Match every selected backend import to the canonical shared ABI.

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
    required_names = ROS_NAMES if legacy_subset else set(authority)
    imports, sections = parse(data, expected_maximum_pages=expected_maximum_pages)
    observed = []
    for entry in imports:
        if entry["module"] == "wasi_snapshot_preview1":
            continue
        if entry["module"] != module or entry["name"] not in required_names:
            raise ValueError("An unexpected interpreter import is present: " + entry["module"] + "/" + entry["name"])
        required = authority[entry["name"]]
        if (
            entry["params"] != [parameter["type"] for parameter in required["params"]]
            or entry["results"] != required["results"]
        ):
            raise ValueError("A real ROS import signature differs from the ABI descriptor")
        observed.append(entry["name"])
    if len(observed) != len(required_names) or set(observed) != required_names:
        raise ValueError("The exact complete typed ROS import set is required" if not legacy_subset else
            "Exactly the historical eight-import subset is required for this legacy derivation")
    return imports, sections


def derive_ros1(data, descriptor, expected_sha256, *, expected_maximum_pages=4096):
    """@brief Derive ROS1 by changing only eight verified same-length module-name spans.

    @param data Complete original ROS2 standalone engine bytes.
    @param descriptor Exact retained full ABI descriptor for both backends.
    @param expected_sha256 Explicit admitted source engine identity.
    @param expected_maximum_pages Explicit qualified memory32 limit, either 4096 or 16384 pages.
    @return Complete ROS1 bytes and a precise typed byte-derivation receipt.
    """
    if hashlib.sha256(data).hexdigest() != expected_sha256:
        raise ValueError("The admitted ROS2 engine identity changed before derivation")
    imports, sections = validate(data, descriptor, "ros2", expected_maximum_pages=expected_maximum_pages, legacy_subset=True)
    result = bytearray(data)
    changed = []
    for entry in imports:
        if entry["module"] != "uwvm_ros2_v1":
            continue
        start, end = entry["module_span"]
        replacement = b"uwvm_ros1_v1"
        if end - start != len(replacement):
            raise ValueError("ROS namespace derivation must preserve every section extent")
        result[start:end] = replacement
        changed.append(
            {"name": entry["name"], "start": start, "end": end, "params": entry["params"], "results": entry["results"]}
        )
    output = bytes(result)
    derived_imports, derived_sections = validate(
        output, descriptor, "ros1", expected_maximum_pages=expected_maximum_pages, legacy_subset=True
    )
    if len(data) != len(output) or derived_sections != sections:
        raise ValueError("The typed ROS derivation changed a section extent")
    allowed = {offset for item in changed for offset in range(item["start"], item["end"])}
    if any(left != right and index not in allowed for index, (left, right) in enumerate(zip(data, output))):
        raise ValueError("The typed ROS derivation changed an unrelated byte")
    return output, {
        "status": "PASS",
        "source_sha256": expected_sha256,
        "derived_sha256": hashlib.sha256(output).hexdigest(),
        "bytes": len(output),
        "changed_module_name_spans": changed,
        "all_section_extents_unchanged": True,
        "every_unrelated_byte_unchanged": True,
        "ros1_imports": derived_imports,
    }
