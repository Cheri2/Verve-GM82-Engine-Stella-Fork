///player_shoot()
var _bullet;

if instance_number(Bullet) < 4 {
    _bullet = instance_create(x, y - 2 * global.grav, Bullet);
    if x_scale < 0 {
        _bullet.hspeed=-16
    }
    else _bullet.hspeed=16
    sound_play("player_shoot");
}
