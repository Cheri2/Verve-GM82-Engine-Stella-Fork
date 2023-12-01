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
if  image_alpha>0.5 if(place_meeting(x,y,Player) {
    with(Player) {
        can_single_jump=1
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
    Midair single jump.
*/
//field respawn_delay: number
