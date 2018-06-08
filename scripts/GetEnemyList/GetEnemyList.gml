// Creates a list of Enemies.
// For menus mostly.

// presumably get a list based on ranges or what have you.
// argument 0 = the Menu.

enum Range{
	No_Range = 0,
	Limited_Range = 1,
};

var foes = layer_get_all_elements("Enemy");
var num_foes = array_length_1d(foes);
var entryCount = 0;
var menu = argument0;
var tempInst;
var obj_name;
var enemyList;

// If limited_range, then do some shenanigans to check to make sure they're within range or something.
for (var i = 0; i < num_foes; ++i){
	if(layer_get_element_type(foes[i]) == layerelementtype_instance){
		tempInst = layer_instance_get_instance(instFoes[i]);
		obj_name = object_get_name(tempInst.object_index);
		if( obj_name == "obj_EnemyBase"){
			var newEntry = instance_create_layer(0,0,"Menus",obj_MenuEnemy);
			newEntry.commandObject = tempInst;
			newEntry.commandName = tempInst.Name;
			enemyList[num_foes - i - 1] = newEntry; // Back fills it since that's more efficient in gml.
			entryCount += 1;
		}
	}
}

menu.menu = enemyList; // Set the list to the menu that called this.
menu.menu_items = entryCount;