var u_pal_black = shader_get_uniform(shDefault, "pal_black");
var u_pal_white = shader_get_uniform(shDefault, "pal_white");
var u_pal_dkgray = shader_get_uniform(shDefault, "pal_dkgray");
var u_pal_ltgray = shader_get_uniform(shDefault, "pal_ltgray");

shader_set_uniform_f_array(u_pal_black, pal_black);
shader_set_uniform_f_array(u_pal_white, pal_white);
shader_set_uniform_f_array(u_pal_dkgray, pal_dkgray);
shader_set_uniform_f_array(u_pal_ltgray, pal_ltgray);

shader_set(shDefault);