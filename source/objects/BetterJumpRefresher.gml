#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
respawn_delay = 100;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha=1
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_yscale = global.grav * abs(image_yscale);
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if  image_alpha>0.5 if(place_meeting(x,y,Player) {
    with(Player) {
        if(air_jumps=max_air_jumps) exit;
        air_jumps += 1;
        air_jumps = min(air_jumps, max_air_jumps);
    }
    sound_play("sndLine")
     image_alpha=0.2
    alarm[0] = respawn_delay;
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*desc
    1. larger hitbox
    2. does not get consumed when you already have max djump
*/
//field respawn_delay: number
