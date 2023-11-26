#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
respawn_delay = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
visible = true;
#define Collision_Player
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
if  image_alpha>0.5 {
    with(Player) {
        air_jumps += 1;
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
    Jump refresher that refreshes your jump beyond limit!
    Does not regenerate by default to prevent cheese
*/
//field respawn_delay: number
