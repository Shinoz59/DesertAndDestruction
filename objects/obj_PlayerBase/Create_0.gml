/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Name = "Player Base";

 // Do we want these attached to the player like this?  Well whatever.
playerMenu = instance_create_layer(x+20, y-10, "Menus", obj_BaseMenu);
playerDeck = instance_create_layer(x, y, "Cards", obj_Deck);
playerHand = instance_create_layer(x, y, "Cards", obj_Hand);

scr_LoadBattleMenu(playerMenu);
playerMenu.menu_control = false;
playerMenu.visible = false;
global.Player = id; // Probably will need this for later.
logic = Player_Menu;