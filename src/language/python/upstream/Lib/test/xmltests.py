# @file
# @brief Preserve the genuine CPython 3.14.8 module.
# @details Original PSF source semantics and license are retained.
# Convenience test module to run all of the XML-related tests in the
# standard library.

import sys
import test.support

test.support.verbose = 0

def runtest(name):
    __import__(name)
    module = sys.modules[name]
    if hasattr(module, "test_main"):
        module.test_main()

runtest("test.test_minidom")
runtest("test.test_pyexpat")
runtest("test.test_sax")
runtest("test.test_xml_dom_minicompat")
runtest("test.test_xml_etree")
runtest("test.test_xml_etree_c")
runtest("test.test_xmlrpc")
