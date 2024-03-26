#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
didInit = false;
wasTouched = false;
image_speed=0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//do post init
if(!didInit)
{
    x = x + image_xscale*1.5 - 0.5;
    didInit = true;
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(other.vspeed>=0) other.vspeed=-other.gravity
#define Other_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*desc
    base code by 29th letter
    scale the image to mirror
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// nothing!
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, x-image_xscale*1.5 +0.5, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
