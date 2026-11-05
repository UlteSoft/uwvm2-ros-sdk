#include "wasi_posix.h"
#include <errno.h>
// WASI Preview 1 has no process/shell launch interface. R observes a normal
// unsupported-operation error; no native shell or language process is invoked.
FILE *popen(const char *command, const char *mode) {
 (void)command; (void)mode; errno=ENOSYS; return NULL;
}
int pclose(FILE *stream) { (void)stream; errno=ENOSYS; return -1; }

#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <wasi/api.h>
int mkstemp(char *name) {
 static const char alphabet[]="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
 size_t n=strlen(name);
 if(n<6 || strcmp(name+n-6,"XXXXXX")) { errno=EINVAL; return -1; }
 for(unsigned attempt=0;attempt<128;++attempt) {
  unsigned char random[6];
  __wasi_errno_t code=__wasi_random_get(random,sizeof random);
  if(code) { errno=(int)code; return -1; }
  for(unsigned i=0;i<6;++i)name[n-6+i]=alphabet[random[i]%62];
  int fd=open(name,O_RDWR|O_CREAT|O_EXCL,0600);
  if(fd>=0 || errno!=EEXIST)return fd;
 }
 errno=EEXIST;return -1;
}

/* Preview 1 has renumber but no descriptor duplication operation. */
int dup(int fd) { (void)fd; errno=ENOSYS; return -1; }

int system(const char *command) { if (!command) return 0; errno=ENOSYS; return -1; }
char *getlogin(void) { errno=ENOSYS; return NULL; }
