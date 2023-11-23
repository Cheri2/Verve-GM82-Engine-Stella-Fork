if(input_check_pressed(key_jump)||input_check_pressed(key_extra_jump)||input_check_pressed(key_jc_jump)) {
    shift_pressed=1
}
if(input_check_released(key_jump)||input_check_released(key_extra_jump)|input_check_released(key_jc_jump)) {
    shift_pressed=0
}
if(check_shift_pressed()&&check_shift_released()) {
    shift_pressed=1
}
