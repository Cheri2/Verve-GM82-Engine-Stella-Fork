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
    x = x + image_xscale;
    didInit = true;
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!wasTouched)
{
    event_user(0);
    image_index=1;
    sound_play("sndLine");
    wasTouched=true;
}
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
draw_sprite_ext(sprite_index, image_index, x-image_xscale, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
