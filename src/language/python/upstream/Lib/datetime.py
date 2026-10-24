# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Specific date/time and related types.

See https://data.iana.org/time-zones/tz-link.html for
time zone and DST data sources.
"""

try:
    from _datetime import *
except ImportError:
    from _pydatetime import *

__all__ = ("date", "datetime", "time", "timedelta", "timezone", "tzinfo",
           "MINYEAR", "MAXYEAR", "UTC")
