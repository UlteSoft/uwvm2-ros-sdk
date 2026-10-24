-- @file library_bundle.lua
-- @brief Restore the complete original pinned SDK package required by library mode.
-- @details This uses the one common checksum-verified tool-bundle installer.
-- Original NuGet package bytes remain unchanged and ordinary builds stay offline.

-- @brief Select the explicit original library SDK dependency closure.
-- @param target Shared managed target using the genuine upstream library mode.
-- @param root Installed SDK root containing the original-package manifest.
-- @return Verified offline feed and exact package/archive receipt.
function prepare(target, root)
	import("core.base.json")
	assert(
		target:kind() == "shared",
		"The extra original SDK package belongs to genuine CLR library mode"
	)
	local manifest_path = target:values("ros.sdk.dotnet_library_bundle")
		or os.getenv("UWVM_ROS_DOTNET_LIBRARY_BUNDLE")
		or path.join(
			root,
			"share/toolchains/host",
			os.host() .. "-" .. os.arch(),
			"dotnet-library-pack.json"
		)
	assert(
		os.isfile(manifest_path),
		"Install the original pinned Microsoft.NET.Sdk.WebAssembly.Pack offline bundle for CLR shared targets"
	)
	local manifest = json.loadfile(manifest_path)
	assert(
		manifest.original_package_id == "microsoft.net.sdk.webassembly.pack"
			and manifest.original_package_version == "9.0.0-preview.6.24327.7",
		"The original library SDK package must match the pinned runtime build"
	)
	assert(
		type(manifest.programs) == "table",
		"Declare the original package supplement's complete program table"
	)
	for _ in pairs(manifest.programs) do
		assert(
			false,
			"The original package supplement must not introduce a substitute compiler or interpreter"
		)
	end
	local home = os.getenv("XDG_CACHE_HOME")
		or path.join(assert(os.getenv("HOME"), "Set HOME or XDG_CACHE_HOME"), ".cache")
	local bundle = import(
		"tool_bundle",
		{ rootdir = path.join(root, "tools/xmake"), anonymous = true }
	).install(path.absolute(manifest_path), path.join(home, "uwvm-ros/dotnet-library-pack"))
	local feed = path.join(bundle, "nuget")
	local package =
		path.join(feed, "microsoft.net.sdk.webassembly.pack.9.0.0-preview.6.24327.7.nupkg")
	assert(
		os.isfile(package),
		"The complete unchanged original library SDK package is missing from its verified closure"
	)
	return feed,
		{
			id = manifest.original_package_id,
			version = manifest.original_package_version,
			original_nupkg_sha256 = hash.sha256(package),
			bundle_sha256 = manifest.sha256,
			manifest_sha256 = hash.sha256(manifest_path),
		}
end
