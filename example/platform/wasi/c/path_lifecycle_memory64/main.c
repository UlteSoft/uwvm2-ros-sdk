#define _POSIX_C_SOURCE 200809L
#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <string.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

int main(int argc, char** argv)
{
    if(argc != 3) return 97;
    int result = -1;
    struct stat st;
    if(!strcmp(argv[1], "mkdir")) result = mkdir("/sandbox/new-dir", 0700);
    else if(!strcmp(argv[1], "stat")) {
        result = lstat("/sandbox/source", &st);
        if(!result && (!S_ISREG(st.st_mode) || st.st_size != 9)) return 98;
    } else if(!strcmp(argv[1], "times")) {
        const struct timespec times[2] = {{123, 0}, {456, 0}};
        result = utimensat(AT_FDCWD, "/sandbox/source", times, 0);
    } else if(!strcmp(argv[1], "link")) result = link("/sandbox/source", "/sandbox/dest");
    else if(!strcmp(argv[1], "readlink")) {
        char value[64] = {0};
        ssize_t count = readlink("/sandbox/symlink", value, sizeof(value));
        result = count < 0 ? -1 : 0;
        if(!result && (count != 6 || memcmp(value, "source", 6))) return 99;
    } else if(!strcmp(argv[1], "rmdir")) result = rmdir("/sandbox/dir");
    else if(!strcmp(argv[1], "rename")) result = rename("/sandbox/source", "/sandbox/dest");
    else if(!strcmp(argv[1], "symlink")) result = symlink("source", "/sandbox/dest");
    else if(!strcmp(argv[1], "unlink")) result = unlink("/sandbox/source");
    else return 100;
    if(!strcmp(argv[2], "deny")) return result == -1 && errno == ENOTCAPABLE ? 0 : 101;
    return result ? 102 : 0;
}
