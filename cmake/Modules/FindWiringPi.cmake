# Find include dir
find_path(
        WiringPi_INCLUDE_DIR
        NAMES "wiringPi.h"
        PATH_SUFFIXES "wiringPi"
        DOC "Include directory for the wiringPi library"
        NO_CACHE
        )

# Finally the library itself
find_library(WiringPi_LIBRARY
        NAMES libwiringPi.so
        )