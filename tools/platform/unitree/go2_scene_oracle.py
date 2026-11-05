"""Independent checks over native object traces; no every-message delivery claim."""
from pathlib import Path
import json,re,struct,hashlib
def decode(cdr):
 assert cdr[:4]==b'\x00\x01\x00\x00'
 pos=4
 def take(size,align=1):
  nonlocal pos
  pos=(pos+align-1)//align*align
  value=cdr[pos:pos+size];assert len(value)==size;pos+=size
  return value
 raw=bytearray(812);raw[:4]=take(4);raw[4:12]=take(8,4);raw[12:20]=take(8,4);raw[20:22]=take(2,2)
 motors=[]
 for i in range(20):
  offset=24+36*i;raw[offset:offset+1]=take(1)
  raw[offset+4:offset+24]=take(20,4);raw[offset+24:offset+36]=take(12,4)
  motors.append(struct.unpack('<5f',raw[offset+4:offset+24]))
 raw[744:748]=take(4);raw[748:788]=take(40);raw[788:800]=take(12);raw[800:802]=take(2);raw[802:803]=take(1)
 raw[804:808]=take(4,4);raw[808:812]=take(4,4);assert pos==len(cdr)
 return raw,motors

def verify_observed(d):
 source=json.loads((d/'result.json').read_text())
 assert source['status']=='COMPLETED_REQUIRES_INDEPENDENT_TRACE_VERIFICATION' and source['app_exit']==0 and source['cancel_exit']==0 and source['pins_unchanged']
 assert source['owned_retirement']['status']=='RETIRED'
 text=(d/'app.stderr').read_text()
 begins=[tuple(map(int,x)) for x in re.findall(r'UWVM_GO2_TIMER_V1 begin tick=(\d+) monotonic_ns=(\d+)',text)]
 ends=re.findall(r'UWVM_GO2_TIMER_V1 end tick=(\d+) monotonic_ns=(\d+) done=(\d) p1=([a-f0-9]+) p2=([a-f0-9]+) p3=([a-f0-9]+) p4=([a-f0-9]+)',text)
 assert len(begins)==len(ends)>3400
 f32=lambda x:struct.unpack('<f',struct.pack('<f',x))[0]
 bits=lambda x:struct.pack('<f',x).hex()
 p=[0.,0.,0.,0.];duration=[500.,500.,1000.,900.];phases={};done=False;known=[];history=[]
 target1=list(map(f32,[0,1.36,-2.65,0,1.36,-2.65,-.2,1.36,-2.65,.2,1.36,-2.65]))
 target2=list(map(f32,[0,.67,-1.3]*4))
 target3=list(map(f32,[-.35,1.36,-2.65,.35,1.36,-2.65,-.5,1.36,-2.65,.5,1.36,-2.65]))
 for index,((tick,began),row) in enumerate(zip(begins,ends)):
  t,ended,donebit,*observed=row;assert tick==index+1==int(t) and began<=int(ended)
  if index:assert int(ends[index-1][1])<=began
  if p[3]==1.:done=True
  if tick>=500:
   p[0]=min(1.,f32(p[0]+f32(1./duration[0])))
   if p[0]==1. and p[1]<1.:p[1]=min(1.,f32(p[1]+f32(1./duration[1])))
   if p[0]==1. and p[1]==1. and p[2]<1.:p[2]=min(1.,f32(p[2]+f32(1./duration[2])))
   if p[0]==1. and p[1]==1. and p[2]==1. and p[3]<=1.:p[3]=min(1.,f32(p[3]+f32(1./duration[3])))
  history.append(tuple(p))
  assert observed==[struct.pack('>f',x).hex() for x in p],(tick,p,observed)
  assert int(donebit)==int(done)
  for i,x in enumerate(p):
   if x==1. and str(i+1) not in phases:phases[str(i+1)]=tick
  if p[1]>0:
   q=[f32(f32(f32(1.-p[1])*a)+f32(p[1]*b)) for a,b in zip(target1,target2)] if p[2]==0 else target2
   if p[2]==1.:q=[f32(f32(f32(1.-p[3])*a)+f32(p[3]*b)) for a,b in zip(target2,target3)]
   known.append((tick,tuple(bits(x) for x in q)))
 assert len(phases)==4 and done
 elapsed=begins[-1][1]-begins[0][1]
 assert elapsed >= (len(begins)-2)*2_000_000
 table=[]
 for i in range(256):
  c=i<<24
  for _ in range(8):c=((c<<1)^0x04c11db7)&0xffffffff if c&0x80000000 else (c<<1)&0xffffffff
  table.append(c)
 def crc(raw):
  result=0xffffffff
  for i in range(0,808,4):
   for byte in raw[i:i+4][::-1]:result=((result<<8)&0xffffffff)^table[((result>>24)^byte)&255]
  return result
 packets=[json.loads(x) for x in (d/'native/native-packets.jsonl').read_text().splitlines()]
 commands=[x for x in packets if x['kind']=='received_lowcmd'];states=[x for x in packets if x['kind']=='published_lowstate']
 assert len(commands)>2900 and len(states)>1000
 crc_valid=0;known_values={q for _,q in known};matching=[];all_q=[]
 for i,row in enumerate(commands):
  raw,motors=decode(bytes.fromhex(row['cdr_hex']))
  assert crc(raw)==row['crc_field']==struct.unpack('<I',raw[808:812])[0],i
  crc_valid+=1
  assert raw[:4]==b'\xfe\xef\xff\x00'
  for j,values in enumerate(motors):
   assert values==tuple(row['motor_cmd'][j][k] for k in ('q','dq','tau','kp','kd'))
   assert raw[24+36*j]==1
   if j<12:assert values[1:]==(0.,0.,60.,5.)
   else:assert values==(f32(2146000000.),16000.,0.,0.,0.)
  q=tuple(bits(v[0]) for v in motors[:12])
  all_q.append(q)
  if q in known_values:matching.append(q)
 assert matching
 first_known=next(i for i,q in enumerate(all_q) if q in known_values)
 assert len(matching)==len(all_q)-first_known, 'Unexpected native trajectory after phase 2 began'
 # Recover the initial stance only from a genuinely published native LowState.
 # Match all 12 actual binary32 command values, never invent a fitted stance.
 candidates=[]
 for state in states:
  if state['monotonic_ns']>commands[0]['monotonic_ns']:continue
  stance=[f32(m['q']) for m in state['motor_state'][:12]]
  if not all(isinstance(x,(float,int)) for x in stance):continue
  for tick in range(500,503):
   fraction=history[tick-1][0]
   q=tuple(bits(f32(f32(f32(1.-fraction)*a)+f32(fraction*b))) for a,b in zip(stance,target1))
   if q==all_q[0]:candidates.append((state['sequence'],tick,stance))
 assert candidates, 'No genuine native LowState explains the first Wasm control command'
 full_matches=[]
 for state_id,first_tick,stance in candidates:
  expected=[]
  for tick,progress in enumerate(history,1):
   if tick<500:continue
   p1,p2,p3,p4=progress
   if p2==0:q=[f32(f32(f32(1.-p1)*a)+f32(p1*b)) for a,b in zip(stance,target1)]
   elif p3==0:q=[f32(f32(f32(1.-p2)*a)+f32(p2*b)) for a,b in zip(target1,target2)]
   elif p3<1:q=target2
   else:q=[f32(f32(f32(1.-p4)*a)+f32(p4*b)) for a,b in zip(target2,target3)]
   expected.append((tick,tuple(bits(x) for x in q)))
  offset=0;matched_ticks=[]
  for q in all_q:
   while offset<len(expected) and expected[offset][1]!=q:offset+=1
   if offset==len(expected):break
   matched_ticks.append(expected[offset][0]);offset+=1
  if len(matched_ticks)==len(all_q):full_matches.append(dict(native_initial_state_sequence=state_id,first_native_command_tick=first_tick,matched_command_count=len(matched_ticks),unobserved_command_count=len(expected)-len(matched_ticks)))
 assert full_matches,'Native controls do not follow the complete original four-stage trajectory'
 assert tuple(bits(m['q']) for m in commands[-1]['motor_cmd'][:12])==tuple(bits(x) for x in target3)
 assert sum(tuple(bits(m['q']) for m in row['motor_cmd'][:12])==tuple(bits(x) for x in target3) for row in commands)>=20
 assert source['native_result']['local_native_retirement']['status']=='RETIRED'
 sha=lambda p:hashlib.file_digest(p.open('rb'),'sha256').hexdigest()
 result=dict(passed=True,scope='Observed original Wasm four-stage trajectory, real monotonic pacing, independent native-object CDR decode and raw-packet CRC, final hold and separate Wasm cancel. Native trace is object reserialization, not received RTPS/RMW bytes or a full guest memory proof.',
  callback_pairs=len(ends),exact_phase_saturation_ticks=phases,callback_elapsed_ns=elapsed,native_commands=len(commands),native_states=len(states),valid_crc=crc_valid,known_phase_ordered_commands=len(matching),
  full_trajectory_matches=full_matches,commanded_final_hold=True,app_exit=0,cancel_exit=0,owned_processes_retired=True,pins={str(p):sha(p) for p in [Path(__file__),d/'result.json',d/'app.stderr',d/'app.stdout',d/'native/native-packets.jsonl',d/'native/native-scene.json']})
 (d/'independent-trace-verification.json').write_text(json.dumps(result,indent=2)+'\n')
 return result

