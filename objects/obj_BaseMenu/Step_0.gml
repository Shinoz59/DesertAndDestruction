/// @description Control Menu
// You can write your code in this editor

// Step 1: ease in menu.
// menu_x += (menu_x_target - menu_x) / menu_speed;


// Keyboard Controls.
if (menu_control && is_growing == false) // Only selectable while active of course.
{
	if (keyboard_check_pressed(vk_up))
	{
		menu_cursor++;
		if (menu_cursor >= menu_items)
			menu_cursor = 0;
	}
	
	if (keyboard_check_pressed(vk_down))
	{
		menu_cursor--;
		if (menu_cursor < 0)
			menu_cursor = menu_items - 1;
	}

	if (keyboard_check_pressed(vk_enter))
	{
		// Do something.
		// Make the menu go away?
		menu_committed = menu_cursor; // What we've selected.
		menu_control = false;
		menu[menu_cursor].isActive = true;
	}
}

