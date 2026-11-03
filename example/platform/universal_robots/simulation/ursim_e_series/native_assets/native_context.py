"""Kernel checks for this scene's private native namespace; never VM admission."""
from pathlib import Path
import json,os

def require_private_context():
    context=json.loads(Path('/ursim/.native-context.json').read_text())
    assert context['format']=='uwvm-native-ursim-private-context-v1'
    assert os.geteuid()==0 and Path('/proc/self/cgroup').read_text()==context['cgroup']
    status=Path('/proc/self/status').read_text()
    for key in ['CapEff','CapPrm','CapBnd','CapAmb']:
        assert int(next(line.split(':')[1].strip()for line in status.splitlines()if line.startswith(key+':')),16)==0
    assert Path('/proc/self/uid_map').read_text().split()==['0',str(context['parent_uid']),'1']
    for name in ['user','pid','net','ipc','uts','mnt']:
        assert os.readlink('/proc/self/ns/'+name)!=context['parent_namespaces'][name]
    return context
