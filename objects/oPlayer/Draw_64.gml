/// @description Draw Health

var pHealthMax = global.playerHealthMax;
var pHealth = global.playerHealth;

for (var i = 1; i <= pHealthMax; i++)
{
	var separation = sprite_get_width(sHeart) - 1;
	draw_sprite(sHeart, (i > pHealth), (separation *i) - 13, 2);
}