-- SPDX-License-Identifier: Apache-2.0
-- Native infrastructure only. Call inside an admitted bounded producer.
function main(sdk, bundle, output, ready, stop, lifetime, prepared, prepared_sha256)
    assert(sdk and bundle and output and ready, "Usage: xmake lua native_scene.lua SDK INPUT_BUNDLE OUTPUT READY [STOP] [SECONDS]")
    for _, value in ipairs({sdk,bundle,output,ready}) do assert(path.is_absolute(value), "Explicit absolute constructor/output paths required") end
    local python = import("python_runtime", {rootdir=path.join(sdk,"tools/xmake"),anonymous=true}).resolve()
    local entry = path.join(os.scriptdir(),"native_scene.py")
    local argv = {"-B",entry,"--sdk-root",sdk,"--input-bundle",bundle,"--output",output,"--ready-file",ready}
    if stop and stop ~= "" then argv[#argv+1]="--stop-file"; argv[#argv+1]=stop end
    if lifetime then argv[#argv+1]="--lifetime-seconds"; argv[#argv+1]=lifetime end
    if prepared then assert(prepared_sha256,"Exact one-use prepared-runtime SHA256 required");argv[#argv+1]="--prepared-runtime";argv[#argv+1]=prepared;argv[#argv+1]="--prepared-sha256";argv[#argv+1]=prepared_sha256 end
    os.execv(python,argv)
end
