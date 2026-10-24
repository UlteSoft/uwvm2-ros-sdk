// @file export_staged_identities.cpp
// @brief Provide the selected typed SDK binding and ownership boundary for nvidia-groot.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** Actual generated full staged-service types; no hand-authored native ID. */
#include "native_identity.cc"
#include <uwvm_groot_bridge/msg/float_tensor.hpp>
#include <uwvm_groot_bridge/msg/rgb_descriptor.hpp>
#include <uwvm_groot_bridge/msg/text_sequence.hpp>
#include <uwvm_groot_bridge/srv/begin_observation.hpp>
#include <uwvm_groot_bridge/srv/infer_uploaded_action.hpp>
#include <uwvm_groot_bridge/srv/release_observation.hpp>
#include <uwvm_groot_bridge/srv/write_rgb_chunk.hpp>
