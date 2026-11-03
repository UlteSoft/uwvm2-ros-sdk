# Genuine rcl topic-name expansion

The public Wasm target compiles the unchanged rcl 9.2.11 expansion and default
substitution implementations, exact RCUtils formatting/replacement/string-map
dependencies, and pinned RMW 7.3.4 name validators. The source lock records full
official commits, complete selected dependency hashes and retained licenses.
This source batch has not been compiled or executed.

Eight required guest cases retain the official 17 expansion vectors and check
custom substitutions, null and invalid names, unknown substitutions, allocation
failure, the empty default-substitution map, and the separate RMW final-name
validation step. A successful expansion may still contain repeated slashes:
the official /foo/{namespace} example expands to /foo//my_ns. Genuine
rmw_validate_full_topic_name must reject such a result before publication.

The allocator, input strings, string map and allocated result belong to the
calling Wasm instance. The caller frees a successful result using the same
allocator. Built-in {node}, {ns}, {namespace} substitutions use the explicit
node/namespace arguments. The default-substitution API adds no entries in this
version. The component requests no host ROS capability or host business client.

Later allocation-point failure cleanup, cyclic/recursive custom substitutions
and Wasm instruction/resource-budget behavior, every RMW validation boundary,
all genuine language/typed-copy routes, complete client StageA, private-memory
and caller-bound grant negatives, and official StageB remain required. These
finite helper cases do not establish any of those acceptance scopes.

The exact default-substitution source accepts an uninitialized non-NULL map
without changing it, although the header describes an invalid-argument error.
The added vector records that source behavior. The expansion header also says
no output assignment on error; allocation/unknown-substitution source branches
explicitly assign NULL. Callers must initialize their output pointer to NULL.
