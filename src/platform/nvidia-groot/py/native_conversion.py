"""Complete typed ROS values <-> actual GR00T N1.7 policy values.

No SDK import, file, network, model or CUDA operation occurs at module load.
NumPy and actual generated ROS classes are explicitly supplied by the trusted
native owner. Application nonce is never labelled a native RMW request ID.
"""

import math
import numbers


class Refused(ValueError):
    """@brief A complete-value refusal carrying the SDK numeric status.

    @details code identifies malformed input (22), an exceeded quota (90), an
    unsupported complete domain (95), or the owner's other documented status.
    Raising this exception does not publish a response or imply model rollback.
    Instances contain no model/GPU handles and may be inspected after cleanup.
    @see require
    @see prepared_response
    """

    def __init__(self, code, reason):
        """@brief Retain a numeric refusal and a human-readable diagnostic.

        @details code and reason are caller-owned immutable values; no I/O,
        allocation beyond normal Python exception construction, or permission
        change occurs. Construction is synchronous on CPython 3.12.
        @param[in] code Integer SDK status chosen by the rejecting operation.
        @param[in] reason English diagnostic; it is not exposed as a wire schema.
        @see Refused
        """
        super().__init__(reason)
        self.code = code


def require(ok, code, reason):
    """@brief Reject a failed complete-value precondition.

    @details Returns None for a true condition and raises Refused(code, reason)
    otherwise. No input is modified, permission granted or model invoked. The
    helper is reentrant when evaluating ok does not mutate shared state.
    @param[in] ok Already evaluated admission condition.
    @param[in] code Numeric failure status; not remapped by this helper.
    @param[in] reason Diagnostic retained by Refused.
    @see Refused
    """
    if not ok:
        raise Refused(code, reason)


def text(value, maximum):
    """@brief Admit a complete Unicode string without replacement or truncation.

    @details Strict UTF-8 encoding rejects unpaired surrogates and embedded NUL.
    Quotas count encoded bytes rather than characters. The original immutable
    string is returned; no native resources or permissions are acquired.
    @param[in] value Exact Python str, retained by its owner during the call.
    @param[in] maximum Nonnegative maximum encoded byte count.
    @return The original string; Refused(22) for invalid text/type or (90) for
    an exceeded quota. Calls are synchronous and safe with immutable arguments.
    @see keyed
    @see state_language
    """
    require(type(value) is str, 22, "actual text required")
    try:
        raw = value.encode("utf-8", "strict")
    except UnicodeError as error:
        raise Refused(22, "invalid Unicode") from error
    require(b"\0" not in raw, 22, "canonical text forbids NUL")
    require(len(raw) <= maximum, 90, "complete text exceeds selected quota")
    return value


def shape(values, rank, maximum):
    """@brief Validate every dimension and an overflow-safe total element quota.

    @details Booleans and nonintegral extents are rejected; each dimension is in
    [1, 2**32-1]. No extra dimensions are discarded. NumPy integral scalars are
    admitted and copied to independent Python ints. No buffer or GPU is touched.
    @param[in] values Stable complete iterable with an exact len of rank.
    @param[in] rank Required positive dimension count, e.g. 5 for B/T/H/W/RGB.
    @param[in] maximum Maximum admitted total element count; nonnegative integer.
    @return (owned dimension tuple, element count). Refused(22) reports malformed
    extents; Refused(90) reports multiplication exceeding maximum. Synchronous.
    @see observation
    @see prepared_response
    """
    require(len(values) == rank, 22, "complete fixed shape rank required")
    require(
        all(
            isinstance(x, numbers.Integral)
            and not isinstance(x, bool)
            and 0 < x <= 0xFFFFFFFF
            for x in values
        ),
        22,
        "positive exact unsigned dimensions required",
    )
    result = tuple(int(x) for x in values)
    count = 1
    for extent in result:
        require(
            count <= maximum // extent, 90, "complete tensor exceeds selected quota"
        )
        count *= extent
    return result, count


