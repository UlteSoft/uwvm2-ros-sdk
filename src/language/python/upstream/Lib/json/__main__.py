# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Command-line tool to validate and pretty-print JSON

Usage::

    $ echo '{"json":"obj"}' | python -m json
    {
        "json": "obj"
    }
    $ echo '{ 1.2:3.4}' | python -m json
    Expecting property name enclosed in double quotes: line 1 column 3 (char 2)

"""
import json.tool


if __name__ == '__main__':
    try:
        json.tool.main()
    except BrokenPipeError as exc:
        raise SystemExit(exc.errno)
