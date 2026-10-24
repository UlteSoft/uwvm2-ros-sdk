"""@file __init__.py
@brief Represent the complete original ABB ROS 2 canonical value catalog.
@details The caller owns every record and its finite dynamic backing storage. Codecs retain all
fields, original constants and native defaults; field units and frames follow the retained
definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
native ROS objects; importing them grants no transport alias.

@brief Public installed abb Python namespace.
@details Module identity is independent of example directory depth.
"""
