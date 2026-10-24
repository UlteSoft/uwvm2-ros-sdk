/**
 * @file assemblyscript.mjs
 * @brief Format AssemblyScript while preserving its declaration decorators.
 * @details TypeScript formatters reject AssemblyScript's @external on ambient
 * function declarations. This adapter temporarily represents standalone
 * decorators as unique comments, invokes the real Prettier TypeScript printer,
 * restores every decorator, and compares before/after AssemblyScript AST prints.
 * All executable syntax is parsed by the actual AssemblyScript compiler. Missing
 * tools, invalid syntax, lost markers, or an AST change fail without output.
 * @see parse, format
 */
import { createRequire } from 'node:module';
import { pathToFileURL } from 'node:url';

const require = createRequire(import.meta.url);
const roots = [process.env.ROSWASM_FORMAT_NODE_ROOT, process.cwd()].filter(Boolean);
const assemblyscript = await import(pathToFileURL(require.resolve('assemblyscript/dist/assemblyscript.js', { paths: roots })));
const prettierModule = await import(pathToFileURL(require.resolve('prettier', { paths: roots })));
const prettier = prettierModule.default ?? prettierModule;

/**
 * @brief Parse a complete AssemblyScript module with its genuine source parser.
 * @param {string} source Immutable input source text.
 * @returns {string} Canonical compiler AST print for semantic-syntax comparison.
 * @throws {Error} The compiler reports a syntax error or no complete source.
 * @details Types are not resolved here; real example builds check type validity.
 */
function parse(source) {
    const parser = new assemblyscript.Parser();
    parser.parseFile(source, 'formatted.ts', true);
    if (parser.diagnostics.some((diagnostic) => diagnostic.category === 3)) {
        throw new Error('AssemblyScript parser refused the formatting input');
    }
    if (parser.sources.length !== 1) throw new Error('Expected one AssemblyScript source');
    return assemblyscript.ASTBuilder.build(parser.sources[0]);
}

/**
 * @brief Format a source module with a lossless standalone-decorator adapter.
 * @param {string} source Complete borrowed source text.
 * @returns {Promise<string>} Formatted source with unchanged compiler AST print.
 * @details Each original decorator is restored exactly once. Unique comment
 * markers are refused in the original input to avoid ambiguous substitution.
 */
async function format(source) {
    const original = parse(source);
    if (source.includes('ROSWASM_AS_DECORATOR_')) throw new Error('Reserved formatting marker');
    const decorators = [];
    const masked = source.replace(/^([ \t]*)(@[A-Za-z_]\w*(?:\([^()\r\n]*\))?)[ \t]*/gm, (_, indent, decorator) => {
        const index = decorators.push(decorator) - 1;
        return `${indent}/* ROSWASM_AS_DECORATOR_${index} */\n${indent}`;
    });
    let result = await prettier.format(masked, {
        parser: 'typescript', tabWidth: 4, printWidth: 120, singleQuote: true,
    });
    for (let index = 0; index < decorators.length; ++index) {
        const marker = `/* ROSWASM_AS_DECORATOR_${index} */`;
        if (result.split(marker).length !== 2) throw new Error('Decorator marker was lost or duplicated');
        result = result.replace(marker, decorators[index]);
    }
    if (parse(result) !== original) throw new Error('AssemblyScript syntax changed while formatting');
    return result;
}

const input = [];
for await (const chunk of process.stdin) input.push(chunk);
let formatted = await format(Buffer.concat(input).toString('utf8'));
// Moving an inline ambient decorator onto its own line can change Prettier's
// blank-line decision once. Require a bounded fixed point before emitting text.
let stable = false;
for(let attempt = 0; attempt < 4; ++attempt) {
    const next = await format(formatted);
    if(next === formatted) {
        stable = true;
        break;
    }
    formatted = next;
}
if(!stable) throw new Error('AssemblyScript formatting did not reach a fixed point');
process.stdout.write(formatted);
