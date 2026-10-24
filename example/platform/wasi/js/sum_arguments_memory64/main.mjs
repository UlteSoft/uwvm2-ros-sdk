/**
 * @file main.mjs
 * @brief Execute sum_arguments in the genuine QuickJS engine.
 * @details Only arguments and inherited standard streams are consumed.
 */
import * as std from "std";

/** @brief Validate complete decimal tokens and keep exact signed 32-bit totals. */
function main()
{
    const values = scriptArgs.slice(1);
    if(values.length > 1024)
        return 22;
    let total = 0;
    for(const text of values)
    {
        const digits = text[0] === "+" || text[0] === "-" ? text.slice(1) : text;
        if(text.length > 11 || digits.length === 0 || [...digits ].some(c => c < "0" || c > "9"))
            return 22;
        const value = Number(text);
        if(value < -2147483648 || value > 2147483647)
            return 22;
        total += value;
        if(total < -2147483648 || total > 2147483647)
            return 22;
    }
    std.out.puts(total.toString() + "\n");
    return std.out.flush() !== 0 || std.out.error() ? 5 : 0;
}

std.exit(main());