def selected_modalities(policy):
    """@brief Capture the selected genuine policy's full modality configuration.

    @details Calls get_modality_config exactly once and requires video, state,
    language and action, respectively at most 3, 4, 2 and 8 unique UTF-8 keys of
    at most 64 bytes. Every temporal index is integral; language has one step.
    The function preserves actual key order and horizon lengths, performs no
    inference, and cannot authorize model/ROS access. The trusted owner admits
    the already constructed policy and serializes its use on CPython 3.12.
    @param[in] policy Actual pinned Gr00tPolicy-compatible instance, kept alive
    through capture; arbitrary untrusted plugin objects are not admitted here.
    @return New mapping from each modality to (key tuple, temporal length).
    Refused(95/22/90) preserves unsupported, invalid and over-quota distinctions;
    exceptions from the actual SDK propagate without a partial configuration.
    @see observation
    @see native_owner.OncePolicy
    """
    raw = policy.get_modality_config()
    require(
        type(raw) is dict and set(raw) == {"video", "state", "language", "action"},
        95,
        "selected complete policy modality set unsupported",
    )
    limits = {"video": 3, "state": 4, "language": 2, "action": 8}
    result = {}
    for name, limit in limits.items():
        source = raw[name]
        keys = tuple(source.modality_keys)
        require(
            0 < len(keys) <= limit and len(set(keys)) == len(keys),
            95,
            "selected modality key inventory exceeds complete bridge",
        )
        for key in keys:
            text(key, 64)
        delta = tuple(source.delta_indices)
        require(
            delta
            and all(
                isinstance(x, numbers.Integral) and not isinstance(x, bool)
                for x in delta
            ),
            95,
            "actual temporal configuration required",
        )
        if name == "language":
            require(
                len(delta) == 1, 95, "actual SDK language path requires one timestep"
            )
        result[name] = (keys, len(delta))
    return result


def keyed(rows, expected, maximum):
    """@brief Match complete keyed records one-to-one against model keys.

    @details Validates all 64-byte UTF-8 keys, rejects duplicates/missing/extra
    keys, and retains original record objects without narrowing any payload.
    The caller keeps those records immutable until its subsequent conversion
    finishes. This synchronous helper has no model, ROS or permission effects.
    @param[in] rows Stable complete record sequence exposing a key attribute.
    @param[in] expected Exact selected key inventory, with no duplicates.
    @param[in] maximum Maximum number of admitted complete records.
    @return New key-to-borrowed-record dictionary. Refused(22/90) reports invalid
    identity or quotas; allocation errors propagate before any publication.
    @see selected_modalities
    @see observation
    """
    require(len(rows) <= maximum, 90, "too many complete keyed values")
    result = {}
    for row in rows:
        key = text(row.key, 64)
        require(key not in result, 22, "duplicate keyed value")
        result[key] = row
    require(
        set(result) == set(expected), 22, "missing or extra full model modality key"
    )
    return result


def observation(request, configuration, np):
    """@brief Copy a complete small inline observation into private NumPy arrays.

    @details Requires a positive exact uint64 application nonce and the full
    selected video/state/language key sets. Each inline video has B=1, actual T,
    RGB=3 and at most 768 uint8 elements. Copies every pixel; performs no resize,
    inference, ROS call or permission grant. Normal camera frames use StagedVideo
    instead. The owner serializes calls and retains request/configuration through
    return; resulting arrays own their storage on the pinned CPython 3.12 stack.
    @param[in] request Genuine generated complete InferAction.Request value.
    @param[in] configuration Result of selected_modalities for the same policy.
    @param[in] np Actual admitted NumPy module; no substitute array library.
    @return Complete private policy observation dictionary. Refused(22/90/95)
    or allocation errors propagate before any model invocation.
    @see state_language
    @see staged_video.StagedVideo.take
    """
    require(
        type(request.application_nonce) is int
        and 0 < request.application_nonce < 2**64,
        22,
        "positive application nonce required",
    )
    video = keyed(request.video, configuration["video"][0], 3)
    result = state_language(request, configuration, np)
    result["video"] = {}
    for key, row in video.items():
        dims, count = shape(row.shape, 5, 768)
        require(
            dims[0] == 1 and dims[1] == configuration["video"][1] and dims[4] == 3,
            22,
            "actual B/T/RGB dimensions differ",
        )
        require(
            len(row.pixels) == count
            and all(
                isinstance(x, numbers.Integral)
                and not isinstance(x, bool)
                and 0 <= x <= 255
                for x in row.pixels
            ),
            22,
            "complete uint8 pixel extent required",
        )
        result["video"][key] = np.array(row.pixels, dtype=np.uint8).reshape(dims).copy()
    return result


