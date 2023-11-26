///player_try_jump()
if place_meeting(x,y,WaterGrav) {
player_flip()
}
else if can_single_jump || on_floor || place_meeting(x, y + global.grav,KillerBlockLegacy) || place_meeting(x, y, GeneralPlatform) || place_meeting(x, y, WaterGroundJump) {
    player_ground_jump();
}
else if air_jumps > 0 || place_meeting(x, y, Water) || global.debug_infinite_jump {
    player_air_jump();
}
