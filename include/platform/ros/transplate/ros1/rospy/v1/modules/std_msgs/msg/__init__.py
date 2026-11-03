"""Selected ROS1 String/Bool source classes with complete canonical payloads.

These are guest values. The real native host independently verifies original
ROS type identity, MD5, message bounds and grants. They are not host genpy.
"""
from roswasm import codecs


class String:
    __slots__ = ("data",)
    _type = _ROSWASM_TYPE = "std_msgs/String"
    _md5sum = "992ce8a1687cec8c8bd883ec73ca41d1"
    _slot_types = ["string"]
    _has_header = False
    _connection_header = None

    def __init__(self, data=""):
        if not isinstance(data, str):
            raise TypeError("String.data must be str")
        self.data = data

    def __eq__(self, other):
        return isinstance(other, String) and self.data == other.data

    def __repr__(self):
        return "std_msgs.msg.String(data=" + repr(self.data) + ")"

    def serialize(self, stream):
        stream.write(self._encode(self))

    def deserialize(self, payload):
        self.data = codecs.String.decode(payload)
        return self

    @staticmethod
    def _encode(value):
        if not isinstance(value, String):
            raise TypeError("ROS1 String message required")
        return codecs.String.encode(value.data)

    @staticmethod
    def _decode(payload):
        return String(codecs.String.decode(payload))


class Bool:
    __slots__ = ("data",)
    _type = _ROSWASM_TYPE = "std_msgs/Bool"
    _md5sum = "8b94c1b53db61fb6aed406028ad6332a"
    _slot_types = ["bool"]
    _has_header = False
    _connection_header = None

    def __init__(self, data=False):
        if type(data) is not bool:
            raise TypeError("Bool.data must be bool")
        self.data = data

    def __eq__(self, other):
        return isinstance(other, Bool) and self.data == other.data

    def serialize(self, stream):
        stream.write(self._encode(self))

    def deserialize(self, payload):
        self.data = codecs.Bool.decode(payload)
        return self

    @staticmethod
    def _encode(value):
        if not isinstance(value, Bool):
            raise TypeError("ROS1 Bool message required")
        return codecs.Bool.encode(value.data)

    @staticmethod
    def _decode(payload):
        return Bool(codecs.Bool.decode(payload))
