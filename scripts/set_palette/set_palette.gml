shader_set(shPalette);

var u_pal_black = shader_get_uniform(shPalette, "pal_black");
var u_pal_white = shader_get_uniform(shPalette, "pal_white");
var u_pal_dkgray = shader_get_uniform(shPalette, "pal_dkgray");
var u_pal_ltgray = shader_get_uniform(shPalette, "pal_ltgray");

shader_set_uniform_f_array(u_pal_black, global.pal_black);
shader_set_uniform_f_array(u_pal_white, global.pal_white);
shader_set_uniform_f_array(u_pal_dkgray, global.pal_dkgray);
shader_set_uniform_f_array(u_pal_ltgray, global.pal_ltgray);