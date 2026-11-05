#pragma once
#include <stdio.h>
#ifdef __cplusplus
extern "C" {
#endif
FILE *popen(const char *, const char *);
int pclose(FILE *);
int mkstemp(char *);
int dup(int);
#ifdef __cplusplus
}
#endif
