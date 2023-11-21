#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
effect = false
xs = 1
ys = 1
aa = 1
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if other.max_air_jumps != 1 {
    if (other.max_air_jumps<1) sound_play("sfx_gain_star")
    else sound_play("sfx_loss_star")
    other.max_air_jumps = 1
    effect = true
    xs = 1
    ys = 1
    aa = 1
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*desc
    revert player to double jumps. Note that unlike NANG star itself does not refill jumps!
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite(sprite_index,image_index,x,y)
if effect {
    aa -= .04
    xs += .05
    ys += .05
    draw_sprite_ext(sprite_index,image_index,x+16-16*xs,y+16-16*ys,xs,ys,0,c_white,aa)
    if aa <= 0 effect = false
}
