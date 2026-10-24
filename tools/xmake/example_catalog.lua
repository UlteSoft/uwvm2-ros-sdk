-- @file example_catalog.lua
-- @brief Build the one shared example index after all provider overlays are merged.
-- @details This maintainer action reads source descriptions without configuring
-- targets or executing source. It indexes vendor-neutral SDK-relative paths;
-- source presence is never converted into a build or execution qualification.
function main(root)
    import("core.base.json")
    root = path.absolute(root)
    local base = path.join(root, "example/platform")
    local entries = {}
    local descriptions = {}
    -- Platform and language aggregators include application projects but are
    -- not additional standalone examples. Index only actual scenario folders.
    for _, filename in ipairs(os.files(path.join(base, "**/xmake.lua"))) do
        local relative = path.relative(path.directory(filename), base):gsub("\\", "/")
        if relative:match("^[^/]+/[^/]+/.+$") then
            table.insert(descriptions, filename)
        end
    end
    table.sort(descriptions)
    for _, filename in ipairs(descriptions) do
        local directory = path.directory(filename)
        local relative = path.relative(directory, base):gsub("\\", "/")
        local platform, language, scenario = relative:match("^([^/]+)/([^/]+)/(.+)$")
        assert(platform and language and scenario, "Example needs a platform, language and independent project directory")
        local source = assert(io.readfile(filename))
        assert(not source:find("../", 1, true) and not source:lower():find("%%2e%%2e"),
               "Examples cannot use parent-depth traversal")
        local backend, distribution = source:match('set_ros([12])_version%s*%(%s*"([a-z0-9_]+)"%s*%)')
        table.insert(entries, {
            platform = platform, language = language, scenario = scenario,
            backend = backend and "ros" .. backend or (platform == "wasi" and "wasi" or nil),
            distribution = distribution, path = "example/platform/" .. relative,
            build = "xmake", run = "xmake run", qualified = false
        })
    end
    json.savefile(path.join(root, "share/platform/examples/catalog.json"), {
        format = "uwvm-example-catalog-v1", entries = entries,
        qualification = "Source presence is not build or runtime execution acceptance."
    })
    print("Indexed " .. #entries .. " independent source projects without invoking a compiler")
end
