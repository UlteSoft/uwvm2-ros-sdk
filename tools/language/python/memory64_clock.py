"""@brief Adapt CPython's genuine time-module clock conversion to WASI memory64.

@details The selected wasi-libc clockid_t is an opaque pointer type. CPython's
generic int temporary assumes pointer width equals int width, which is true on
WASI memory32 and fails the real assertion on memory64. Use pointer-sized signed
integer conversion for this ABI only; no clock implementation or permission is
substituted. All actual calls remain the original wasi-libc clock functions.
"""

import hashlib
import os


BEFORE = """#elif defined(__DragonFly__)
    long clk_id = PyLong_AsLong(obj);
#else
    int clk_id = PyLong_AsInt(obj);
#endif"""
AFTER = """#elif defined(__DragonFly__)
    long clk_id = PyLong_AsLong(obj);
#elif defined(__wasi__)
    /* WASI clockid_t is opaque pointer-sized storage, including memory64. */
    intptr_t clk_id = (intptr_t)PyLong_AsSsize_t(obj);
#else
    int clk_id = PyLong_AsInt(obj);
#endif"""


def adapt(source):
    """@brief Write the exact reviewed source adaptation before any source compilation.

    @param source Fresh private copy of the already hash-verified full CPython source.
    @return Original/adapted complete module SHA-256 and the exact applied rule.
    @details Three clock wrapper casts explicitly pass through intptr_t to retain
    their signed input width without a smaller-integer-to-pointer cast warning.
    Reapplying or applying to a different clock-converter shape is rejected.
    """
    path = source / "Modules/timemodule.c"
    raw = path.read_bytes()
    body = raw.decode()
    if body.count(BEFORE) != 1 or body.count("(clockid_t)clk_id") != 4:
        raise ValueError("Review the changed genuine CPython clock conversion before adapting")
    body = body.replace(BEFORE, AFTER).replace("(clockid_t)clk_id", "(clockid_t)(intptr_t)clk_id")
    path.write_text(body)
    os.utime(path, (1792635234, 1792635234))
    return {"file": "Modules/timemodule.c", "before_sha256": hashlib.sha256(raw).hexdigest(),
            "after_sha256": hashlib.sha256(body.encode()).hexdigest(),
            "rule": "WASI opaque clockid_t uses PyLong_AsSsize_t/intptr_t, with the genuine clock calls unchanged"}
