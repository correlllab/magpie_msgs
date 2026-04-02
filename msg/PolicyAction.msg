# Policy action output (typically 6D end-effector delta + gripper)
float64[6] pose_delta  # [dx, dy, dz, drx, dry, drz] - end-effector delta
float64 gripper_command  # Gripper action (continuous or binary depending on policy)
bool gripper_is_binary  # True if gripper_command is binary (0/1), False if continuous
