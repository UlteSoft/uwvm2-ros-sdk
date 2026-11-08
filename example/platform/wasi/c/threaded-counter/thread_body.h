#include <platform/wasi/thread_freestanding.h>
typedef uwvm_thread_u32 u32;
typedef __UINTPTR_TYPE__ uptr;
#ifdef __cplusplus
extern "C" {
#endif
__attribute__((import_module("wasi_snapshot_preview1"),import_name("proc_exit"))) void leave(u32);
__attribute__((import_module("wasi_snapshot_preview1"),import_name("fd_write"))) u32 write_result(u32,u32,u32,u32);
static unsigned char stacks[2][32768] __attribute__((aligned(16)));
static uwvm_wasip1_thread_context contexts[2];
static u32 arrived,released,done,counter,addresses[2],nested[2],counts[2],output[12],iov[2],written;
static void require(int condition){if(!condition){leave(78);__builtin_unreachable();}}
static u32 address(const volatile void* pointer){return (u32)(uptr)pointer;}
static u32 load(u32* p){return __atomic_load_n(p,__ATOMIC_SEQ_CST);}
static void publish(u32* p,u32 value){__atomic_store_n(p,value,__ATOMIC_SEQ_CST);__builtin_wasm_memory_atomic_notify((int*)p,3);}
static void await(u32* p,u32 value){u32 old;while((old=load(p))!=value)__builtin_wasm_memory_atomic_wait32((int*)p,(int)old,1000000LL);}
__attribute__((noinline)) static u32 probe(u32 bottom,u32 top,u32 seed){
 volatile u32 values[32];
 for(u32 i=0;i<32;++i)values[i]=seed+i;
 u32 pointer=address(values);require(pointer>=bottom&&pointer+sizeof(values)<=top);
 for(u32 i=0;i<32;++i)require(values[i]==seed+i);
 return pointer;
}
void uwvm_wasip1_thread_main(int tid,uwvm_wasip1_thread_context* context){
 require(tid>0&&context->user_argument<2);
 u32 index=context->user_argument;require(context==&contexts[index]);
 volatile u32 values[64];u32 seed=0x71000000u+index*4096u;
 for(u32 i=0;i<64;++i)values[i]=seed+i;
 addresses[index]=address(values);
 require(addresses[index]>=context->stack_bottom&&addresses[index]+sizeof(values)<=context->stack_top);
 output[index]=(u32)tid;
 __atomic_add_fetch(&arrived,1,__ATOMIC_SEQ_CST);__builtin_wasm_memory_atomic_notify((int*)&arrived,3);
 await(&released,1);
 /* A nested frame after both children have selected their stacks also tests
    each activation's independent mutable compiler __stack_pointer global. */
 nested[index]=probe(context->stack_bottom,context->stack_top,seed+1024);
 for(u32 n=0;n<1000;++n){
  for(u32 i=0;i<64;++i)require(values[i]==seed+i);
  __atomic_add_fetch(&counter,1,__ATOMIC_SEQ_CST);
 }
 counts[index]=1000;
 __atomic_add_fetch(&done,1,__ATOMIC_SEQ_CST);__builtin_wasm_memory_atomic_notify((int*)&done,3);
}
__attribute__((export_name("_start"))) void _start(void){
 volatile u32 main_values[16];for(u32 i=0;i<16;++i)main_values[i]=0x33000000u+i;
 u32 main_address=address(main_values);
 for(u32 i=0;i<2;++i){contexts[i].stack_bottom=address(stacks[i]);contexts[i].stack_top=address(stacks[i]+sizeof(stacks[i]));contexts[i].user_argument=i;}
 int first=uwvm_wasip1_thread_spawn(address(&contexts[0]));if(first<=0){leave(77);__builtin_unreachable();}
 int second=uwvm_wasip1_thread_spawn(address(&contexts[1]));if(second<=0){leave(77);__builtin_unreachable();}
 require(first!=second);await(&arrived,2);
 require(output[0]==(u32)first&&output[1]==(u32)second);
 for(u32 i=0;i<2;++i){
  require(main_address<contexts[i].stack_bottom||main_address>=contexts[i].stack_top);
  volatile u32* values=(volatile u32*)(uptr)addresses[i];
  for(u32 n=0;n<64;++n)require(values[n]==0x71000000u+i*4096u+n);
 }
 require(addresses[0]!=addresses[1]);publish(&released,1);await(&done,2);
 for(u32 i=0;i<16;++i)require(main_values[i]==0x33000000u+i);
 /* Main's nested call must still use its own original compiler stack global. */
 require(probe(0,contexts[0].stack_bottom,0x12000000u)<contexts[0].stack_bottom);
 require(load(&counter)==2000&&counts[0]==1000&&counts[1]==1000);
 output[2]=load(&counter);output[3]=addresses[0];output[4]=addresses[1];output[5]=main_address;
 output[6]=nested[0];output[7]=nested[1];output[8]=contexts[0].stack_bottom;output[9]=contexts[0].stack_top;
 output[10]=contexts[1].stack_bottom;output[11]=contexts[1].stack_top;
 iov[0]=address(output);iov[1]=sizeof(output);
 require(write_result(1,address(iov),1,address(&written))==0&&written==sizeof(output));
}
#ifdef __cplusplus
}
#endif
