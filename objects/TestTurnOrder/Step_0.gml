/// @description Insert description here
// You can write your code in this editor

if(ds_list_empty(objList)){
	var instFoes = layer_get_all_elements("Enemy");
	var instPlayers = layer_get_all_elements("Instances");
	var foeLength = array_length_1d(instFoes);
	var playersLength = array_length_1d(instPlayers);
	var obj_name;
	var tempInst;
	
	for(var i = 0; i < foeLength; ++i){
		if(layer_get_element_type(instFoes[i]) == layerelementtype_instance){
			tempInst = layer_instance_get_instance(instFoes[i]);
			obj_name = object_get_name(tempInst.object_index);
			if(obj_name == "obj_EnemyBase"){ // Use a different method.  Something related to obj_Unit I think.
				ds_list_add(objList, tempInst);
			}
		}
	}
	for(var v = 0; v < playersLength; ++v){
		if(layer_get_element_type(instPlayers[v]) == layerelementtype_instance){
			tempInst = layer_instance_get_instance(instPlayers[v]);
			obj_name = object_get_name(tempInst.object_index);
			if(obj_name == "obj_PlayerBase"){
				ds_list_add(objList, tempInst);
			}
		}
	}
	ds_list_shuffle(objList);
	var first = ds_list_find_value(objList, 0);
	first.isTurn = true;
}
else{
	var first = ds_list_find_value(objList, 0);
	if(first.isTurn == false){
		ds_list_delete(objList,0);
		if(!ds_list_empty(objList)){
			first = ds_list_find_value(objList, 0);
			first.isTurn = true;
		}
	}
}