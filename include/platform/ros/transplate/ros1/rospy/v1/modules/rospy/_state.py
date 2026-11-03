"""Explicit ROS1 capability bindings and cooperative guest lifecycle.

A configuration is local source adaptation, never a Runtime grant. Each Wasm
instance gets its own module state; two State objects in one interpreter do
not make independent components. No native TCPROS/XMLRPC/Python fallback.
"""
from dataclasses import dataclass
import re
from roswasm import Backend, Session, Node, RosError, Result, codecs
from .exceptions import ROSException, ROSInitException


class ROSCapabilityError(ROSException):
    """Preserve the original ABI result while remaining a rospy ROSException."""
    def __init__(self, result):
        self.result, self.error = result, result.error
        super().__init__("controlled ROS1 operation failed: " + str(result.error))


def checked(result):
    if result.error:
        raise ROSCapabilityError(result)
    return result


@dataclass(frozen=True)
class AliasBinding:
    alias: str
    queue_size: int = 10
    latch: bool = False
    capacity: int = 65536


def canonical(value, root=False):
    if not isinstance(value, str) or not re.fullmatch(
            r"/(?:[A-Za-z_][A-Za-z_0-9]*(?:/[A-Za-z_][A-Za-z_0-9]*)*)?", value):
        raise ValueError("canonical absolute ROS name required")
    if not root and value == "/":
        raise ValueError("an endpoint name is required")
    return value


class State:
    def __init__(self):
        self.bindings, self.resources, self.shutdown_callbacks = {}, [], []
        self.session = self.node = None
        self.initialized = self.stopped = self.stopping = self.dispatching = False
        self.name = "/unnamed"
        self.namespace = "/"
        self.idle_wait = None
        self.maximum, self.credits = 256, 4096
        self.last_cleanup = None
        self.last_retry_cleanup = None
        self.last_shutdown_reason = None

    def configure(self, bindings, *, namespace="/", idle_wait=None,
                  maximum_owners=256, maximum_credits=4096):
        if self.initialized:
            raise ROSInitException("configure before the one init_node per Wasm instance")
        canonical(namespace, True)
        if idle_wait is not None and not callable(idle_wait):
            raise TypeError("explicit guest idle driver must be callable")
        if type(maximum_owners) is not int or not 0 <= maximum_owners <= 65536:
            raise ValueError("finite owner count required")
        if type(maximum_credits) is not int or not 0 <= maximum_credits <= 65536:
            raise ValueError("finite cooperative spin credits required")
        for key, binding in bindings.items():
            if (not isinstance(key, tuple) or len(key) != 3
                or not all(isinstance(x, str) for x in key)
                or not isinstance(binding, AliasBinding)):
                raise ValueError("exact operation/resource/type binding required")
            canonical(key[1], key[0] == "graph_list_topics")
            if (not isinstance(binding.alias, str)
                or not re.fullmatch(r"[A-Za-z0-9_.-]{1,255}", binding.alias)
                or binding.alias in (".", "..")):
                raise ValueError("existing Runtime identifier grammar required")
            if (type(binding.queue_size) is not int or not 1 <= binding.queue_size <= 65536
                or type(binding.latch) is not bool or type(binding.capacity) is not int
                or not 0 <= binding.capacity <= 4194304):
                raise ValueError("bounded explicit ROS1 queue/latch/capacity required")
        self.bindings = dict(bindings)
        self.namespace = namespace
        self.idle_wait = idle_wait
        self.maximum, self.credits = maximum_owners, maximum_credits

    def init_node(self, name, argv=None, anonymous=False, log_level=2,
                  disable_rostime=False, disable_rosout=False,
                  disable_signals=False, xmlrpc_port=0, tcpros_port=0):
        if self.initialized:
            raise ROSInitException("one initialization per genuine Wasm instance")
        if not isinstance(name, str) or not re.fullmatch(r"[A-Za-z_][A-Za-z_0-9]*", name):
            raise ValueError("an explicit base node name is required")
        if (argv not in (None, [], ()) or anonymous or log_level != 2
            or disable_rostime is not True or disable_rosout is not True
            or disable_signals is not True or xmlrpc_port != 0 or tcpros_port != 0):
            raise NotImplementedError("This cooperative profile requires explicit disable_rostime/rosout/signals and no native port/remapping settings")
        session = Session(Backend(1), self.maximum)
        session.check_abi()
        node = Node(session)
        self.session, self.node = session, node
        self.name = self.namespace.rstrip("/") + "/" + name
        self.initialized = True

    def live(self):
        if not self.initialized:
            raise ROSInitException("call init_node after configure")
        if self.stopped or self.stopping:
            raise ROSException("the guest node is shutting down or stopped")

    def factory(self):
        self.live()
        if self.dispatching or self.session._factory_current is not None:
            raise ROSCapabilityError(Result(17))

    def resolve(self, name):
        if not isinstance(name, str):
            raise TypeError("ROS name must be str")
        if name.startswith("~/"):
            name = self.name + name[1:]
        elif not name.startswith("/"):
            name = self.namespace.rstrip("/") + "/" + name
        return canonical(name)

    def binding(self, operation, name, native_type):
        self.live()
        row = self.bindings.get((operation, name, native_type))
        if row is None:
            raise ROSCapabilityError(Result(13))
        return row

    def reserve(self):
        self.factory()
        if len(self.resources) >= self.maximum:
            raise ROSCapabilityError(Result(90))
        position = len(self.resources)
        self.resources.append(None)
        return position

    def spin_once(self):
        self.live()
        if self.dispatching:
            raise ROSCapabilityError(Result(17))
        if not self.credits:
            raise ROSException("finite cooperative polling credit exhausted")
        sources = tuple(value for value in self.resources
                        if value is not None and value._subscription and value._registered)
        self.credits -= 1
        self.dispatching = True
        count = 0
        try:
            for source in sources:
                count += int(source._poll_once())
        finally:
            self.dispatching = False
        return count

    def shutdown(self, reason):
        if not isinstance(reason, str):
            raise TypeError("shutdown reason must be str")
        if self.stopped or not self.initialized:
            return
        if self.dispatching or self.stopping:
            raise ROSCapabilityError(Result(17))
        callbacks = tuple(self.shutdown_callbacks)
        outcomes = [None] * (len(callbacks) + 1)
        self.last_cleanup = outcomes
        self.last_shutdown_reason = reason
        self.stopping = True
        primary = None
        try:
            for index, callback in enumerate(callbacks):
                try:
                    callback()
                except BaseException as error:
                    outcomes[index] = error
                    if primary is None:
                        primary = error
            try:
                report = self.session.close(primary)
                outcomes[-1] = report
                if primary is None and report.failures:
                    first = report.failures[0]
                    if first is None:
                        primary = ROSException("cleanup was interrupted before every owner was observed")
                    else:
                        primary = first if isinstance(first, BaseException) else ROSCapabilityError(first)
            except BaseException as error:
                outcomes[-1] = error
                if primary is None:
                    primary = error
        finally:
            self.stopped = True
            self.stopping = False
        if primary is not None:
            raise primary

    def retry_cleanup(self):
        """Explicitly close only still-visible NotAttempted owners after stop.

        Shared owner witnesses skip every entered/unknown close. No shutdown
        callback, factory, grant or ordinary application use is restarted.
        """
        if not self.initialized or not self.stopped:
            raise ROSException("explicit recovery is only available after shutdown")
        if self.dispatching or self.stopping:
            raise ROSCapabilityError(Result(17))
        self.stopping = True
        try:
            report = self.session.close()
            self.last_retry_cleanup = report
            return report
        finally:
            self.stopping = False


