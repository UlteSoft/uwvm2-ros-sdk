#!/usr/bin/env python3
"""@brief Attach complete ownership and error contracts to NVIDIA type sources.
@details This platform-owned documentation transform delegates all schema and
codec semantics to the single shared generator. It never compiles guest code.
"""
import re

contracts = {   'valid': [   '@brief Validate every initialized field without allocation or ROS effects.',
                 '@param value Caller-owned complete record; a null pointer is refused.',
                 '@return One when every field satisfies its canonical bounds, otherwise zero.'],
    'wire_size': [   '@brief Measure the exact complete canonical body in bytes.',
                     '@param value Caller-owned record already accepted by the matching validator.',
                     '@return Exact active-field size; inline capacity is never emitted as '
                     'payload.',
                     '@pre The complete record has passed its matching valid function.'],
    'encode': [   '@brief Encode a complete value transactionally into caller-owned bytes.',
                  '@details Validation and exact size checks precede every write. The record,',
                  'output buffer and length result must occupy disjoint live storage.',
                  '@param value Complete initialized source record, retained by the caller.',
                  '@param output Writable capacity-byte buffer; null is valid only for an empty '
                  'body.',
                  '@param capacity Number of writable bytes, never a message element count.',
                  '@param length Writable exact-length result; unchanged when encoding is refused.',
                  '@return Zero on success, 22 for invalid values/storage or 90 for insufficient '
                  'capacity.'],
    'decode': [   '@brief Decode an exact complete body before committing the destination.',
                  '@details Truncation, trailing bytes, nonfinite numbers, malformed UTF-8 and',
                  'quota violations are refused. No output prefix commits on failure.',
                  '@param input Read-only length-byte canonical body, disjoint from the result.',
                  '@param length Exact available byte extent; no native struct layout is accepted.',
                  '@param value Initialized caller-owned destination, unchanged on refusal.',
                  '@return Zero on success or 22 for malformed bytes, invalid storage or bounds.'],
    'write_fields': [   '@brief Write validated fields into the encoder-owned checked cursor.',
                        '@param value Complete initialized record already validated by the '
                        'encoder.',
                        '@param p Writable buffer covering the premeasured complete body.',
                        '@param offset Encoder-owned cursor in bytes; advanced by the exact body '
                        'extent.',
                        '@pre Capacity and every source/output overlap have already been checked.'],
    'read_fields': [   '@brief Read every field into a private decoder temporary with checked '
                       'bounds.',
                       '@param p Read-only n-byte canonical buffer retained by the caller.',
                       '@param n Exact input extent in bytes.',
                       '@param offset Decoder-owned checked byte cursor; advanced only within n.',
                       '@param value Private temporary; a failed read must never publish this '
                       'value.',
                       '@return One for a complete valid component or zero on malformed input.']}

def decorate(body, language):
    """@brief Describe pure codec effects while retaining the complete source body.
    @param body Complete trusted shared-generator output.
    @param language Stable source-language route identifier.
    @return Source with English API contracts; no field or executable expression changes.
    """
    if language == "c":
        pattern = r'/\*\*[^*]*(?:\*(?!/)[^*]*)*\*/\s*(?=static inline [^\n]*?\b(roswasmc_bounded_[A-Za-z0-9_]+)\s*\()'
        def replace(match):
            name = match.group(1)
            suffix = next((key for key in contracts if name.endswith("_" + key)), None)
            return "/**\n * " + "\n * ".join(contracts[suffix]) + "\n */\n" if suffix else match.group()
        body = re.sub(pattern, replace, body)
    if language == "cpp":
        for operation, comment in {
            "encode": (
                '/** @brief Encode a complete typed value before committing owned output.\n'
                ' * @param value Complete caller-owned record; every active field is validated.\n'
                ' * @param out Caller-owned bytes, unchanged if value/framing validation fails.\n'
                ' * @return True only for a complete body, otherwise false. Allocation follows\n'
                ' * the selected real C++ runtime profile; encoding grants no ROS authority.\n'
                ' */\n'
            ),
            "decode": (
                '/** @brief Decode exact complete bytes transactionally through the typed facade.\n'
                ' * @param bytes Read-only span retaining the complete canonical body.\n'
                ' * @param out Initialized caller-owned record, unchanged for invalid input.\n'
                ' * @return True for a whole validated value, otherwise false; no partial fields commit.\n'
                ' */\n'
            )
        }.items():
            body = body.replace("  static bool " + operation + "(", "  " + comment + "  static bool " + operation + "(")
    return re.sub(r'/\*\* (?!@)([^\n])', r'/** @brief \1', body)


def readable_lines(body, language, limit=120):
    """@brief Wrap generated comments and long expressions at lexical boundaries.
    @details This formatting pass preserves all non-whitespace source tokens.
    Strings and character literals are never split. Languages with automatic
    semicolons only wrap after continuation punctuation or binary operators.
    It is source maintenance; genuine frontend acceptance remains independent.
    """
    import textwrap
    if language not in ("haskell", "odin", "zig", "d", "nim", "go", "tinygo", "moonbit"):
        return body
    output = []
    for original in body.splitlines():
        indent = original[:len(original) - len(original.lstrip())]
        stripped = original.lstrip()
        if stripped.startswith(("//go:", "// +build", "//+build", "//export ", "//line ", "#+build")):
            output.append(original)
            continue
        comment = next((marker for marker in ("///", "//", "--", "##", "#")
                        if stripped.startswith(marker)), None)
        if comment:
            output.extend(textwrap.wrap(stripped[len(comment):].strip(), width=limit,
                initial_indent=indent + comment + " ", subsequent_indent=indent + comment + " ",
                break_long_words=False, break_on_hyphens=False) or [indent + comment])
            continue
        remaining = original
        continuation = indent + "    "
        while len(remaining) > limit:
            positions = []
            quote = None
            escaped = False
            for index, character in enumerate(remaining):
                if quote:
                    if escaped:
                        escaped = False
                    elif character == "\\":
                        escaped = True
                    elif character == quote:
                        quote = None
                    continue
                if character in ('"', "'"):
                    if character == '"' or index == 0 or not remaining[index-1].isalnum():
                        quote = character
                    continue
                if character.isspace() and index > len(continuation):
                    prefix = remaining[:index].rstrip()
                    safe = language == "haskell" or prefix.endswith(("(", ",", "=", "&&", "||", "->", "::"))
                    if safe:
                        positions.append(index)
                elif character in "(," and index > len(continuation):
                    positions.append(index + 1)
            choices = [position for position in positions if position <= limit]
            if not choices:
                break
            split = choices[-1]
            output.append(remaining[:split].rstrip())
            remaining = continuation + remaining[split:].lstrip()
        output.append(remaining)
    return "\n".join(output) + "\n"
