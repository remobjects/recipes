#include <stdint.h>

#ifdef WIN32
#define _WIN32
#endif

#ifdef LINUX
#define __linux__
#endif


#ifdef DARWIN
#define __APPLE__
#endif

#ifdef aarch64
#define __aarch64__
#endif

#ifdef i386
#define __i386__
#endif
