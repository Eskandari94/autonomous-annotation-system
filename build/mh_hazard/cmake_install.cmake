# Install script for directory: /home/mheskandari/catkin_ws/src/mh_hazard

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mheskandari/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard/msg" TYPE FILE FILES
    "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
    "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
    "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
    "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard/srv" TYPE FILE FILES
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
    "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard/cmake" TYPE FILE FILES "/home/mheskandari/catkin_ws/build/mh_hazard/catkin_generated/installspace/mh_hazard-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mheskandari/catkin_ws/devel/include/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mheskandari/catkin_ws/devel/share/roseus/ros/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mheskandari/catkin_ws/devel/share/common-lisp/ros/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mheskandari/catkin_ws/devel/share/gennodejs/ros/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/mheskandari/catkin_ws/devel/lib/python3/dist-packages/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/mheskandari/catkin_ws/devel/lib/python3/dist-packages/mh_hazard")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mheskandari/catkin_ws/build/mh_hazard/catkin_generated/installspace/mh_hazard.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard/cmake" TYPE FILE FILES "/home/mheskandari/catkin_ws/build/mh_hazard/catkin_generated/installspace/mh_hazard-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard/cmake" TYPE FILE FILES
    "/home/mheskandari/catkin_ws/build/mh_hazard/catkin_generated/installspace/mh_hazardConfig.cmake"
    "/home/mheskandari/catkin_ws/build/mh_hazard/catkin_generated/installspace/mh_hazardConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mh_hazard" TYPE FILE FILES "/home/mheskandari/catkin_ws/src/mh_hazard/package.xml")
endif()

