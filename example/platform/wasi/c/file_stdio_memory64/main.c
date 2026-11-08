#define _POSIX_C_SOURCE 200809L
#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>

int main(int argc, char** argv)
{
    if(argc!=3)return 97;
    int roundtrip=strcmp(argv[1],"roundtrip")==0;
    int full=strcmp(argv[2],"full")==0;
    if(!full)
    {
        for(unsigned attempt=0;attempt!=100;++attempt)
        {
            errno=0;FILE* absent=fopen("/sandbox/absent/leaf","wb");
            if(absent || errno!=ENOENT)return 98;
        }
    }
    errno=0;
    FILE* file=fopen(roundtrip?"/sandbox/fixture":"/sandbox/probe",roundtrip?"r+b":"w+b");
    if(!file)return errno==EMFILE?33:80;
    if(full)return 99;
    if(roundtrip)
    {
        char bytes[6]={0};
        if(fread(bytes,1,6,file)!=6 || memcmp(bytes,"abcdef",6))return 101;
        if(fseeko(file,1,SEEK_SET) || fread(bytes,1,2,file)!=2 || memcmp(bytes,"bc",2) || ftello(file)!=3)return 102;
        off_t large=(off_t)UINT64_C(4294967305);
        if((uint64_t)large!=UINT64_C(4294967305) || fseeko(file,large,SEEK_SET))return 103;
        if(fputc('R',file)!='R' || fflush(file) || (uint64_t)ftello(file)!=UINT64_C(4294967306))return 104;
        if(fseeko(file,large,SEEK_SET) || fgetc(file)!='R')return 105;
    }
    else if(fwrite("ok",1,2,file)!=2 || fflush(file) || ftello(file)!=2)return 106;
    return fclose(file)?107:0;
}
