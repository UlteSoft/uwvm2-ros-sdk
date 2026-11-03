-- SPDX-License-Identifier: Apache-2.0
-- Native infrastructure supervision only; never marks an application scene PASS.
function main(sdk,bundle,output,mode,prepared,prepared_sha256,predecessor,predecessor_sha256)
    assert(sdk and bundle and output and mode,"Usage: xmake lua native_lifecycle_case.lua SDK INPUT_BUNDLE FRESH_OUTPUT MODE PREPARED_RUNTIME SHA256 [PREDECESSOR_RECEIPT SHA256]")
    for _,value in ipairs({sdk,bundle,output}) do assert(path.is_absolute(value),"Explicit absolute producer/output paths required") end
    local python=import("python_runtime",{rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    local argv={"-B",path.join(os.scriptdir(),"native_lifecycle_case.py"),"--sdk-root",sdk,"--input-bundle",bundle,"--output",output,"--mode",mode}
    assert(prepared and prepared_sha256,"One-use prepared runtime manifest and SHA256 required")
    argv[#argv+1]="--prepared-runtime";argv[#argv+1]=prepared;argv[#argv+1]="--prepared-sha256";argv[#argv+1]=prepared_sha256
    if predecessor then assert(predecessor_sha256,"Exact predecessor SHA256 required");argv[#argv+1]="--predecessor-receipt";argv[#argv+1]=predecessor;argv[#argv+1]="--predecessor-sha256";argv[#argv+1]=predecessor_sha256 end
    os.execv(python,argv)
end
