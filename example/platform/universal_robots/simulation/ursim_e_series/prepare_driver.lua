-- SPDX-License-Identifier: Apache-2.0
-- Original native UR5e model/config construction; no task or controller starts.
function main(sdk, closure, environment, output)
    assert(sdk and closure and environment and output, "Usage: xmake lua prepare_driver.lua SDK NATIVE_CLOSURE NATIVE_ENV OUTPUT")
    for _,value in ipairs({sdk,closure,environment,output}) do assert(path.is_absolute(value),"Explicit absolute paths required") end
    local python=import("python_runtime",{rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    os.execv(python,{"-B",path.join(os.scriptdir(),"prepare_driver.py"),"--sdk-root",sdk,"--closure",closure,"--environment",environment,"--output",output})
end
