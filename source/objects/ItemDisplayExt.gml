#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
index = 0;
image_alpha=0.2
image_speed=0
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if save_get(str_cat("item", index)) {
    image_alpha=1
}
else image_alpha=0.2
if save_get(str_cat("golden_", index)) {
    image_index=1
}
else image_index=0
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field index: value
