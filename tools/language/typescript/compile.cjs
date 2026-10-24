// SPDX-License-Identifier: Apache-2.0
/**
 * @file compile.cjs
 * @brief Type-check a complete TypeScript program and emit guest ECMAScript.
 * @details The pinned Microsoft compiler supplies parsing, type checking and
 * emission. This host tool never imports or executes an application module.
 * Module specifiers are rewritten through the compiler AST to the finite names
 * consumed by the existing QuickJS guest loader. Build paths stay out of Wasm.
 */
"use strict";

const fs = require("node:fs");
const path = require("node:path");
const crypto = require("node:crypto");

/** @brief Hash exact source bytes for the private reproducibility receipt. */
function digest(bytes)
{
    return crypto.createHash("sha256").update(bytes).digest("hex");
}

/** @brief Require a regular file inside one approved source root. */
function confined(filename, roots)
{
    const resolved = fs.realpathSync(filename);
    if(!roots.some(root => resolved === root || resolved.startsWith(root + path.sep)))
    {
        throw new Error("A TypeScript dependency escaped the declared source roots");
    }
    if(!fs.statSync(resolved).isFile())
    {
        throw new Error("A TypeScript dependency must be a regular source file");
    }
    return resolved;
}

/**
 * @brief Compile one entry and its complete statically declared dependency graph.
 * @param configuration SDK-authored JSON paths and exact compiler version.
 * @details Node and compiler packages are pinned by the surrounding Xmake
 * installer. The compiler cannot select an ambient npm package or tsconfig.
 */