def state_language(request, configuration, np):
    """@brief Copy every selected state and language field for a policy call.

    @details State tensors require B=1, actual temporal T, rank 3, at most 320
    elements and finite values representable in float32. Language requires B=T=1
    and strict text of at most 256 UTF-8 bytes. No value is omitted or silently
    rounded from invalid/overflowing data into success. The caller serializes
    conversion with immutable input; arrays own their storage after return.
    @param[in] request Complete inline or uploaded request containing state and
    language records for every selected key.
    @param[in] configuration Immutable selected_modalities result.
    @param[in] np Actual admitted NumPy module; model/ROS authority is external.
    @return New state/language dictionary, or Refused(22/90) before inference.
    @see observation
    @see native_owner.StagedOncePolicy.private_observation
    """
    state = keyed(request.state, configuration["state"][0], 4)
    language = keyed(request.language, configuration["language"][0], 2)
    result = {"state": {}, "language": {}}
    for key, row in state.items():
        dims, count = shape(row.shape, 3, 320)
        require(
            dims[0] == 1
            and dims[1] == configuration["state"][1]
            and len(row.values) == count,
            22,
            "complete state B/T/D extent differs",
        )
        require(
            all(
                not isinstance(x, bool)
                and isinstance(x, numbers.Real)
                and math.isfinite(x)
                for x in row.values
            ),
            22,
            "finite full state required",
        )
        value = np.array(row.values, dtype=np.float32).reshape(dims).copy()
        require(bool(np.isfinite(value).all()), 22, "state float32 overflow")
        result["state"][key] = value
    for key, row in language.items():
        dims, count = shape(row.shape, 2, 4)
        require(
            dims == (1, 1) and len(row.texts) == count,
            22,
            "complete actual language B/T shape differs",
        )
        result["language"][key] = [[text(row.texts[0], 256)]]
    return result


def prepared_response(
    nonce, action, info, configuration, np, response_type, tensor_type
):
    """@brief Copy every action tensor into one complete typed response.

    @details Requires all actual selected action keys, at most 8 tensors, each
    float32 rank-3 B/T/D with B=1, actual T, at most 320 elements, and finite
    values. The pinned policy returns empty info; a nonempty domain is refused
    with 95, never discarded. Caller retains model arrays unchanged through
    return; generated result lists own their values and expose no GPU pointers.
    Synchronous conversion grants no permissions and does not publish or retry.
    @param[in] nonce Admitted positive application uint64; never an RMW ticket.
    @param[in] action Actual complete policy action mapping of NumPy ndarrays.
    @param[in] info Actual SDK info dictionary, required to be empty.
    @param[in] configuration Immutable selected_modalities for this model.
    @param[in] np Actual admitted NumPy module used to inspect complete arrays.
    @param[in] response_type Genuine generated response class with the full
    status/application_nonce/info_is_empty/action fields.
    @param[in] tensor_type Genuine generated complete FloatTensor class.
    @return A new successful response after all checks. Refused(22/90/95) or
    allocation/SDK errors leave no published partial result; inference may have
    already occurred and the native owner must retain that uncertainty.
    @see native_owner.OncePolicy.call
    @see selected_modalities
    """
    require(
        type(info) is dict and not info,
        95,
        "nonempty actual info needs a separately typed extension",
    )
    require(
        type(action) is dict and set(action) == set(configuration["action"][0]),
        95,
        "actual complete action key set differs",
    )
    output = response_type()
    output.status = 0
    output.application_nonce = nonce
    output.info_is_empty = True
    rows = []
    for key in configuration["action"][0]:
        value = action[key]
        require(
            isinstance(value, np.ndarray)
            and value.dtype == np.float32
            and value.ndim == 3,
            95,
            "actual float32 B/T/D action required",
        )
        dims, count = shape(tuple(int(x) for x in value.shape), 3, 320)
        require(
            dims[0] == 1
            and dims[1] == configuration["action"][1]
            and count == value.size,
            22,
            "actual complete action horizon differs",
        )
        require(bool(np.isfinite(value).all()), 22, "nonfinite actual action refused")
        row = tensor_type()
        row.key = text(key, 64)
        row.shape = list(dims)
        row.values = value.reshape(
            -1
        ).tolist()  # all values, no stride/pointer exposure
        rows.append(row)
    require(len(rows) <= 8, 90, "whole action result quota")
    output.action = rows
    return output
