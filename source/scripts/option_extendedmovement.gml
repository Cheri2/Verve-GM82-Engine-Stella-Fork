///option_fullscreen(type)

switch(argument0) {

    case "include":
        return true;

    case "in_pause":
        return true;

    case "step":
        if input_check_pressed(key_menu_accept) || input_check_pressed(key_menu_left) || input_check_pressed(key_menu_right) {
            config_set("extendedmovement", !config_get("extendedmovement"));
        }
        break;

    case "name":
        return "Control";

    case "value":
        return ternary(config_get("extendedmovement"), "Extended", "Classic");

}
