#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)) alarm[0]=40
else alarm[0]=40
dead=0

storex=1
storey=1
storea=0
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///stretch bullet mask
image_angle=direction+180
storex=image_xscale
storey=image_yscale
storea=image_angle
image_xscale=speed
image_yscale=2
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//reset bullet mask

image_xscale=storex
image_yscale=storey
image_angle=storea
if(place_meeting(x,y,Block)) dead=true
//we schedule bullet destroy to make sure it hits things on the frame it hits a wall
if (dead) instance_destroy()
#define Collision_SaveBlocker
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//set this to image_angle if you want the bullets to follow the player's angle ------v
draw_sprite_ext(sprite_index,image_index,floor(x),floor(y),image_xscale,image_yscale,0,image_blend,image_alpha)
