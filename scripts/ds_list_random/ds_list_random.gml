/// @desc ds_list_random(id)
/// @arg id

var list = argument[0];
if(ds_list_size(list) > 0) {
	ds_list_shuffle(list);
	return list[| 0];
}
else return pointer_null;