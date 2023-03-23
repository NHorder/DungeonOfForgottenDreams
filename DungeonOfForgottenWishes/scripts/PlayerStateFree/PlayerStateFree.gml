

// Movement in free state

function PlayerStateFree(){
	
	// Actual Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk,inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	PlayerCollision();

	// Update Sprite Index

	var _oldSprite = sprite_index;
	if (inputMagnitude != 0)
	{
		direction = inputDirection;
		sprite_index = sPlayerRun;

	}else {sprite_index = spriteIdle;}

	if (_oldSprite != sprite_index) localFrame = 0;

	/// Update Image Index
	PlayerAnimateSprite();
	
	// Change State
	if (keyDash){
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll;
	}
	
}