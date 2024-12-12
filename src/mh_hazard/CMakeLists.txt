cmake_minimum_required(VERSION 3.0.2)
project(mh_hazard)


find_package(catkin REQUIRED
   roscpp
   rospy
   std_msgs
   geometry_msgs
   sensor_msgs
   message_generation
)



## Generate messages in the 'msg' folder
add_message_files(
   FILES
   Transcription.msg
   Intrest.msg
   ImageArray.msg
   ObjectImage.msg
)

## Generate services in the 'srv' folder
 add_service_files(
   FILES
    Servo.srv
    Whisper.srv
    SAM.srv
    CLIP.srv
    DetectSlot.srv
    Indicate.srv
    TTS.srv
    LLMImage.srv
    LLMText.srv
    MoveITPose.srv
    MoveITNamedPose.srv
    MoveITGrabPose.srv
    OrientCamera.srv
 )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   geometry_msgs
   sensor_msgs
   std_msgs 
    # Or other packages containing msgs
 )

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES toy_assembly
#  CATKIN_DEPENDS other_catkin_pkg
#  DEPENDS system_lib
CATKIN_DEPENDS
message_runtime
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
# ${catkin_INCLUDE_DIRS}
)
