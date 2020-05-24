/// @desc draw_text_shadow(x, y, string)
/// @arg x
/// @arg y
/// @arg string

var x_ = argument[0];
var y_ = argument[1];
var str = argument[2];

var col = draw_get_color();
draw_set_color(c_black);
draw_text(x_ - 1, y_ + 1, str)
draw_set_color(col);
draw_text(x_, y_, str);