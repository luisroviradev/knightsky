/// @description Destroy waves and wave elements
for(var _i = 0; _i < array_length(waves); _i++){
	waves[_i].clear();
	delete waves[_i];
}
