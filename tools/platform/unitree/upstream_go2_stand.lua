-- @file upstream_go2_stand.lua
-- @brief Exact original C++20 task graph using the common qualified producer.
local binding_digest = "464ac5c8b9ef5cbc08c9ac2017f2b9fc274e60dbd8058ab184c1d8cb8dc37c5d"
local revision = "668d1ec5a05d1c38d3306bdca7d59f2ba3581a88"
function configure(target, root, context)
    assert(context and context.api_version == 1, "Use the shared provider lifecycle")
    assert(target:values("ros.sdk.unitree.upstream_task") == "go2_stand@" .. revision,
        "Pin the exact original Go2 task revision")
    assert(context.language == "cpp" and context.backend == "ros2" and context.distribution == "humble",
        "This original task selects C++ and ROS2 humble explicitly")
    assert(context.wasi_preview == 1 and not context.threads and context.exception_profile == "noeh",
        "The actual static library graph requires the pinned Preview1 noeh closure")
    assert(target:values("ros.vendor.model") == "Go2", "No other robot model is qualified by this task")
    local sources = target:sourcefiles()
    local filename = target:kind() == "static" and "motor_crc.cpp" or "go2_stand_example.cpp"
    assert(target:kind() == "static" or target:kind() == "binary", "Only the declared real CRC archive/task graph is implemented")
    assert(#sources == 1 and path.absolute(sources[1]) == path.join(root,
        "src/platform/unitree/cpp/ros2/go2_stand/ported", filename),
        "Compile the complete pinned upstream task/CRC source")
    local filename = path.join(root, "share/platform/unitree/cpp/ros2/go2_stand/source-bindings.json")
    assert(hash.sha256(filename):lower() == binding_digest, "The reviewed Go2 source bindings changed")
    if target:kind() == "binary" then
        local required = 'UWVM_RCLCPP_COMPAT_SELECTION_HEADER="platform/unitree/cpp/ros2/go2_stand/selection.hpp"'
        local found = 0
        for _, value in ipairs(table.wrap(target:get("defines"))) do
            if value:startswith("UWVM_RCLCPP_COMPAT_SELECTION_HEADER") then
                assert(value == required, "Select the exact reviewed original Go2 binding header")
                found = found + 1
            end
        end
        assert(found == 1, "The original Go2 task requires its concrete source-selected bindings")
    end
    target:set("values", "ros.sdk.standard", "c++20")
end
function build(target, root, context)
    configure(target, root, context)
    return import("cfamily", {rootdir = path.join(root, "tools/xmake"), anonymous = true})
        .build(target, root, assert(target:values("ros.sdk.triple")), {})
end
-- Run only an explicitly supplied concrete deployment through the existing
-- common launcher. Consistency checks do not replace VM capability admission.
function run(target, root, context)
    configure(target, root, context)
    assert(target:kind() == "binary", "Only the complete original application is runnable")
    import("core.project.config")
    import("core.base.json")
    local filename = target:values("ros.sdk.run_config") or config.get("ros-run-config")
        or os.getenv("UWVM_ROS_RUN_CONFIG")
    assert(filename and os.isfile(filename), "Supply the explicit Go2 deployment after actual runtime/gateway/domain admission")
    local deployment = json.loadfile(filename)
    assert(deployment.format == "uwvm-native-ros-run-v4" and deployment.backend == "ros2"
        and deployment.distribution == "humble", "Select the exact original Go2 Humble deployment")
    local connection = assert(deployment.connection)
    local domain = tonumber(connection["domain-id"])
    assert(domain and domain % 1 == 0 and domain > 0 and domain <= 232,
        "Supply an explicitly admitted isolated ROSdomain1..232; do not use the template token")
    assert(connection["namespace"] == "/" and connection["rmw-implementation"] == "rmw_cyclonedds_cpp",
        "Use the reviewed absolute topics and explicit Cyclone deployment")
    local example = assert((deployment.examples or {}).upstream_go2_stand)
    assert(example.main_module == "unitree_go2_stand" and #example.arguments == 0 and #example.preloads == 0,
        "This qualified source graph has the original sole application and static CRC archive")
    local module = assert(example.modules.unitree_go2_stand)
    local count = 0
    for _ in pairs(example.modules) do count = count + 1 end
    assert(count == 1 and module.ros_enabled == true and module.call_boundary == "same-module",
        "Declare the sole module and its actual permission boundary")
    -- The common launcher validates explicit WASI enablement and grants.
    -- Keep insufficient policies intact so the VM enforces their boundary;
    -- building or selecting this source graph grants no authority.
    local bindings = json.loadfile(path.join(root, "share/platform/unitree/cpp/ros2/go2_stand/source-bindings.json"))
    local expected = {}
    for _, row in ipairs(bindings.bindings) do expected[row.alias] = row end
    assert(#module.grants == #bindings.bindings, "Supply every independent role, with no inferred extra grant")
    for _, grant in ipairs(module.grants) do
        local row = assert(expected[grant.alias], "Unknown/repeated Go2 capability alias")
        expected[grant.alias] = nil
        assert(grant.operation == row.operation and grant.resource == row.resource and grant.type == row.type
            and grant.identity == row.identity, "Go2 source/deployment operation or complete native type differs")
        if row.codec_identity then
            assert(grant.limits["adapter-codec-identity"] == row.codec_identity,
                "The complete original canonical codec identity must match")
        end
        if row.depth then
            assert(grant.limits["qos.depth"] == tostring(row.depth)
                and grant.limits["qos.history"] == "keep-last"
                and grant.limits["qos.reliability"] == "reliable"
                and grant.limits["qos.durability"] == row.durability,
                "Preserve the source-selected queue/QoS contract")
        end
    end
    return import("provider", {rootdir = path.join(root, "tools/platform/ros"), anonymous = true})
        .run(target, root, context)
end
