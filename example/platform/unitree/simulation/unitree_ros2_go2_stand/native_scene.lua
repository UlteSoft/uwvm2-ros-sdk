-- SPDX-License-Identifier: Apache-2.0
-- Exact native Go2 environment only; application ROS/control remains Wasm.
function main(sdk,bundle,output,ready,stop,duration)
    assert(sdk and bundle and output and ready,"Usage: xmake lua native_scene.lua SDK NATIVE_INPUT_BUNDLE OUTPUT READY [STOP] [SECONDS]")
    for _,value in ipairs({sdk,bundle,output,ready}) do assert(path.is_absolute(value),"Explicit absolute constructor/output paths required") end
    local python=import("python_runtime",{rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    local argv={"-B",path.join(os.scriptdir(),"native_launcher.py"),"--sdk-root",sdk,"--input-bundle",bundle,"--output",output,"--ready-file",ready}
    if stop and stop~="" then argv[#argv+1]="--stop-file";argv[#argv+1]=stop end
    if duration then argv[#argv+1]="--duration-seconds";argv[#argv+1]=duration end
    os.execv(python,argv)
end
