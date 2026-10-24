/**
 * @file main.mjs
 * @brief Execute one complete ABB read_speed observation using genuine QuickJS.
 * @details Public modules resolve inside the single command. The deployment
 * supplies a granted alias; no controller write or service replay is performed.
 */
import * as observation from "abb/js/observation";

globalThis.exitCode = __uwvm.argv.length === 2 ? observation.output(observation.read_speed(__uwvm.argv[1])) : 22;
