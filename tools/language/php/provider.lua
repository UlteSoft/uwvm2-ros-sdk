-- @file provider.lua
-- @brief Use the common source-slot packager with the one pinned PHP/Zend VM.
-- @details The shared packager validates PHP 8.4.13, exact backend imports and
-- source bounds. Platform modules remain ordinary genuine PHP source files.

-- @brief Describe exact common adapter capabilities, separately from acceptance.
-- @return Version-one PHP lifecycle with an explicit genuine reactor dependency.
function describe()
	return {
		api_version = 1,
		languages = { "php" },
		targets = { "wasm32-wasip1" },
		exception_profiles = { "noeh" },
		features = {},
		artifact_kinds = {
			shared = {
				languages = { "php" },
				targets = { "wasm32-wasip1" },
				exception_profiles = { "noeh" },
				dependencies = {},
			},
		},
	}
end

-- @brief Validate a PHP target without executing any guest code.
-- @param target Xmake target.
-- @param root SDK root.
-- @param context Validated public version-one request.
function configure(target, root, context)
	assert(target:values("ros.sdk.language") == "php", "Select genuine PHP source")
	return import(
		"provider",
		{ rootdir = path.join(root, "tools/language/ruby"), anonymous = true }
	).configure(target, root, context)
end

-- @brief Embed the complete PHP source graph in the checked genuine engine.
-- @param target Xmake target.
-- @param root SDK root.
-- @param context Validated public version-one request.
function build(target, root, context)
	assert(target:values("ros.sdk.language") == "php", "Select genuine PHP source")
	return import(
		"provider",
		{ rootdir = path.join(root, "tools/language/ruby"), anonymous = true }
	).build(target, root, context)
end
