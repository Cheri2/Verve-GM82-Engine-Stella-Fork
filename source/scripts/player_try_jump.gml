///player_try_jump()
if place_meeting(x,y,WaterGrav) {
player_flip()
}
else if place_meeting(x,y,PlatformWater2) {
vspeed = -global.grav * ground_jump_speed;
with(instance_place(x,y,PlatformWater2)) instance_destroy()
sound_play("player_ground_jump");
}
else if can_single_jump || on_floor || place_meeting(x, y + global.grav,KillerBlockLegacy) || place_meeting(x, y, GeneralPlatform) || place_meeting(x, y, WaterGroundJump) {
    player_ground_jump();
    with(objSprinkler) image_index=(image_index+1) mod 2
}
else if air_jumps > 0 || place_meeting(x, y, Water) || global.debug_infinite_jump {
    if(!place_meeting(x,y, WaterDream)) player_air_jump();
    with(objSprinkler) image_index=(image_index+1) mod 2
}
