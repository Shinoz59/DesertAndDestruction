/// @description Setup selection list.
// You can write your code in this editor

// position settings.
event_inherited();

menuTitle = "Select Target"; // Will likely be modified by calling menu.
destroyOnFinish = true;
// Populate list?
GetEnemyList(self);
 // Figure out the length of the names so it can size itself properly.
 
// select object on a list?
// > step function
