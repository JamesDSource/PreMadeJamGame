/// @description Draw Health
set_palette();
var pHealthMax = global.player_health_max;
var pHealth = global.player_health;

for (var i = 1; i <= pHealthMax; i++)
{
	var separation = sprite_get_width(sHeart) - 1;
	draw_sprite(sHeart, (i > pHealth), (separation *i) - 13, 2);
}
shader_reset();