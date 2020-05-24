/// @desc move_layer(layer)
/// @arg layer

var lay = argument[0];
var layer_id = layer_get_id(lay);

if(layer_id != -1) layer = layer_id;