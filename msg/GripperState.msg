# Gripper state information
float64 position  # Current opening width in meters
float64 force  # Current force in Newtons
float64 temperature  # Motor temperature in Celsius
bool is_moving
bool contact_detected  # Whether object contact is detected
float64[] finger_positions  # Individual finger positions (if applicable)
