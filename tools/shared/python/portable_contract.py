"""Consume the portable joint formats emitted by the actual VM Host.

Input identity/version checks do not create permissions or live authority.
The v1 grant carries its version in format; it has no contract_version field.
"""
from runtime_boundary import read_document, require


def validate_joint_inputs(adapter_path, policy_path, wasm_sha256):
    """Observe actual versions after the original whole-byte pins agree."""
    adapter, adapter_sha256 = read_document(adapter_path)
    policy, policy_sha256 = read_document(policy_path)
    require(adapter.get("format") == "uwvm-portable-robot-adapter-v1",
            "PORTABLE_ADAPTER_FORMAT")
    require(adapter.get("contract_version") == "0.1.0",
            "PORTABLE_ADAPTER_CONTRACT_VERSION")
    require(policy.get("format") == "uwvm-portable-robot-grant-v1",
            "PORTABLE_GRANT_FORMAT")
    require(adapter.get("capability") == policy.get("capability")
            == "joint.position.bounded.v1", "PORTABLE_JOINT_CAPABILITY")
    require(adapter.get("policy_sha256") == policy_sha256,
            "PORTABLE_ADAPTER_WHOLE_GRANT_PIN")
    require(policy.get("wasm_sha256") == wasm_sha256,
            "PORTABLE_GRANT_WHOLE_WASM_PIN")
    return {"adapter_format": adapter["format"],
            "adapter_contract_version": adapter["contract_version"],
            "grant_format": policy["format"],
            "capability": adapter["capability"],
            "adapter_sha256": adapter_sha256, "policy_sha256": policy_sha256}
