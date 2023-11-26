#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//do post init
if(!didInit)
{
    y = y + 2*image_yscale;
    didInit = true;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index, image_index, x, y-2*image_yscale, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
