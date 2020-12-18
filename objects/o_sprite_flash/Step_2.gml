/// @description update position and image properties

//update image
x = host.x;
y = host.y;
sprite_index = host.sprite_index;
image_index = host.image_index;
image_angle = host.image_angle;
image_xscale = host.image_xscale;
image_yscale = host.image_yscale;


life -= get_dt();
if(life <= 0){
	instance_destroy();
}