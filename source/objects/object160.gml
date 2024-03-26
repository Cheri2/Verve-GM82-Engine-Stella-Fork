#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
clr=(120/360*255) + sin(current_time/8000) * 25
sf_inline=surface_create(800,608);
sf_spike=surface_create(800,608);
sf_mask2=surface_create(800,608);
sf_inline2=surface_create(800,608);
with(PlayerKiller) visible=false;
r_ = 1;
i =0;
j=0;
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

surface_free(sf_mask2);
surface_free(sf_inline);
surface_free(sf_inline2);
surface_free(sf_spike);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
clr=(165/360*255) + sin(current_time/8000) * 25
if !surface_exists(sf_inline){
sf_inline=surface_create(800,608);
}
if !surface_exists(sf_mask2){
sf_mask2=surface_create(800,608);
}
if !surface_exists(sf_inline2){
sf_inline2=surface_create(800,608);
}
if !surface_exists(sf_spike){
sf_spike=surface_create(800,608);
}


surface_reset_target();



surface_set_target(sf_spike)

draw_clear_alpha(0,1);

draw_set_blend_mode(bm_subtract);

with PlayerKiller{
draw_self();
}
surface_set_target(sf_inline2);
draw_clear_alpha(make_color_rgb(222,222,222),1)
draw_set_blend_mode(bm_subtract);
draw_surface(sf_spike,0,0);

draw_set_blend_mode(bm_normal);
surface_reset_target();
surface_set_target(application_surface)

var r_1;
r_1=3;
draw_surface(sf_inline2,0,0);
