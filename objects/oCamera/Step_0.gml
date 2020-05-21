if(follow != noone && instance_exists(follow)) {
	target_x = follow.x;	
	target_y = follow.y;
}

x_real += (target_x - x_real)/slow;
y_real += (target_y - y_real)/slow;

x = clamp(round(x_real), VIEWWIDTH/2, room_width - VIEWWIDTH/2);
y = clamp(round(y_real), VIEWHEIGHT/2, room_height - VIEWHEIGHT/2);

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(camera, vm);