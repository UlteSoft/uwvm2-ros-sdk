"""Observe only the owning private URSim Xvfb. No robot command or ROS client."""
from pathlib import Path
import ctypes as C,hashlib,json,os,socket,struct,sys,zlib,time,subprocess
class XImage(C.Structure):
 _fields_=[('width',C.c_int),('height',C.c_int),('xoffset',C.c_int),('format',C.c_int),('data',C.c_void_p),('byte_order',C.c_int),('bitmap_unit',C.c_int),('bitmap_bit_order',C.c_int),('bitmap_pad',C.c_int),('depth',C.c_int),('bytes_per_line',C.c_int),('bits_per_pixel',C.c_int),('red_mask',C.c_ulong),('green_mask',C.c_ulong),('blue_mask',C.c_ulong)]
def main():
 lib=C.CDLL('libX11.so.6');lib.XOpenDisplay.argtypes=[C.c_char_p];lib.XOpenDisplay.restype=C.c_void_p;display=lib.XOpenDisplay(b':1');assert display,'Own Xvfb :1 not available';lib.XDefaultRootWindow.argtypes=[C.c_void_p];lib.XDefaultRootWindow.restype=C.c_ulong;window=lib.XDefaultRootWindow(display);lib.XGetGeometry.argtypes=[C.c_void_p,C.c_ulong,C.POINTER(C.c_ulong),C.POINTER(C.c_int),C.POINTER(C.c_int),C.POINTER(C.c_uint),C.POINTER(C.c_uint),C.POINTER(C.c_uint),C.POINTER(C.c_uint)];root=C.c_ulong();x=C.c_int();y=C.c_int();width=C.c_uint();height=C.c_uint();border=C.c_uint();depth=C.c_uint();assert lib.XGetGeometry(display,window,C.byref(root),C.byref(x),C.byref(y),C.byref(width),C.byref(height),C.byref(border),C.byref(depth));assert 0<width.value<=2048 and 0<height.value<=1536
 lib.XGetImage.argtypes=[C.c_void_p,C.c_ulong,C.c_int,C.c_int,C.c_uint,C.c_uint,C.c_ulong,C.c_int];lib.XGetImage.restype=C.POINTER(XImage);image=lib.XGetImage(display,window,0,0,width.value,height.value,C.c_ulong(-1),2);assert image;meta=image.contents;assert meta.bits_per_pixel in [16,24,32]and 0<meta.bytes_per_line*meta.height<32*1024*1024;raw=C.string_at(meta.data,meta.bytes_per_line*meta.height);pixels=meta.bits_per_pixel//8;order='little'if meta.byte_order==0 else'big';rows=bytearray();masks=[meta.red_mask,meta.green_mask,meta.blue_mask];shifts=[(mask&-mask).bit_length()-1 for mask in masks];maxima=[mask>>shift for mask,shift in zip(masks,shifts)]
 if meta.bits_per_pixel==16 and meta.byte_order==0 and sys.byteorder=='little':
  # Exact original mask scaling, cached for the finite16-bit native pixel space.
  # Critical UI regions still must match the same pre-existing SHA before clicks.
  table=[bytes(((value&mask)>>shift)*255//maximum for mask,shift,maximum in zip(masks,shifts,maxima))for value in range(65536)]
  for row in range(meta.height):
   rows.append(0);start=row*meta.bytes_per_line;values=memoryview(raw)[start:start+meta.width*2].cast('H');rows.extend(b''.join(table[value]for value in values))
 else:
  for row in range(meta.height):
   rows.append(0)
   for column in range(meta.width):
    at=row*meta.bytes_per_line+column*pixels;value=int.from_bytes(raw[at:at+pixels],order)
    rows.extend(((value&mask)>>shift)*255//maximum for mask,shift,maximum in zip(masks,shifts,maxima))
 def chunk(kind,data):return struct.pack('>I',len(data))+kind+data+struct.pack('>I',zlib.crc32(kind+data)&0xffffffff)
 png=b'\x89PNG\r\n\x1a\n'+chunk(b'IHDR',struct.pack('>IIBBBBB',meta.width,meta.height,8,2,0,0,0))+chunk(b'IDAT',zlib.compress(rows,6))+chunk(b'IEND',b'');path=Path(sys.argv[1]);path.parent.mkdir(parents=True,exist_ok=True);path.write_bytes(png);path.with_suffix('.json').write_text(json.dumps({'display':':1','width':meta.width,'height':meta.height,'depth':meta.depth,'bits_per_pixel':meta.bits_per_pixel,'pid':os.getpid(),'cgroup':Path('/proc/self/cgroup').read_text(),'native_virtual_controller_observation_only':True,'robot_commands_sent':False,'ros_client_started':False},indent=2)+'\n');
 if len(sys.argv)>2:
  assert sys.argv[2]=='--step'and len(sys.argv)==5;plan=json.loads(Path(sys.argv[3]).read_text());step=plan['steps'][int(sys.argv[4])]
  require_private_context()
  status=Path('/proc/self/status').read_text();assert int(next(line.split(':')[1].strip()for line in status.splitlines()if line.startswith('CapEff:')),16)==0
  stride=1+meta.width*3;regions=step['regions'];selected=b''.join(rows[y*stride+1+x0*3:y*stride+1+x1*3]for x0,y0,x1,y1 in regions for y in range(y0,y1));actual=hashlib.sha256(selected).hexdigest();assert actual==step['expected_rgb_sha256'],('Private stock modal differs; no click',actual)
  xtest=C.CDLL('libXtst.so.6');xtest.XTestFakeMotionEvent.argtypes=[C.c_void_p,C.c_int,C.c_int,C.c_int,C.c_ulong];xtest.XTestFakeButtonEvent.argtypes=[C.c_void_p,C.c_uint,C.c_int,C.c_ulong];assert xtest.XTestFakeMotionEvent(display,-1,step['point'][0],step['point'][1],0);assert xtest.XTestFakeButtonEvent(display,1,1,0);assert xtest.XTestFakeButtonEvent(display,1,0,0);lib.XFlush.argtypes=[C.c_void_p];lib.XFlush(display);time.sleep(3)
  path.with_suffix('.action.json').write_text(json.dumps({'action':step['id'],'purpose':step['purpose'],'regions_sha256':actual,'expected_regions_sha256':step['expected_rgb_sha256'],'point':step['point'],'native_virtual_controller_setup_only':True,'robot_power_or_move_command':False,'ros_application':False},indent=2)+'\n')
  
 lib.XDestroyImage.argtypes=[C.POINTER(XImage)];lib.XDestroyImage(image);lib.XCloseDisplay.argtypes=[C.c_void_p];lib.XCloseDisplay(display);print('OWN_PRIVATE_XVFB_CAPTURED',str(path))
if __name__=='__main__':
 from native_context import require_private_context
 require_private_context()
 if len(sys.argv)>1 and sys.argv[1]=='--sequence':
  plan_path=Path(sys.argv[2]);plan=json.loads(plan_path.read_text())
  Path('/ursim/.evidence').mkdir(parents=True,exist_ok=True);attempts=[]
  for index,step in enumerate(plan['steps']):
   deadline=time.monotonic()+30;attempt=0
   while True:
    prefix=Path('/ursim/.evidence')/('ui-step-'+str(index)+'-attempt-'+str(attempt));argv=[sys.executable,'-B',str(Path(__file__).resolve()),str(prefix.with_suffix('.png')),'--step',str(plan_path),str(index)]
    with prefix.with_suffix('.stdout').open('wb')as so,prefix.with_suffix('.stderr').open('wb')as se:r=subprocess.run(argv,stdout=so,stderr=se,timeout=15)
    attempts.append({'step':index,'attempt':attempt,'exit_code':r.returncode,'exact_image_gate_unchanged':True});Path('/ursim/.evidence/exact-modal-wait-attempts.json').write_text(json.dumps(attempts,indent=2)+'\n')
    if r.returncode==0:break
    diagnostic=prefix.with_suffix('.stderr').read_text();assert 'Private stock modal differs; no click'in diagnostic,'Native setup failed outside the exact image wait; do not retry security/process errors'
    assert time.monotonic()<deadline,'Exact original stock safety modal not ready within bounded wait'
    attempt+=1;time.sleep(2)

  subprocess.run([sys.executable,'-B',str(Path(__file__).resolve()),'/ursim/.evidence/private-ui-final.png'],check=True,timeout=15)
  greetings=[]
  for family,address in [(socket.AF_INET,('127.0.0.1',29999)),(socket.AF_INET6,('::1',29999))]:
   try:
    with socket.socket(family,socket.SOCK_STREAM)as stream:
     stream.settimeout(3);stream.connect(address);data=stream.recv(4096);greetings.append({'family':family,'address':address,'greeting_hex':data.hex(),'greeting_text':data.decode(errors='replace'),'commands_sent':False})
   except OSError as error:greetings.append({'family':family,'address':address,'error':str(error),'commands_sent':False})
  assert any('Universal Robots Dashboard Server'in row.get('greeting_text','')for row in greetings),'No actual native Dashboard greeting'
  Path('/ursim/.evidence/native-bootstrap-complete.json').write_text(json.dumps({'stock_safety_confirmed':True,'dashboard_greetings':greetings,'robot_power_or_move_command':False,'ros_application':False,'production_admission':False,'scene_pass':False},indent=2)+'\n')
 else:main()
