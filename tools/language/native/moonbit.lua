-- @file moonbit.lua
-- @brief Compile genuine MoonBit packages using explicit source/dependency data.
-- @details All package names, import aliases and sources belong to the caller.
-- The common compiler action supplies the pinned linear-memory core, frontend
-- and native loader; it interprets no robot schema and changes no permissions.

-- @brief Compile and link actual MoonBit source into one WASI command.
-- @param target Ordinary Xmake target with genuine .mbt entry sources.
-- @param root Installed SDK distribution.
-- @param action Explicit ordered packages and entry dependency aliases.
-- @return None; compiler/linker failures retain their original diagnostics.
function build(target, root, action)
	import("core.base.json")
	assert(type(action) == "table", "Supply explicit MoonBit packages and entry dependencies")
	assert(
		target:arch() == "wasm32" and target:plat() == "wasm-wasip1",
		"Select exact MoonBit memory32 Preview1"
	)
	local core =
		import("core", { rootdir = path.join(root, "tools/language/native"), anonymous = true })
	local closure, programs = core.frontend(root, "moonbit")
	local standard = path.join(closure, "core")
	local cache =
		path.join(path.absolute(target:scriptdir()), ".uwvm-ros/native", target:name(), "moonbit")
	os.mkdir(cache)
	local interfaces = {
		utf8 = path.join(standard, "encoding/utf8/utf8.mi"),
		float = path.join(standard, "float/float.mi"),
	}
	local cores = { path.join(standard, "abort/abort.core"), path.join(standard, "core.core") }
	local names = {}
	local function invoke(arguments)
		os.vrunv(
			programs.loader,
			table.join(
				{ "--library-path", path.join(closure, "runtime"), programs.moonc },
				arguments
			),
			{
				envs = { MOON_HOME = closure },
			}
		)
	end
	local function compile(name, sources, dependencies, main)
		assert(
			type(name) == "string" and name:match("^[A-Za-z_][A-Za-z0-9_/-]*$"),
			"Invalid MoonBit package name"
		)
		assert(not names[name], "Duplicate MoonBit package: " .. name)
		names[name] = true
		assert(#sources > 0, "A real MoonBit package needs source files")
		local output = path.join(cache, name:gsub("/", "_") .. ".core")
		local arguments = table.join(
			{ "build-package" },
			sources,
			{ "-target", "wasm", "-pkg", name, "-std-path", standard, "-o", output }
		)
		for _, dependency in ipairs(dependencies or {}) do
			local source = type(dependency) == "table" and dependency.source or dependency
			local alias = type(dependency) == "table" and dependency.alias or dependency
			assert(
				type(alias) == "string" and alias:match("^[A-Za-z_][A-Za-z0-9_]*$"),
				"Invalid MoonBit import alias"
			)
			table.join2(arguments, {
				"-i",
				assert(interfaces[source], "Missing MoonBit package: " .. tostring(source))
					.. ":"
					.. alias,
			})
		end
		if main then
			table.insert(arguments, "-is-main")
		end
		invoke(arguments)
		table.insert(cores, output)
		return path.join(cache, name:gsub("/", "_") .. ".mi")
	end
	for _, package in ipairs(action.packages or {}) do
		assert(
			type(package.alias) == "string" and package.alias:match("^[A-Za-z_][A-Za-z0-9_]*$"),
			"Invalid package alias"
		)
		assert(
			not interfaces[package.alias],
			"Duplicate MoonBit dependency alias: " .. package.alias
		)
		local sources = {}
		if package.sources then
			for _, relative in ipairs(package.sources) do
				table.insert(sources, core.installed(root, relative))
			end
		else
			sources = os.files(path.join(core.installed(root, package.directory), "*.mbt"))
			table.sort(sources)
		end
		interfaces[package.alias] = compile(package.name, sources, package.dependencies, false)
	end
	local sources = {}
	for _, source in ipairs(target:sourcefiles()) do
		assert(path.extension(source) == ".mbt", "Declare genuine MoonBit application source")
		table.insert(sources, path.absolute(source))
	end
	local main = action.main_package or "uwvm/command"
	compile(main, sources, action.entry_dependencies or {}, true)
	local output = path.absolute(target:targetfile())
	os.mkdir(path.directory(output))
	local heap = action.heap_start or 8519680
	assert(
		type(heap) == "number" and heap >= 65536 and heap % 16 == 0,
		"Use an aligned explicit MoonBit ABI arena"
	)
	invoke(table.join({ "link-core" }, cores, {
		"-target",
		"wasm",
		"-main",
		main,
		"-o",
		output,
		"-heap-start-address",
		tostring(heap),
		"-memory-limits-min",
		"256",
		"-memory-limits-max",
		"1024",
		"-export-memory-name",
		"memory",
		"-no-block-params",
		"-wasi",
	}))
	assert(os.isfile(output), "The actual MoonBit linker produced no Wasm command")
end
