///save_save([impossible=false])

// Saves the game.
// The argument allows saving even on impossible.

if save_get("difficulty") == 3 {
    if argument_count == 0 {
        exit;
    }
    if !argument[0] {
        exit;
    }
}

if !instance_exists(Player) {
    exit;
}

save_set("saved", true);

save_set("room", room);
if(!global.save_subpixel) {
    save_set("x", floor(Player.x));
    save_set("y", floor(Player.y)+ternary(global.grav<0,1,0));
}
else {
    save_set("x", Player.x);
    save_set("y", Player.y);
}
save_set("x_scale", Player.x_scale);
save_set("grav", global.grav);

ds_map_copy(global.save_persistent_map, global.save_map);

save_write();
