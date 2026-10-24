"""@brief Document complete generated record modules without changing their IR.

@details This source preparation adds language-appropriate module contracts and
marks existing semantic Doxygen summaries. It preserves every existing legal
notice, field spelling and code token. File-level documentation is separate
from compiler, guest, native-ROS and exhaustive member-documentation acceptance.
"""

import re
import textwrap


def annotate(text, language, platform, profile, filename):
    """@brief Explain one exact complete source profile and its ownership domain.

    @param text Actual emitted or retained source, including legal notices.
    @param language Real source-language identifier, never a fallback route.
    @param platform Public platform namespace.
    @param profile Exact source selector retained in the public file path.
    @param filename Original public source basename.
    @return Source with its module contract; no executable token is changed.
    """
    interface = "interfaces" in filename
    brief = ("Expose complete typed " if interface else "Preserve complete canonical ") + platform + " " + profile
    brief += " interfaces." if interface else " record values."
    details = (
        "Resource aliases and native identities require explicit paired deployment metadata. "
        "The caller retains same-instance ownership and selects permissions and deadlines. "
        "A codec identity cannot authorize a native operation."
        if interface
        else "Every original field, scalar width, finite container bound, constant and declared default belongs "
        "to this exact source profile. Canonical bytes are distinct from native object layouts and ROS serialization. "
        "Complete decoding rejects malformed or trailing bytes before exposing a value; source codecs grant no authority."
    )
    marker = "uwvm-complete-module-contract-v1"
    if marker in text:
        return text
    if language == "rs":
        prefix = "//!"
    elif language in ("go", "tinygo"):
        prefix = "//"
    else:
        prefix = None
    if prefix:
        lines = [prefix + " @file " + filename, prefix + " @brief " + brief]
        lines += textwrap.wrap(
            details,
            width=120,
            initial_indent=prefix + " @details ",
            subsequent_indent=prefix + " ",
            break_long_words=False,
            break_on_hyphens=False,
        )
        lines += [prefix + " " + marker, ""]
        header = "\n".join(lines) + "\n"
    else:
        lines = ["/** @file " + filename, " * @brief " + brief]
        lines += textwrap.wrap(
            details,
            width=120,
            initial_indent=" * @details ",
            subsequent_indent=" * ",
            break_long_words=False,
            break_on_hyphens=False,
        )
        header = "\n".join(lines + [" * " + marker, " */", ""])
    # Preserve Go's build-constraint group at the beginning of the source file.
    if language in ("go", "tinygo") and text.startswith(("//go:build", "// +build")):
        lines = text.splitlines(keepends=True)
        index = 0
        while index < len(lines) and (lines[index].startswith(("//go:build", "// +build")) or not lines[index].strip()):
            index += 1
        return "".join(lines[:index]) + header + "".join(lines[index:])
    # Keep existing meaningful generated summaries instead of replacing them
    # with a filename. Doxygen block comments retain all their original prose.
    if language in ("as", "js"):
        text = re.sub(r"/\*\* (?!@)([^\n]*?) \*/", r"/** @brief \1 */", text)
    return header + text
