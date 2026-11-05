"""Embed genuine GNU R base sources and explicitly selected TZif data in Wasm."""
from pathlib import Path
import hashlib
import json


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def array(name, data):
    lines = [",".join(map(str, data[i:i + 96])) for i in range(0, len(data), 96)]
    return "static const unsigned char " + name + "[] = {\n" + ",\n".join(lines) + "\n};\n"


def generate(build, timezone, output):
    build, timezone, output = map(Path, (build, timezone, output))
    sources = {"base": build / "library/base/R/base",
               "profile": build / "library/base/R/Rprofile",
               "renviron": build / "etc/Renviron"}
    text = "#include <stdio.h>\n#include <stddef.h>\n#include <string.h>\n"
    for name, path in sources.items():
        text += array(name, path.read_bytes())
    text += '''
int uwvm_r_builtin_file(const char *path, FILE **output) {
 const unsigned char *bytes=NULL;size_t size=0;
 if (!strcmp(path,"/__uwvm_r_home__/library/base/R/base")) {bytes=base;size=sizeof base;}
 else if (!strcmp(path,"/__uwvm_r_home__/library/base/R/Rprofile")) {bytes=profile;size=sizeof profile;}
 else if (!strcmp(path,"/__uwvm_r_home__/etc/Renviron") || !strcmp(path,"/__uwvm_r_home__/etc//Renviron")) {bytes=renviron;size=sizeof renviron;}
 if (!bytes) return 0;
 *output=fmemopen((void *)bytes,size,"r");return 1;
}
'''
    (output / "r_builtin_files.c").write_text(text)
    # Zone files are build inputs, never implicit access to the host at runtime.
    payload = bytearray()
    entries, offsets = [], {}
    for path in sorted(timezone.rglob("*")):
        relative = path.relative_to(timezone)
        if relative.parts[0] in ("posix", "right") or not path.is_file():
            continue
        data = path.read_bytes()
        if not data.startswith(b"TZif"):
            continue
        offset = offsets.get(data)
        if offset is None:
            offset = len(payload)
            offsets[data] = offset
            payload.extend(data)
        entries.append({"name": relative.as_posix(), "offset": offset,
                        "size": len(data), "sha256": hashlib.sha256(data).hexdigest()})
    if not entries:
        raise ValueError("Explicit timezone input contains no TZif files")
    text = "#include <stddef.h>\n#include <string.h>\n#include <sys/types.h>\n"
    text += array("payload", payload)
    text += "static const struct {const char *name; size_t offset,size;} entries[] = {\n"
    for entry in entries:
        text += "{" + json.dumps(entry["name"]) + "," + str(entry["offset"]) + "," + str(entry["size"]) + "},\n"
    text += '''};
int uwvm_r_builtin_zoneinfo(const char *path, char *output, size_t capacity, ssize_t *length) {
 static const char prefix[]="/__uwvm_r_home__/share/zoneinfo/";
 if (strncmp(path,prefix,sizeof prefix-1)) return 0;
 const char *name=path+sizeof prefix-1;size_t lo=0,hi=sizeof entries/sizeof entries[0];
 while(lo<hi) {
  size_t mid=lo+(hi-lo)/2;int order=strcmp(name,entries[mid].name);
  if(order<0)hi=mid;else if(order>0)lo=mid+1;else {
   size_t n=entries[mid].size;if(n>capacity)n=capacity;
   memcpy(output,payload+entries[mid].offset,n);*length=(ssize_t)n;return 1;
  }
 }
 *length=-1;return 1;
}
'''
    (output / "r_builtin_zoneinfo.c").write_text(text)
    receipt = {"base": {str(p): digest(p) for p in sources.values()},
               "timezone_root": str(timezone.resolve()), "zoneinfo": entries,
               "scope": "Read-only guest data; external paths remain WASI operations"}
    (output / "embedded-data.json").write_text(json.dumps(receipt, indent=2) + "\n")
    return receipt
