# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
"""Interface to the Expat non-validating XML parser."""
import sys

from pyexpat import *

# provide pyexpat submodules as xml.parsers.expat submodules
sys.modules['xml.parsers.expat.model'] = model
sys.modules['xml.parsers.expat.errors'] = errors
