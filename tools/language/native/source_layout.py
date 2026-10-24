"""@brief Source-only layout of known generated Haskell and Go productions."""

import re


def haskell(text):
    """Lay out complete scalar text constants without changing code points."""
    output = []
    for line in text.splitlines():
        if len(line) > 120 and " = T.pack [" in line and line.endswith("]"):
            declaration, values = line.split(" = T.pack [", 1)
            output.extend([declaration + " =", "    T.pack", "        [ " + values[:-1].split(", ")[0]])
            output.extend("        , " + value for value in values[:-1].split(", ")[1:])
            output.append("        ]")
        else:
            output.append(line)
    return "\n".join(output) + "\n"


def go(text):
    """Expand long typed service-handler declarations at grammar delimiters."""
    expression = re.compile(
        r"^func \(s \*(\w+)\) SpinOnce\(handler func\(uint64, (\w+)\) \((\w+), error\)\) error \{$",
        re.MULTILINE,
    )

    def replace(match):
        if len(match[0]) <= 120:
            return match[0]
        return (
            "func (s *" + match[1] + ") SpinOnce(\n"
            "    handler func(\n        uint64,\n        " + match[2] + ",\n"
            "    ) (\n        " + match[3] + ",\n        error,\n    ),\n) error {"
        )

    return expression.sub(replace, text)
