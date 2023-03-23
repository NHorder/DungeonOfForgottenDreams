
state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hSpeed = 0;  /// Horixontal Speed
vSpeed = 0;  /// Vertical Speed
speedWalk = 1.5; // Walk speeds
speedRoll = 5.0;
distanceRoll = 60;

spriteRoll = sPlayerDash;
spriteIdle = sPlayer;
spriteRun = sPlayerRun;
localFrame = 0;

