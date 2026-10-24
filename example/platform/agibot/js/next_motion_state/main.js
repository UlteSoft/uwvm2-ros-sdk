// SPDX-License-Identifier: Apache-2.0
/** Execute this complete observation only inside the packed QuickJS Wasm VM. */
import {nextMotionState} from "agibot/js/client";
import {json} from "agibot/js/records";

if(__uwvm.argv.length !== 2)
{
    throw new Error("Expected exactly one granted Agibot alias");
}
const result = nextMotionState(__uwvm.argv[1]);
if(result.error !== 0 || result.cleanup !== 0)
{
    throw new Error("Agibot observation failed: " + result.error + "; close: " + result.cleanup);
}
const outputError = __uwvm.output(json(result.value));
exitCode = outputError !== 0 || result.vendor != 0 ? 1 : 0;
