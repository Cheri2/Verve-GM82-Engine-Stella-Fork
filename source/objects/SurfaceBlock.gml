#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
k=surface_create(800,608)
v=surface_create(800,608)
bg=noone
with(Block) if(object_index=Block) sprite_index=spr32x32
with(BlockMini) sprite_index=spr16x16
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field bg: background
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
surface_free(k)
surface_free(v)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if(!surface_exists(k)) {
    k=surface_create(800,608)
}
if(!surface_exists(v)) {
    v=surface_create(800,608)
}
surface_set_target(k)
draw_set_blend_mode(bm_normal)
draw_clear_alpha(c_black,1)
draw_set_blend_mode(bm_subtract)
with(Block) if(object_index=Block||object_index=BlockMini) draw_sprite_ext(sprite_index,0,x-view_xview,y-view_yview,image_xscale,image_yscale,0,0,1)
with(Slope) draw_sprite_ext(sprite_index,0,x-view_xview,y-view_yview,image_xscale,image_yscale,0,0,1)
draw_set_blend_mode(bm_normal)
surface_reset_target()
surface_set_target(v)
draw_background_tiled(bg,0,0)
draw_set_blend_mode(bm_subtract)
draw_surface(k,0,0)
draw_set_blend_mode(bm_normal)
surface_reset_target()
surface_set_target(application_surface)
draw_surface(v,0,0)
