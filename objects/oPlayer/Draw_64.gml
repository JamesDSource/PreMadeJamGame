/// @description Draw Health
set_palette();
var pHealthMax = global.player_health_max;
var pHealth = global.player_health;

for (var i = 1; i <= pHealthMax; i++)
{
	var separation = sprite_get_width(sHeart) - 1;
	draw_sprite(sHeart, (i > pHealth), (separation *i) - 13, 2);
}


draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_set_color(make_color_rgb(100, 100, 100));

draw_sprite(sGem_gui, 0, VIEWWIDTH, 0);
draw_text(VIEWWIDTH - sprite_get_width(sGem_gui), 0, global.gems);

shader_reset();