state = State()


def get_published_topics(namespace="/"):
    """Return actual bounded ROS1 native topic/type rows via a granted alias."""
    canonical(namespace, True)
    state.factory()
    binding = state.binding("graph_list_topics", namespace, "builtin/graph-list-v1")
    owner = None
    primary = None
    try:
        owner = state.session.open(binding.alias)
        response = checked(owner.invoke("graph_list_topics", b"", binding.capacity))
        text = codecs.String.decode(response.data)
        if text and not text.endswith("\n"):
            raise ValueError("canonical graph rows must end LF")
        rows, previous = [], None
        for line in text[:-1].split("\n") if text else ():
            if line.count("\t") != 1 or "\r" in line or "\0" in line:
                raise ValueError("malformed canonical graph row")
            name, native_type = line.split("\t")
            canonical(name)
            if not native_type or any(ch.isspace() for ch in native_type):
                raise ValueError("invalid graph native type")
            key = line.encode("utf-8")
            if previous is not None and key <= previous:
                raise ValueError("native graph result must be sorted and unique")
            previous = key
            if namespace == "/" or name == namespace or name.startswith(namespace + "/"):
                rows.append([name, native_type])
        return rows
    except RosError as error:
        primary = error
        raise ROSCapabilityError(error.result) from error
    except BaseException as error:
        primary = error
        raise
    finally:
        if owner is not None and owner.handle:
            try:
                checked(owner.close())
            except BaseException as cleanup:
                if primary is None:
                    raise
                primary.rospy_cleanup = cleanup
