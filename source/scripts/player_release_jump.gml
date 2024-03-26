///player_release_jump()

if global.grav * vspeed < 0 && !instance_exists(bestGuyFlag){
    vspeed *= jump_release_multiplier;
}
