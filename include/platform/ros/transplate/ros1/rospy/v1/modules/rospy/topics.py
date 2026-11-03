"""Selected rospy Publisher/Subscriber spelling over the real ROS1 Wasm ABI.

Transport sharing, native receiver threads and implicit Master registration
are not emulated. The explicit configure profile binds the actual aliases.
"""
from roswasm import RosError
from roswasm.client import _factory_failure
from ._state import state, checked, ROSCapabilityError
from .exceptions import ROSException


class _MessageCodec:
    def __init__(self, data_class):
        if (not isinstance(data_class, type)
            or not isinstance(getattr(data_class, "_ROSWASM_TYPE", None), str)
            or not callable(getattr(data_class, "_encode", None))
            or not callable(getattr(data_class, "_decode", None))):
            raise TypeError("a selected real guest ROS1 message codec is required")
        self.data_class = data_class

    def encode(self, message):
        return self.data_class._encode(message)

    def decode(self, payload):
        return self.data_class._decode(payload)


class _Topic:
    _subscription = False

    def _open(self, operation, name, data_class, queue_size, latch, capacity, callback=None):
        state.factory()
        codec = _MessageCodec(data_class)
        self.name = self.resolved_name = state.resolve(name)
        binding = state.binding(operation, self.name, data_class._ROSWASM_TYPE)
        if queue_size is not None and (type(queue_size) is not int or queue_size != binding.queue_size):
            raise ValueError("queue size must match the exact configured native role")
        if latch != binding.latch or (capacity is not None and capacity > binding.capacity):
            raise ValueError("latch/output capacity must match the explicit role")
        self.data_class, self._resource, self._registered = data_class, None, False
        position = state.reserve()
        frame = None
        try:
            frame, owns = state.session._begin_factory(1)
            if self._subscription:
                resource = state.node.create_subscription(codec, binding.alias, callback,
                    binding.capacity if capacity is None else capacity)
            else:
                resource = state.node.create_publisher(codec, binding.alias)
            self._resource = resource
            list.__setitem__(state.resources, position, self)
            self._registered = True
            if owns:
                frame.committed = True
        except BaseException as error:
            if frame is not None:
                _factory_failure(frame, error)
            list.__setitem__(state.resources, position, None)
            if isinstance(error, RosError):
                raise ROSCapabilityError(error.result) from error
            raise
        finally:
            if frame is not None:
                state.session._end_factory(frame, owns)

    def unregister(self):
        if not self._registered or not self._resource.owner.handle:
            self._registered = False
            return
        state.factory()
        try:
            checked(self._resource.close())
        finally:
            if not self._resource.owner.handle:
                self._registered = False

    def get_num_connections(self):
        raise NotImplementedError("native endpoint connection introspection requires its own qualified ABI")


class Publisher(_Topic):
    def __init__(self, name, data_class, subscriber_listener=None,
                 tcp_nodelay=False, latch=False, headers=None, queue_size=None):
        if subscriber_listener is not None or tcp_nodelay is not False or headers is not None:
            raise NotImplementedError("native transport callbacks/headers/options are not installed")
        if type(latch) is not bool:
            raise TypeError("latch must be bool")
        if type(queue_size) is not int or not 1 <= queue_size <= 65536:
            raise ValueError("select an explicit finite publisher queue_size")
        self._open("topic_publish", name, data_class, queue_size, latch, None)

    def publish(self, *args, **kwargs):
        # Check before message construction or any caller codec invocation.
        if not self._registered or not self._resource.owner.handle:
            raise ROSException("publish() to an unregistered publisher")
        state.live()
        if args and kwargs:
            raise TypeError("use a message, positional fields or keyword fields")
        if len(args) == 1 and not kwargs and isinstance(args[0], self.data_class):
            message = args[0]
        else:
            message = self.data_class(*args, **kwargs)
        checked(self._resource.publish(message))


class Subscriber(_Topic):
    _subscription = True

    def __init__(self, name, data_class, callback=None, callback_args=None,
                 queue_size=None, buff_size=65536, tcp_nodelay=False):
        if not callable(callback):
            raise TypeError("a real guest callback is required")
        if tcp_nodelay is not False:
            raise NotImplementedError("native TCP transport flags require a qualified binding")
        if type(buff_size) is not int or not 0 <= buff_size <= 4194304:
            raise ValueError("bounded guest receive capacity required")
        self.callback, self.callback_args = callback, callback_args
        self._open("topic_subscribe", name, data_class, queue_size, False, buff_size, self._deliver)

    def _deliver(self, message):
        if self.callback_args is None:
            self.callback(message)
        else:
            self.callback(message, self.callback_args)

    def _poll_once(self):
        if not self._registered or not self._resource.owner.handle:
            return False
        result = self._resource.poll_once()
        if result.error == 11:
            return False
        checked(result)
        return True
