var u_pal_black = shader_get_uniform(shDefault, "pal_black");
var u_pal_white = shader_get_uniform(shDefault, "pal_white");

shader_set_uniform_f_array(u_pal_black, pal_black);
shader_set_uniform_f_array(u_pal_white, pal_white);

shader_set(shDefault);