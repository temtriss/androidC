#include <stdio.h>
#include <sys/ptrace.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <errno.h>
#include <assert.h>
#include <string.h>
#include <dlfcn.h>
#include <stdarg.h>
#include <string>
#include <vector>
#include <fstream>
#include <android/log.h>
#include <../util/util.hpp>

#define  LOG_TAG    "armhlp"
#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG, LOG_TAG, __VA_ARGS__)
#define  LOGE(...)  __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

extern "C" {
    void ThreadLoadManageLibrary();
};

void *LoadManagedLibrary(void *)
{
    MonoLoadAndInvokeAssembly("/data/local/tmp/SimpleClass.dll", "SimpleClass","Main", "Start");
}

void ThreadLoadManageLibrary()
{
    pthread_t t;
    pthread_create(&t, NULL, LoadManagedLibrary, NULL);
}

void __attribute__ ((constructor)) armhlp_load()
{
    LOGD("LIBRARY LOADED FROM PID %d.", getpid());
}


void __attribute__ ((destructor)) armhlp_unload()
{
    LOGD("LIBRARY UNLOADED FROM PID %d.", getpid());
}