/**
 * @file format_assemblyscript.mjs
 * @brief Expand control-flow bodies before applying the SDK AssemblyScript printer.
 * @details The genuine AssemblyScript parser identifies statement boundaries.
 * Only braces and whitespace are inserted; the compiler's canonical AST must
 * match the same explicit-block transformation exactly. Comments, imports and
 * decorators remain in their original order. This maintenance tool neither
 * compiles nor executes a guest application.
 */
import {createRequire} from 'node:module';
import {fileURLToPath, pathToFileURL} from 'node:url';
import {spawnSync} from 'node:child_process';

const require = createRequire(import.meta.url);
const roots = [ process.env.ROSWASM_FORMAT_NODE_ROOT, process.cwd() ].filter(Boolean);
const compiler = await import(pathToFileURL(require.resolve('assemblyscript/dist/assemblyscript.js', {paths : roots})));

/**
 * @brief Parse one complete module without compiling or resolving imports.
 * @param {string} source Complete immutable AssemblyScript input.
 * @returns {object} The original parsed source node.
 * @throws {Error} Syntax diagnostics or an unexpected source count.
 * @details The caller retains ownership of the returned maintenance-only tree.
 */
function parse(source)
{
    const parser = new compiler.Parser();
    parser.parseFile(source, 'unitree-format.ts', true);
    if(parser.sources.length !== 1 || parser.diagnostics.some((entry) => entry.category === 3))
    {
        throw new Error('AssemblyScript parser refused the source-formatting input');
    }
    return parser.sources[0];
}

/**
 * @brief Make each original control-flow body an explicit, readable block.
 * @param {string} source Complete source text with comments and decorators.
 * @returns {string} Equivalent source with explicit control-flow blocks.
 * @throws {Error} Parsed output differs from the exact expected AST transformation.
 * @details Source positions come exclusively from the real parser. No regular
 * expression guesses where a statement, string, comment or nested body ends.
 */
function expandBodies(source)
{
    const tree = parse(source);
    const edits = [];
    const visited = new Set();

    /**
     * @brief Wrap one parser-owned statement and preserve its complete source span.
     * @param {object} owner Control-flow AST node whose body is being normalized.
     * @param {string} key Exact body property documented by AssemblyScript.
     * @returns {void} Updates only the expected AST and pending text insertions.
     */
    function wrap(owner, key)
    {
        const statement = owner[key];
        if(!statement || statement.kind === compiler.NodeKind.Block)
        {
            return;
        }
        edits.push({offset : statement.range.start, text : '{\n'});
        // Statement ranges exclude their optional terminating semicolon.
        // Keep it inside the new block so no empty statement is introduced.
        const end = statement.range.end + (source[statement.range.end] === ';' ? 1 : 0);
        edits.push({offset : end, text : '\n}'});
        owner[key] = compiler.Node.createBlockStatement([ statement ], statement.range);
    }

    /**
     * @brief Traverse real syntax nodes without following circular source ranges.
     * @param {object | Array | null} node Borrowed parser-owned syntax value.
     * @returns {void} Records each original statement at most once.
     */
    function visit(node)
    {
        if(!node || typeof node !== 'object' || visited.has(node))
        {
            return;
        }
        visited.add(node);
        if(Array.isArray(node))
        {
            for(const child of node)
            {
                visit(child);
            }
            return;
        }
        for(const [key, child] of Object.entries(node))
        {
            if(key !== 'range' && key !== 'source')
            {
                visit(child);
            }
        }
        if(node.kind === compiler.NodeKind.If)
        {
            wrap(node, 'ifTrue');
            if(node.ifFalse?.kind !== compiler.NodeKind.If)
            {
                wrap(node, 'ifFalse');
            }
        }
        else if(node.kind === compiler.NodeKind.For || node.kind === compiler.NodeKind.ForOf || node.kind === compiler.NodeKind.While ||
                node.kind === compiler.NodeKind.Do)
        {
            wrap(node, 'body');
        }
    }

    visit(tree);
    const expected = compiler.ASTBuilder.build(tree);
    let result = source;
    for(const edit of edits.sort((left, right) => right.offset - left.offset))
    {
        result = result.slice(0, edit.offset) + edit.text + result.slice(edit.offset);
    }
    if(compiler.ASTBuilder.build(parse(result)) !== expected)
    {
        throw new Error('Explicit blocks changed more than the intended control-flow structure');
    }
    return result;
}

const chunks = [];
for await (const chunk of process.stdin)
{
    chunks.push(chunk);
}
const expanded = expandBodies(Buffer.concat(chunks).toString('utf8'));
const printer = fileURLToPath(new URL('../../formatters/assemblyscript.mjs', import.meta.url));
const formatted = spawnSync(process.execPath, [ printer ], {
    input : expanded,
    encoding : 'utf8',
    maxBuffer : 32 * 1024 * 1024,
});
if(formatted.error || formatted.status !== 0)
{
    throw formatted.error ?? new Error(formatted.stderr || 'The SDK AssemblyScript printer failed');
}
process.stdout.write(formatted.stdout);
