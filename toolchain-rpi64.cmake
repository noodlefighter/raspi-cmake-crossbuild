# Define our host system
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_VERSION 1)

set(CMAKE_SYSROOT /mnt/raspi)

# Define the cross compiler locations
SET(CMAKE_C_COMPILER   aarch64-linux-gnu-gcc)
SET(CMAKE_CXX_COMPILER aarch64-linux-gnu-gcc)
# 用sshfs工具把raspi的rootfs映射出来 sudo sshfs -o allow_other pi@raspberrypi:/ /mnt/raspi
SET(CMAKE_FIND_ROOT_PATH ${CMAKE_SYSROOT})
# Use our definitions for compiler tools
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search for libraries and headers in the target directories only
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
add_definitions(-Wall -I${CMAKE_SYSROOT}/usr/include/aarch64-linux-gnu)
#add_definitions(-Wall)


# pkgconfig
set(ENV{PKG_CONFIG_DIR} "")
set(ENV{PKG_CONFIG_LIBDIR} "${CMAKE_SYSROOT}/usr/lib/pkgconfig:${CMAKE_SYSROOT}/usr/share/pkgconfig:${CMAKE_SYSROOT}/usr/lib/aarch64-linux-gnu/pkgconfig")
set(ENV{PKG_CONFIG_SYSROOT_DIR} ${CMAKE_SYSROOT})

