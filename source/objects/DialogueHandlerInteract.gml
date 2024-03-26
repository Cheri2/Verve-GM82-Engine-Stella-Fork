#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

myArrow = noone

event_inherited()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


//progress dialogue
if (input_check_pressed(key_shoot) && messageIndex >= 0) {

    if (messageIndex == totalMessages){
        event_user(0)
    }
    if(messageIndex != -1){
        messageIndex += 1
    }

}
//skip dialogue
if (input_check_pressed(key_skip) && skippable && messageIndex >= 0){
    event_user(0)
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

//Get rid of up arrow if the player is no longer touching
if(!okay || !place_meeting(x, y, Player)){
    with (myArrow){
        instance_destroy()
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/


okay = true



//create an up arrow
if(okay && !instance_exists(UpArrow)){
    myArrow = instance_create(Player.x - 4, Player.y - 32, UpArrow)
}

//start the dialogue
if(input_check_pressed(key_up) && messageIndex == -1 && okay){
    messageIndex = 0
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=605
invert=0
arg0=dialogue end
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
messageIndex = -1
initialized = false
Player.frozen=false
startSoundPlayed = false

if (endSound != "no_sound"){
    sound_play("player_ground_jump");
}



//unfreeze time
//set flags
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/

if(messageIndex != totalMessages){
    event_inherited()
}else{
    event_user(0)
}
