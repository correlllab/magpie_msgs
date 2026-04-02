# Observation for policy
std_msgs/Header header
sensor_msgs/Image[] images  # Camera images
string[] image_names  # Corresponding camera names
float64[] qpos  # Joint positions
float64[] qvel  # Joint velocities
float64 gripper_position
geometry_msgs/Wrench wrench  # Force-torque reading