def verify_original(d):
 source=json.loads((d/'result.json').read_text());assert source['status']=='COMPLETED_REQUIRES_INDEPENDENT_TRACE_VERIFICATION' and source['pins_unchanged']
 assert source['app_exit']==source['cancel_exit']==0 and source['owned_retirement']['status']=='RETIRED'
 assert source['native_result']['local_native_retirement']['status']=='RETIRED'
 table=[]
 for i in range(256):
  c=i<<24
  for _ in range(8):c=((c<<1)^0x04c11db7)&0xffffffff if c&0x80000000 else (c<<1)&0xffffffff
  table.append(c)
 def crc(raw):
  result=0xffffffff
  for i in range(0,808,4):
   for byte in raw[i:i+4][::-1]:result=((result<<8)&0xffffffff)^table[((result>>24)^byte)&255]
  return result
 records=[json.loads(x) for x in (d/'native/native-packets.jsonl').read_text().splitlines()]
 commands=[x for x in records if x['kind']=='received_lowcmd'];states=[x for x in records if x['kind']=='published_lowstate']
 assert len(commands)>2900 and len(states)>1000
 for row in commands:
  raw,motors=decode(bytes.fromhex(row['cdr_hex']))
  assert crc(raw)==row['crc_field']==struct.unpack('<I',raw[808:812])[0]
  assert raw[:4]==b'\xfe\xef\xff\x00'
  for j,m in enumerate(motors[:12]):
   assert m==tuple(row['motor_cmd'][j][k] for k in ['q','dq','tau','kp','kd'])
   assert m[1:]==(0.,0.,60.,5.)
 f32=lambda x:struct.unpack('<f',struct.pack('<f',x))[0]
 target=list(map(f32,[-.35,1.36,-2.65,.35,1.36,-2.65,-.5,1.36,-2.65,.5,1.36,-2.65]))
 holds=sum([m['q'] for m in row['motor_cmd'][:12]]==target for row in commands)
 assert holds>=20 and [m['q'] for m in commands[-1]['motor_cmd'][:12]]==target
 assert (d/'app.stdout').read_bytes().count(b'The example is done!')==1
 assert b'UWVM_GO2_TIMER_V1' not in (d/'app.stderr').read_bytes()
 assert (d/'cancel.stdout').read_text()=='cancel sent=0 wait=0 close=0\n'
 sha=lambda p:hashlib.file_digest(p.open('rb'),'sha256').hexdigest()
 result=dict(passed=True,scope='Uninstrumented original Wasm controller completes against native MuJoCo/DDS; all observed native control object CRCs, final hold, pure Wasm stop and process retirement verified. No full per-callback observation or every-message delivery claim.',
  native_commands=len(commands),native_states=len(states),crc_valid=len(commands),final_hold_commands=holds,app_exit=0,cancel_exit=0,owned_retirement='RETIRED',pins={str(p):sha(p) for p in [Path(__file__),d/'result.json',d/'app.stdout',d/'app.stderr',d/'native/native-packets.jsonl']})
 (d/'independent-trace-verification.json').write_text(json.dumps(result,indent=2)+'\n')
 return result
