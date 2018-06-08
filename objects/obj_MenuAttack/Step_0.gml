/// @description Do the thing

event_inherited();
if (isActive){
	// Step 1. Select the weapon. // may be optional.  Multiple weapons might not be a thing.
	// Step 2. show range for that weapon.
	// Step 3. show possible targets.
	if (targetsActive == false){
		targetMenu = instance_create_layer(x + 40,y,"Menu", obj_SelectTargetMenu);
		targetsActive = true;
	}
	else{
		if (targetMenu.menu_control == false){
			finalTarget = targetMenu.menu[menu_cursor];
			isFinished = true; // Mark that you're done.
		}
	}
	// Step 4. initiate combat with target.
	// Step 5. allow card usage.
	// Step 6. allow enemy to use a card in defense.
	// Setp 7. resolve attack.  Deal damage or miss etc.
}