/// @description life and stuffs

hp -= get_dt();
if (hp <= 0){
	flash(position.x, position.y, 20);
}