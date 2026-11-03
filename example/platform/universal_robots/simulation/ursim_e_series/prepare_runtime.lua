-- SPDX-License-Identifier: Apache-2.0
-- One-use private copies only; no native controller,driver or SDK application starts.
function main(sdk,bundle,output)
    assert(sdk and bundle and output,"Usage: xmake lua prepare_runtime.lua SDK INPUT_BUNDLE FRESH_PRIVATE_OUTPUT")
    for _,value in ipairs({sdk,bundle,output}) do assert(path.is_absolute(value),"Explicit absolute producer/private-output paths required") end
    local python=import("python_runtime",{rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    os.execv(python,{"-B",path.join(os.scriptdir(),"native_scene.py"),"--sdk-root",sdk,"--input-bundle",bundle,"--output",output,"--prepare-only"})
end
