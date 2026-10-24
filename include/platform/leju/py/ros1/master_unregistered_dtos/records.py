"""@file records.py
@brief All original records, complete fields, defaults and canonical identities.
@details These owning classes use the one shared genuine Python codec.
"""
from ros.py.wire import Record, Registry

REGISTRY = Registry()

@REGISTRY.add
class Ros1Kuavo_sdkQv(Record):
    """@brief Complete kuavo_sdk/qv with all original native members."""
    __slots__ = ('value',)
    SCHEMA = {'minimum': 4,
     'maximum': 132,
     'semantics': '',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32',
     'type': 'kuavo_sdk/qv',
     'ros_version': 1,
     'fields': [{'name': 'value',
                 'type': 'float64',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None,
                 'element_minimum': 8}]}

@REGISTRY.add
class Ros1Kuavo_sdkFullBodyTargetTrajectories(Record):
    """@brief Complete kuavo_sdk/fullBodyTargetTrajectories with all original native members."""
    __slots__ = ('timeTrajectory', 'footIndexTrajectory', 'fullBodyQTrajectory', 'fullBodyVTrajectory')
    SCHEMA = {'minimum': 16,
     'maximum': 2320,
     'semantics': '',
     'native_identity': None,
     'codec_identity': 'UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32',
     'type': 'kuavo_sdk/fullBodyTargetTrajectories',
     'ros_version': 1,
     'fields': [{'name': 'timeTrajectory',
                 'type': 'float64',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None,
                 'element_minimum': 8},
                {'name': 'footIndexTrajectory',
                 'type': 'int32',
                 'array': 'sequence',
                 'count': 16,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None,
                 'element_minimum': 4},
                {'name': 'fullBodyQTrajectory',
                 'type': 'kuavo_sdk/qv',
                 'array': 'sequence',
                 'count': 8,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None,
                 'element_minimum': 4},
                {'name': 'fullBodyVTrajectory',
                 'type': 'kuavo_sdk/qv',
                 'array': 'sequence',
                 'count': 8,
                 'string_bound': 0,
                 'native_string_bound': 0,
                 'native_sequence_bound': 0,
                 'native_default': None,
                 'native_scalar': '',
                 'string_encoding': 'utf8',
                 'float_policy': 'finite',
                 'default': None,
                 'element_minimum': 4}]}

