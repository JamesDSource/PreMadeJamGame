if(follow != noone && instance_exists(follow)) {
	target_x = follow.x;	
	target_y = follow.y;
}

x_real += (target_x - x_real)/slow;
y_real += (target_y - y_real)/slow;

x = round(x_real);
y = round(y_real);

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);