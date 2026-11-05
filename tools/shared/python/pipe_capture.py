"""Bounded nonblocking guest pipe receivers owned by the test supervisor.

Only the supervisor holds log-file descriptors. Guests receive pipes; draining
never grants filesystem access and never waits for an untrusted writer to close.
"""
import os
import subprocess


class PipeCapture:
    def __init__(self, stdout, stderr, limit):
        if type(limit) is not int or not 0 < limit <= 64 * 1024 * 1024:
            raise ValueError("Explicit bounded guest output required")
        self.limit, self.total = limit, 0
        self.inputs = []
        self.outputs = []
        try:
            self.outputs.append(stdout.open("xb"))
            self.outputs.append(stderr.open("xb"))
        except BaseException:
            for output in self.outputs:
                output.close()
            raise

    def attach(self, process):
        self.inputs = [process.stdout, process.stderr]
        for stream in self.inputs:
            os.set_blocking(stream.fileno(), False)

    def drain(self):
        # A bounded amount per sample prevents a chatty guest from starving the
        # caller's identity, admission, cancellation and deadline checks.
        for stream, output in zip(self.inputs, self.outputs):
            remaining = 128 * 1024
            while remaining > 0:
                try:
                    data = os.read(stream.fileno(), min(65536, remaining))
                except BlockingIOError:
                    break
                if not data:
                    break
                self.total += len(data)
                if self.total > self.limit:
                    raise RuntimeError("Actor output bound exceeded")
                output.write(data)
                output.flush()
                remaining -= len(data)

    def close(self):
        try:
            self.drain()
        finally:
            for stream in [*self.inputs, *self.outputs]:
                stream.close()
            self.inputs, self.outputs = [], []


class PipeLoggedProcess(subprocess.Popen):
    """Popen-compatible guest with bounded pipe-to-parent-log transfer.

    Existing supervisors keep their identity, lifecycle and deadline loops.
    Each poll drains only a bounded chunk. The guest never receives the regular
    output files, and deadline/overflow failures remain test failures.
    """
    def __init__(self, *args, stdout, stderr, output_limit=8 * 1024 * 1024, nonblocking_stdin=True, **kwargs):
        import subprocess
        import time
        if type(output_limit) is not int or not 0 < output_limit <= 64 * 1024 * 1024:
            raise ValueError("Explicit bounded guest output required")
        self._pipe_capture = None
        self._pipe_deadline = time.monotonic() + 3600
        read_fd = write_fd = None
        if nonblocking_stdin and kwargs.get("stdin") == subprocess.PIPE:
            read_fd, write_fd = os.pipe2(os.O_NONBLOCK | os.O_CLOEXEC)
            os.set_blocking(write_fd, True)
            kwargs["stdin"] = read_fd
        try:
            super().__init__(*args, stdout=subprocess.PIPE, stderr=subprocess.PIPE, **kwargs)
        except BaseException:
            if write_fd is not None:
                os.close(write_fd)
            raise
        finally:
            if read_fd is not None:
                os.close(read_fd)
        if write_fd is not None:
            self.stdin = os.fdopen(write_fd, "wb")
        capture = PipeCapture.__new__(PipeCapture)
        capture.limit, capture.total = output_limit, 0
        capture.outputs = []
        capture.inputs = []
        try:
            # Keep parent-owned sinks alive through an outer supervisor's
            # exceptional ExitStack cleanup; these copies never enter the guest.
            for stream in (stdout, stderr):
                capture.outputs.append(os.fdopen(os.dup(stream.fileno()), "wb"))
            capture.attach(self)
        except BaseException:
            super().kill()
            super().wait()
            for stream in [*capture.inputs, *capture.outputs]:
                stream.close()
            raise
        self._pipe_capture = capture

    def poll(self):
        import time
        capture = self._pipe_capture
        if capture is not None:
            try:
                capture.drain()
                if time.monotonic() > self._pipe_deadline:
                    raise RuntimeError("Guest output receiver deadline exceeded")
            except BaseException:
                if super().poll() is None:
                    import signal
                    try:
                        os.kill(self.pid, signal.SIGKILL)
                    except ProcessLookupError:
                        pass
                for stream in [*capture.inputs, *capture.outputs]:
                    stream.close()
                capture.inputs, capture.outputs = [], []
                self._pipe_capture = None
                raise
        result = super().poll()
        if result is not None and capture is not None:
            # A terminated process cannot refill its pipe. One final bounded
            # sample drains the remaining kernel buffers before logs are read.
            capture.drain()
            for stream in [*capture.inputs, *capture.outputs]:
                stream.close()
            capture.inputs, capture.outputs = [], []
            self._pipe_capture = None
        return result

    def wait(self, timeout=None):
        import subprocess
        import time
        end = None if timeout is None else time.monotonic() + timeout
        while True:
            result = self.poll()
            if result is not None:
                return result
            if end is not None and time.monotonic() >= end:
                raise subprocess.TimeoutExpired(self.args, timeout)
            time.sleep(0.01)
