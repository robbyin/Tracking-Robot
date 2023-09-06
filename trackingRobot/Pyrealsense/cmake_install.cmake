# Install script for directory: /home/robbyin/librealsense/wrappers/python

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/OFF" TYPE SHARED_LIBRARY FILES
    "/home/robbyin/librealsense/build/wrappers/python/pybackend2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
    "/home/robbyin/librealsense/build/wrappers/python/pybackend2.cpython-36m-aarch64-linux-gnu.so.2"
    "/home/robbyin/librealsense/build/wrappers/python/pybackend2.cpython-36m-aarch64-linux-gnu.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pybackend2.cpython-36m-aarch64-linux-gnu.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/OFF" TYPE SHARED_LIBRARY FILES
    "/home/robbyin/librealsense/build/wrappers/python/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
    "/home/robbyin/librealsense/build/wrappers/python/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54"
    "/home/robbyin/librealsense/build/wrappers/python/pyrealsense2.cpython-36m-aarch64-linux-gnu.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so.2.54"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/OFF/pyrealsense2.cpython-36m-aarch64-linux-gnu.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/robbyin/librealsense/build:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2/pyrealsense2Targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2/pyrealsense2Targets.cmake"
         "/home/robbyin/librealsense/build/wrappers/python/CMakeFiles/Export/lib/cmake/pyrealsense2/pyrealsense2Targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2/pyrealsense2Targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2/pyrealsense2Targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2" TYPE FILE FILES "/home/robbyin/librealsense/build/wrappers/python/CMakeFiles/Export/lib/cmake/pyrealsense2/pyrealsense2Targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2" TYPE FILE FILES "/home/robbyin/librealsense/build/wrappers/python/CMakeFiles/Export/lib/cmake/pyrealsense2/pyrealsense2Targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2" TYPE FILE FILES "/home/robbyin/librealsense/build/wrappers/python/pyrealsense2Config.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/pyrealsense2" TYPE FILE FILES "/home/robbyin/librealsense/build/wrappers/python/pyrealsense2ConfigVersion.cmake")
endif()

