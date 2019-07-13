
#ifdef C2NIM
#  dynlib libname
#  cdecl
#  if defined(windows)
#    define libname "libhpi.dll"
#  elif defined(macosx)
#    define libname "libhpi.dylib"
#  else
#    define libname "libhpi.so"
#  endif
#mangle uint8_t uint8
#mangle uint16_t uint16
#mangle uint32_t uint32
#mangle uint64_t uint64
#mangle int8_t int8
#mangle int16_t int16
#mangle int32_t int32
#mangle int64_t int64
#else
#define HPI_API(a) a
#define HPI_API_VOID(a) a
#define HPI_BUILD_EXCLUDE_ALL_DEPRECATED
#endif
