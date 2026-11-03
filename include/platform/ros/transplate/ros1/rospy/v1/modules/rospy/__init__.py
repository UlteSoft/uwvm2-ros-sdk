"""Noetic rospy1.17.4 source-API subset inside genuine CPython/Wasm.

This opt-in cooperative profile does not import the native rospy socket/thread
implementation. Full API/distribution conformance remains unqualified. Native
ROS1 endpoints are reached only through the selected actual Wasm imports.
"""
from .exceptions import ROSException, ROSInitException, ROSInterruptException
from ._state import AliasBinding, ROSCapabilityError, state, get_published_topics
from .topics import Publisher, Subscriber

DEBUG, INFO, WARN, ERROR, FATAL = 1, 2, 4, 8, 16


def configure(bindings, **options):
    """Guest-local deployment bootstrap; this creates no native permission."""
    return state.configure(bindings, **options)


def init_node(name, argv=None, anonymous=False, log_level=INFO,
              disable_rostime=False, disable_rosout=False, disable_signals=False,
              xmlrpc_port=0, tcpros_port=0):
    return state.init_node(name, argv, anonymous, log_level, disable_rostime,
                           disable_rosout, disable_signals, xmlrpc_port, tcpros_port)


def get_name():
    return state.name


def get_namespace():
    return state.namespace if state.namespace.endswith("/") else state.namespace + "/"


def is_shutdown():
    return state.stopped or state.stopping


def signal_shutdown(reason):
    return state.shutdown(reason)


def retry_cleanup():
    """Explicit extension for retained pre-entry cleanup failures, never replay."""
    return state.retry_cleanup()


def on_shutdown(callback):
    if not callable(callback):
        raise TypeError("shutdown callback must be callable")
    if state.stopped or state.stopping:
        raise ROSException("shutdown registration is already closed")
    if len(state.shutdown_callbacks) >= 64:
        raise ROSException("bounded shutdown callback registry is full")
    state.shutdown_callbacks.append(callback)


def spin_once():
    """Explicit extension: one finite nonblocking cooperative callback pass."""
    return state.spin_once()


def spin():
    """Selected cooperative behavior; native threaded rospy spin is not emulated."""
    state.live()
    if state.idle_wait is None:
        raise NotImplementedError("configure an explicit bounded guest idle driver")
    while not is_shutdown():
        spin_once()
        if state.idle_wait() is False:
            return
