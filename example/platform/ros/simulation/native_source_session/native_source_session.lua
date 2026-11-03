-- SPDX-License-Identifier: Apache-2.0
-- Native supervision only; caller retains strict admission/guest phase ownership.
function main(sdk,config,budget,output,ready,stop,live)
    assert(sdk and config and budget and output and ready,"Usage: xmake lua native_source_session.lua SDK INPUT_CONFIG PHASE_BUDGET OUTPUT READY [STOP] [LIVE_SECONDS]")
    for _,value in ipairs({sdk,config,budget,output,ready}) do assert(path.is_absolute(value),"Explicit absolute paths required") end
    local python=import("python_runtime",{rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    local argv={"-B",path.join(os.scriptdir(),"native_source_session.py"),"--sdk-root",sdk,"--input-config",config,"--phase-budget",budget,"--output",output,"--ready-file",ready}
    if stop and stop~="" then argv[#argv+1]="--stop-file";argv[#argv+1]=stop end
    if live then argv[#argv+1]="--live-seconds";argv[#argv+1]=live end
    os.execv(python,argv)
end
