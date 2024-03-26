#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
snap_type=3
phase=false
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if speed != 0 {
    if bounce {
        if !place_free(x + hspeed, y) {
            hspeed *= -1;
        }
        if !place_free(x, y + vspeed) {
            vspeed *= -1;
        }
    }

    if global.grav * vspeed > 0 {
        with(Player) {
            if !place_meeting(x, y, other) if place_meeting(x, y + other.vspeed, other) {
                if !place_free(x, y + other.vspeed) {
                    move_contact_solid(90 + 180 * (global.grav == 1), abs(other.vspeed));
                }
                else {
                    y += other.vspeed;
                }
            }
        }
    }
}

platform_floor_prev = ternary(global.grav == 1, bbox_top, bbox_bottom);
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
/*desc
    renex engine platforms. rotation and custom snaps.
    snap types:
    0 - yuuutu - inconsistent snap, how it works in most engines. For precision needle.
    1 - hard - always snap regardless of vertical movement, also snaps when near the top
    2 - light - snaps only when near the top
    3 - none - don't snap at all, act like one-way blocks
*/
//field snap_type: number
//field hspeed
//field vspeed
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
// stolen from renex engine
if (true) {
    //i feel like renex has better things to do with their time than make an
    //auto platform script that only like, 2 people will use for practical uses

    if (image_xscale==1 && image_yscale==1) {
        draw_self()
    } else {
        //some of this might be hard to read, but it's all written for maximum speed
        var w,h,u,v;
        w=32*image_xscale
        h=16*image_yscale
        if (w<=24 && h<=24) {
            //square
            draw_sprite_ext(sprPlatform9slice,0,x,y,w/16,h/16,image_angle,image_blend,image_alpha)
        } else {
            u=(w-32)/16
            v=(h-32)/16
            texture_set_repeat(1)
            d3d_transform_stack_push()
            d3d_transform_add_rotation_z(image_angle)
            d3d_transform_add_translation(x-0.5,y-0.5,0)
            if (w>24 && h>24) {
                //9slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,5))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(16,0,1,0)
                    draw_vertex_texture(0,16,0,1)
                    draw_vertex_texture(16,16,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,6))
                    draw_vertex_texture(16,0,0,0)
                    draw_vertex_texture(w-16,0,u,0)
                    draw_vertex_texture(16,16,0,1)
                    draw_vertex_texture(w-16,16,u,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,7))
                    draw_vertex_texture(w-16,0,0,0)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(w-16,16,0,1)
                    draw_vertex_texture(w,16,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,9))
                    draw_vertex_texture(0,16,0,0)
                    draw_vertex_texture(16,16,1,0)
                    draw_vertex_texture(0,h-16,0,v)
                    draw_vertex_texture(16,h-16,1,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,10))
                    draw_vertex_texture(16,16,0,0)
                    draw_vertex_texture(w-16,16,u,0)
                    draw_vertex_texture(16,h-16,0,v)
                    draw_vertex_texture(w-16,h-16,u,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,11))
                    draw_vertex_texture(w-16,16,0,0)
                    draw_vertex_texture(w,16,1,0)
                    draw_vertex_texture(w-16,h-16,0,v)
                    draw_vertex_texture(w,h-16,1,v)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,13))
                    draw_vertex_texture(0,h-16,0,0)
                    draw_vertex_texture(16,h-16,1,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(16,h,1,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,14))
                    draw_vertex_texture(16,h-16,0,0)
                    draw_vertex_texture(w-16,h-16,u,0)
                    draw_vertex_texture(16,h,0,1)
                    draw_vertex_texture(w-16,h,u,1)
                draw_primitive_end()
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,15))
                    draw_vertex_texture(w-16,h-16,0,0)
                    draw_vertex_texture(w,h-16,1,0)
                    draw_vertex_texture(w-16,h,0,1)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            } else if (w>24) {
                //hor slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,1))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(16,0,1,0)
                    draw_vertex_texture(16,h,1,1)
                draw_primitive_end()
                if (w>32) {
                    draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,2))
                        draw_vertex_texture(16,0,0,0)
                        draw_vertex_texture(16,h,0,1)
                        draw_vertex_texture(w-16,0,u,0)
                        draw_vertex_texture(w-16,h,u,1)
                    draw_primitive_end()
                }
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,3))
                    draw_vertex_texture(w-16,0,0,0)
                    draw_vertex_texture(w-16,h,0,1)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            } else {
                //vert slice
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,4))
                    draw_vertex_texture(0,0,0,0)
                    draw_vertex_texture(w,0,1,0)
                    draw_vertex_texture(0,16,0,1)
                    draw_vertex_texture(w,16,1,1)
                draw_primitive_end()
                if (h>32) {
                    draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,8))
                        draw_vertex_texture(0,16,0,0)
                        draw_vertex_texture(w,16,1,0)
                        draw_vertex_texture(0,h-16,0,(h-32)/16)
                        draw_vertex_texture(w,h-16,1,(h-32)/16)
                    draw_primitive_end()
                }
                draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprPlatform9slice,12))
                    draw_vertex_texture(0,h-16,0,0)
                    draw_vertex_texture(w,h-16,1,0)
                    draw_vertex_texture(0,h,0,1)
                    draw_vertex_texture(w,h,1,1)
                draw_primitive_end()
            }
            d3d_transform_stack_pop()
        }
    }
} else if (sprite_index!=-1) draw_self()
#define Trigger_Platform Swap
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(instance_create(x,y,PlatformWater2)) {
    image_xscale=other.image_xscale
    image_yscale=other.image_yscale
}
instance_destroy()
