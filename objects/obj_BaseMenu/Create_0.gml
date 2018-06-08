/// @description Setup options

// position settings.
gui_width = 100; // based on text?
gui_height = 100;
gui_margin = 32;

menu_x = 100; // Will need to show up either in a consistant area or related to the user object.
menu_y = 100;
menu_depth = 0;

menu_font = fMenu;
menu_itemheight = font_get_size(fMenu); // Gets the size of the font.
menu_itemwidth = 5;
menu_itemlength = 7;
menu_committed = -1; // currently selected item.
menu_control = true; // is the menu in control or not.

// Send commands to this unit.
controllingUnitID = 0; // Will need to be set.
spriteWidth = 16;
destroyOnFinish = false;

// Menu items.  May want to change how this is done later.
menu_title = "Battle";

current_scale = 0.0;
grow_speed = 0.2;
is_growing = true;

// Can be handled by a script maybe?
//menu[4] = instance_create_depth(menu_x, menu_y, menu_depth + 1, obj_MenuMove); // Top
//menu[3] = instance_create_depth(menu_x, menu_y, menu_depth + 1, obj_MenuAttack);
//menu[2] = instance_create_depth(menu_x, menu_y, menu_depth + 1, obj_MenuSpecial);
//menu[1] = instance_create_depth(menu_x, menu_y, menu_depth + 1, obj_MenuFocus);
//menu[0] = instance_create_depth(menu_x, menu_y, menu_depth + 1, obj_MenuPass); // Bottom
menu[0] = self; // a 1D array of object instances.

menu_cursor = 0; // Selected item.
menu_items = 0;// array_length_1d(menu); // Number of items.