function compile(configuration)
{
    const ts = require(configuration.compiler);
    if(ts.version !== "5.9.3")
    {
        throw new Error("The shared TypeScript compiler version differs from 5.9.3");
    }
    const sdk = fs.realpathSync(configuration.sdk);
    const project = fs.realpathSync(configuration.project);
    const compilerRoot = fs.realpathSync(path.dirname(configuration.compiler));
    const roots = [sdk, project, compilerRoot];
    const entry = confined(configuration.entry, [project]);
    const output = path.resolve(configuration.output);
    const globalSource = confined(path.join(sdk, "include/language/typescript/guest.d.ts"), [sdk]);
    const options = {
        target: ts.ScriptTarget.ES2022,
        module: ts.ModuleKind.ES2022,
        moduleResolution: ts.ModuleResolutionKind.Bundler,
        strict: true,
        noEmitOnError: true,
        noEmit: false,
        allowJs: true,
        checkJs: false,
        skipLibCheck: false,
        lib: ["lib.es2022.d.ts"],
        types: [],
        noResolve: false,
        outDir: output,
        sourceMap: false,
        declaration: false,
        removeComments: false,
        newLine: ts.NewLineKind.LineFeed,
        allowSyntheticDefaultImports: false,
        esModuleInterop: false,
    };
    const host = ts.createCompilerHost(options);
    const readFile = host.readFile.bind(host);
    const inputs = new Map();
    host.readFile = filename => {
        if(!fs.existsSync(filename))
        {
            return undefined;
        }
        const absolute = confined(filename, roots);
        const source = readFile(absolute);
        if(source !== undefined)
        {
            inputs.set(absolute, digest(Buffer.from(source)));
        }
        return source;
    };
    const publicRoots = [path.join(sdk, "include/platform"), path.join(sdk, "include/language")];
    const publicModules = new Map();
    if(configuration.bundle_manifest)
    {
        const manifest = JSON.parse(fs.readFileSync(confined(configuration.bundle_manifest, [sdk]), "utf8"));
        if(manifest.format !== "uwvm-language-bundle-v1" || manifest.language !== "js"
            || manifest.backend !== configuration.backend)
        {
            throw new Error("The existing JavaScript module manifest does not match this backend");
        }
        for(const row of manifest.modules)
        {
            const filename = confined(path.join(sdk, row.file), [sdk]);
            if(digest(fs.readFileSync(filename)) !== row.sha256)
            {
                throw new Error("A declared JavaScript binding changed: " + row.name);
            }
            if(publicModules.has(row.name))
            {
                throw new Error("Duplicate public JavaScript module identity");
            }
            publicModules.set(row.name, filename);
        }
    }
    const resolved = new Map();
    const runtimeRoots = new Set([entry]);
    const declarationBackings = new Map();

    /**
     * @brief Pair a declaration with its actual neighboring ECMAScript source.
     * @details Static types come from .d.mts/.d.ts, while guest modules retain
     * the original JS implementation and constructor identity. Missing backing
     * code remains a declaration-only dependency and cannot become a runtime
     * import merely because its type declaration exists.
     */
    function declaredFile(filename)
    {
        let selected = confined(filename, roots);
        let backing;
        let declaration;
        if(selected.endsWith(".mjs"))
        {
            backing = selected;
            declaration = selected.slice(0, -4) + ".d.mts";
        }
        else if(selected.endsWith(".js"))
        {
            backing = selected;
            declaration = selected.slice(0, -3) + ".d.ts";
        }
        else if(selected.endsWith(".d.mts"))
        {
            declaration = selected;
            backing = selected.slice(0, -6) + ".mjs";
        }
        else if(selected.endsWith(".d.ts"))
        {
            declaration = selected;
            backing = selected.slice(0, -5) + ".js";
        }
        if(declaration && fs.existsSync(declaration))
        {
            selected = confined(declaration, roots);
            if(backing && fs.existsSync(backing))
            {
                backing = confined(backing, roots);
                declarationBackings.set(selected, backing);
                runtimeRoots.add(backing);
            }
        }
        const extension = selected.endsWith(".d.mts") ? ts.Extension.Dmts
            : selected.endsWith(".d.ts") ? ts.Extension.Dts
            : selected.endsWith(".mts") ? ts.Extension.Mts
            : selected.endsWith(".ts") ? ts.Extension.Ts
            : selected.endsWith(".mjs") ? ts.Extension.Mjs : ts.Extension.Js;
        return {resolvedFileName: selected, extension, isExternalLibraryImport: false};
    }

    /** @brief Resolve a public SDK import or a project-local source dependency. */
    function resolve(specifier, containingFile)
    {
        const key = containingFile + "\0" + specifier;
        if(resolved.has(key))
        {
            return resolved.get(key);
        }
        let found;
        if(specifier.startsWith("."))
        {
            found = ts.resolveModuleName(specifier, containingFile, options, host).resolvedModule;
            if(found)
            {
                found = declaredFile(found.resolvedFileName);
            }
        }
        else if(/^[A-Za-z_][A-Za-z0-9_./-]*$/.test(specifier) && !specifier.includes(".."))
        {
            if(publicModules.has(specifier))
            {
                found = declaredFile(publicModules.get(specifier));
            }
            const suffixes = /\.(?:ts|mts|js|mjs)$/.test(specifier) ? [""]
                : [".ts", ".mts", ".d.ts", ".d.mts", ".mjs", ".js", "/index.ts", "/index.mjs"];
            for(const root of publicRoots)
            {
                if(found)
                {
                    break;
                }
                for(const suffix of suffixes)
                {
                    const candidate = path.join(root, specifier + suffix);
                    if(fs.existsSync(candidate) && fs.statSync(candidate).isFile())
                    {
                        found = declaredFile(confined(candidate, [sdk]));
                        break;
                    }
                }
                if(found)
                {
                    break;
                }
            }
        }
        if(found)
        {
            found.resolvedFileName = confined(found.resolvedFileName, roots);
        }
        resolved.set(key, found);
        return found;
    }
    host.resolveModuleNames = (names, containingFile) => names.map(name => resolve(name, containingFile));
    let program;
    let rootsBefore;
    do
    {
        rootsBefore = runtimeRoots.size;
        program = ts.createProgram([...runtimeRoots, globalSource], options, host);
        // Resolve the complete semantic graph before deciding whether all
        // declaration-backed runtime modules have entered the real program.
        program.getTypeChecker();
        if(runtimeRoots.size > 10000)
        {
            throw new Error("The embedded TypeScript graph exceeds 10000 runtime source modules");
        }
    }
    while(rootsBefore !== runtimeRoots.size);
    const diagnostics = ts.getPreEmitDiagnostics(program);
    if(diagnostics.length)
    {
        process.stderr.write(ts.formatDiagnosticsWithColorAndContext(diagnostics, {
            getCanonicalFileName: filename => filename,
            getCurrentDirectory: () => project,
            getNewLine: () => "\n",
        }));
        return 2;
    }
    const sourceFiles = program.getSourceFiles().filter(source => !source.isDeclarationFile);
    if(configuration.kind !== "module" && sourceFiles.some(source => ts.isExternalModule(source)))
    {
        throw new Error("The scalar library ABI requires a script with globalThis.apply; ESM libraries are not this ABI");
    }
    const identities = new Map();
    identities.set(entry, "application");
    for(const source of sourceFiles)
    {
        const absolute = confined(source.fileName, roots);
        if(!identities.has(absolute))
        {
            const sdkRelative = path.relative(sdk, absolute).split(path.sep).join("/");
            const projectRelative = path.relative(project, absolute).split(path.sep).join("/");
            const logical = absolute.startsWith(sdk + path.sep) ? sdkRelative : "project/" + projectRelative;
            // Fixed portable identities avoid leaking installation paths and
            // make two source files with the same basename unambiguous.
            identities.set(absolute, "typescript/module/" + digest(logical).slice(0, 24));
        }
    }

    /** @brief Rewrite only real AST module references; never remove types by text. */
    function transformer(context)
    {
        return source => {
            const reference = node => {
                if(ts.isImportDeclaration(node) || ts.isExportDeclaration(node))
                {
                    if(!node.moduleSpecifier)
                    {
                        return node;
                    }
                    const specifier = node.moduleSpecifier;
                    if(!ts.isStringLiteral(specifier))
                    {
                        throw new Error("A static module reference must be a literal");
                    }
                    const dependency = resolve(specifier.text, source.fileName);
                    if(!dependency)
                    {
                        throw new Error("An emitted module dependency was not resolved: " + specifier.text);
                    }
                    const runtime = declarationBackings.get(dependency.resolvedFileName)
                        || dependency.resolvedFileName;
                    const identity = identities.get(runtime);
                    if(!identity)
                    {
                        // A declaration-only dependency may appear solely in
                        // import type/export type and is removed by TypeScript.
                        if(node.isTypeOnly || (node.importClause && node.importClause.isTypeOnly))
                        {
                            return node;
                        }
                        throw new Error("A runtime import has only declarations: " + specifier.text);
                    }
                    const literal = context.factory.createStringLiteral(identity);
                    if(ts.isImportDeclaration(node))
                    {
                        return context.factory.updateImportDeclaration(node, node.modifiers,
                            node.importClause, literal, node.attributes);
                    }
                    return context.factory.updateExportDeclaration(node, node.modifiers,
                        node.isTypeOnly, node.exportClause, literal, node.attributes);
                }
                if(ts.isCallExpression(node) && node.expression.kind === ts.SyntaxKind.ImportKeyword)
                {
                    throw new Error("Dynamic import needs an explicit guest loading contract; use static imports");
                }
                return ts.visitEachChild(node, reference, context);
            };
            return ts.visitNode(source, reference);
        };
    }
    const emitted = new Map();
    const result = program.emit(undefined, (filename, text, _bom, _error, sources) => {
        if(sources && sources.length === 1)
        {
            emitted.set(confined(sources[0].fileName, roots), text);
        }
    // Rewrite runtime imports after the genuine compiler has erased type-only
    // uses, including ordinary imports referenced exclusively in annotations.
    // A declaration file therefore never becomes a fictitious guest module.
    }, undefined, false, {after: [transformer]});
    if(result.emitSkipped || result.diagnostics.length)
    {
        throw new Error("The genuine TypeScript compiler refused emission");
    }
    fs.mkdirSync(output, {recursive: true});
    const modules = [];
    for(const [filename, identity] of identities)
    {
        const source = emitted.get(filename);
        if(source === undefined)
        {
            throw new Error("An actual runtime module has no compiler output");
        }
        const member = identity === "application" ? "application.mjs"
            : "module-" + identity.split("/").at(-1) + ".mjs";
        fs.writeFileSync(path.join(output, member), source);
        if(identity !== "application")
        {
            modules.push({name: identity, file: member, sha256: digest(source)});
        }
    }
    if(!emitted.has(entry))
    {
        throw new Error("The entry source did not emit");
    }
    const manifest = {format: "uwvm-language-bundle-v1", language: "js",
        backend: configuration.backend, modules, default_authority: []};
    fs.writeFileSync(path.join(output, "bundle.json"), JSON.stringify(manifest, null, 2) + "\n");
    const records = Array.from(inputs, ([filename, sha256]) => ({
        path: filename.startsWith(sdk + path.sep) ? "sdk/" + path.relative(sdk, filename)
            : filename.startsWith(compilerRoot + path.sep) ? "compiler/" + path.relative(compilerRoot, filename)
            : "application/" + path.relative(project, filename),
        sha256,
    }));
    fs.writeFileSync(path.join(output, "compiler-receipt.json"), JSON.stringify({
        format: "uwvm-typescript-build-v1", version: ts.version,
        input_language: "typescript", output_language: "javascript", strict: true,
        host_application_execution: false, guest_execution: false,
        inputs: records, emitted_modules: identities.size,
        entry_sha256: digest(emitted.get(entry)),
    }, null, 2) + "\n");
    return 0;
}

try
{
    if(process.argv.length !== 3)
    {
        throw new Error("Supply the one Xmake-authored compiler configuration");
    }
    process.exitCode = compile(JSON.parse(fs.readFileSync(process.argv[2], "utf8")));
}
catch(error)
{
    process.stderr.write(String(error.stack || error) + "\n");
    process.exitCode = 2;
}
