/// @description initialize

event_modifiers = ds_list_create();


///@function signal
///@arg event
function signal(_event){
	for(var _i = 0; _i < ds_list_size(event_modifiers); _i++){
		var _em = event_modifiers[|_i];
		if(_em.event_string == _event){
			_em.process();
		}
	}
}