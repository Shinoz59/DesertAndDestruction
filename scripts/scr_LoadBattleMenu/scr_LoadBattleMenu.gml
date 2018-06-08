// Argument 0 - the menu

var menu = argument0;

menu.menu[4] = instance_create_layer(menu.x,menu.y,"Menus", obj_MenuMove);
menu.menu[3] = instance_create_layer(menu.x,menu.y,"Menus", obj_MenuAttack);
menu.menu[2] = instance_create_layer(menu.x,menu.y,"Menus", obj_MenuSpecial);
menu.menu[1] = instance_create_layer(menu.x,menu.y,"Menus", obj_MenuFocus);
menu.menu[0] = instance_create_layer(menu.x,menu.y,"Menus", obj_MenuPass);

menu.menu_items = 5; // Lenght of menu array.