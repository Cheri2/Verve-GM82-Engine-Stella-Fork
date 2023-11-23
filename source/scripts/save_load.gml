///save_load()

// Loads the game.

instance_destroy_id(Player);
with(GoldenCherry) {
picked = false
x = xstart
y = ystart

speed    = 0
friction = 0
gravity  = 0
}
ds_map_copy(global.save_map, global.save_persistent_map);

global.grav = save_get("grav", 1);

if save_get("saved") {
    with(instance_create(save_get("x"), save_get("y"), Player)) {
        x_scale = save_get("x_scale", 1);
    }
}

if global.clear_input_on_restart {
    io_set_roomend_clear(true);
}
room_goto(save_get("room"));
