
// Movement Controls
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyDash = keyboard_check(ord("Q")) || keyboard_check(vk_shift);

//Activation controls
keyInteract = keyboard_check(vk_space);
keyAttack = keyboard_check(vk_shift);
keyItem = keyboard_check(vk_control);

inputDirection = point_direction(0,0,keyRight-keyLeft,keyDown-keyUp);
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown-keyUp != 0);

script_execute(state);


