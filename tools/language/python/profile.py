"""Apply reviewed CPython 3.14.8 WASI profile changes to a verified private tree."""
import hashlib


def adapt(source):
    receipts = []
    # CC already carries the exact width/thread profile and source-built sysroot.
    # Upstream's historical hard-coded triple and 10 MiB maximum conflict with
    # both that profile and its own 40 MiB initial memory setting.
    for name in ("configure.ac", "configure"):
        path = source / name
        before = path.read_text()
        if before.count(" -target wasm32-wasi-threads -pthread") != 3:
            raise ValueError("Review the changed CPython WASI thread configuration")
        if before.count(" -Wl,--max-memory=10485760") != 1:
            raise ValueError("Review the changed CPython WASI memory configuration")
        after = before.replace(" -target wasm32-wasi-threads -pthread", " -pthread")
        after = after.replace(" -Wl,--max-memory=10485760", " -Wl,--max-memory=268435456")
        path.write_text(after)
        receipts.append(dict(file=name, before_sha256=hashlib.sha256(before.encode()).hexdigest(),
                             after_sha256=hashlib.sha256(after.encode()).hexdigest()))
    # These Preview 1 vector operations are available in this runtime. Do not
    # inherit a workaround for a different runtime's Preview 2 implementation.
    path = source / "Tools/wasm/wasi/config.site-wasm32-wasi"
    before = path.read_text()
    after = before
    for name in ("preadv", "readv", "pwritev", "writev"):
        expected = "ac_cv_func_" + name + "=no"
        if after.count(expected) != 1:
            raise ValueError("Review the changed CPython vector I/O profile")
        after = after.replace(expected, "# SDK: probe the actual WASIp1 " + name + " implementation")
    path.write_text(after)
    receipts.append(dict(file=str(path.relative_to(source)),
                         before_sha256=hashlib.sha256(before.encode()).hexdigest(),
                         after_sha256=hashlib.sha256(after.encode()).hexdigest()))
    return receipts
