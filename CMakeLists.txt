cmake_minimum_required(VERSION 3.8)
project(magpie_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(action_msgs REQUIRED)

# Generate interfaces
rosidl_generate_interfaces(${PROJECT_NAME}
  # Services
  "srv/MoveLinear.srv"
  "srv/MoveJoint.srv"
  "srv/GetPose.srv"
  "srv/SetSpeed.srv"
  "srv/SetGripperPosition.srv"
  "srv/SetGripperForce.srv"
  "srv/CaptureFrame.srv"
  "srv/DetectObjects.srv"
  "srv/SegmentObject.srv"
  "srv/StartRecording.srv"
  "srv/StopRecording.srv"
  "srv/StartEpisode.srv"
  
  # Actions
  "action/ExecuteTrajectory.action"
  "action/DeliGrasp.action"
  "action/ExecutePolicy.action"
  "action/ForceControl.action"
  
  # Messages
  "msg/GripperState.msg"
  "msg/PolicyAction.msg"
  "msg/Observation.msg"
  "msg/Episode.msg"
  "msg/DeliGraspParams.msg"
  
  DEPENDENCIES
    std_msgs
    geometry_msgs
    sensor_msgs
    action_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
