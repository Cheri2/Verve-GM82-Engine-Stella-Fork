#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/15
picked = false

startingroom = room
movespeed    = 2

collected = false
anim      = 0
animtime  = 15

crownx      = x
crowny      = y
crownsprite = sprGoldenCherryCrown
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
crownx = x
crowny = y

// movement, falling if the player is dead
if picked and !collected {
    if instance_exists(Player) {
        if point_distance(x,y,Player.xprevious,Player.yprevious) > 24 {
            friction = 0
            move_towards_point(Player.xprevious,Player.yprevious,movespeed)
        } else {
            friction = 0.5
        }
    } else {
        if gravity == 0 {
            vspeed = -random_range(1,3)
            hspeed = random_range(0.5,2)*choose(-1,1)
            gravity = 0.35
        }
        persistent = false
        depth=-254
        image_angle += -hspeed
    }
}

if collected {
    if anim == 0 {
        speed = 0
        friction = 0
        save_set(("golden_" + room_get_name(startingroom)), true)
    }
    save_save_asap()
    if anim > 5 image_yscale -= 1/(animtime-5)
    if image_yscale <= 0 event_user(0)
    anim += 1
}

if save_get(str_cat("item", 0)) || save_get(str_cat("item", 1)) || save_get(str_cat("item", 2)) {
    if(picked=false) instance_destroy()
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !picked {
    instance_destroy_id(SaveHard)
    picked=true
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*desc
    Golden berry from Celeste.
    You have to place GoldenTrigger at the End.
    Collected golden data can be accessed with save_get("golden_" + room_get_name(startingroom))
    By default having golden will disable autosave.
    Original codes by soweli
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index = sprGoldenCherryOld

if save_get("golden_" + room_get_name(startingroom)) {
        sprite_index = sprGOldenCherryCollected
        crownsprite = sprGoldenCherryCrown
}

if picked {
    if instance_exists(Player) {
        instance_destroy_id(SaveHard)
        x = Player.x
        y = Player.y
    } else picked = false
}

if room != startingroom and !picked instance_destroy()
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy()
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(crownsprite, 0, crownx, crowny,1,image_yscale,image_angle,-1,1)
draw_self()
