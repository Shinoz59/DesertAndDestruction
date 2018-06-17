
// Draws a box with the following settings.
var xx = argument0;
var yy = argument1;
var spriteWidth = argument2;
var newWidth = argument3;
var newHeight = argument4;
var scale = argument5;

newWidth = newWidth * scale; // We want a little grow/shrink animation here.
newHeight = newHeight * scale;
spriteWidth = spriteWidth * scale;

 // Could changes this to one sprite with multiple sub-images for later.
 // may need to select layer first.
draw_sprite_stretched(sp_menu_BottomLeft, 0, xx, yy, spriteWidth, spriteWidth);
draw_sprite_stretched(sp_menu_Bottom, 0, xx + spriteWidth, yy, newWidth, spriteWidth);
draw_sprite_stretched(sp_menu_BottomRight, 0, xx + spriteWidth + newWidth, yy, spriteWidth, spriteWidth);
draw_sprite_stretched(sp_menu_Left, 0, xx, yy - newHeight, spriteWidth, newHeight);
draw_sprite_stretched(sp_menu_Center, 0, xx + spriteWidth, yy - newHeight, newWidth, newHeight);
draw_sprite_stretched(sp_menu_Right, 0, xx + spriteWidth + newWidth, yy - newHeight, spriteWidth, newHeight);
draw_sprite_stretched(sp_menu_TopLeft, 0, xx, yy - spriteWidth - newHeight, spriteWidth, spriteWidth);
draw_sprite_stretched(sp_menu_Top, 0, xx + spriteWidth, yy - spriteWidth - newHeight, newWidth, spriteWidth);
draw_sprite_stretched(sp_menu_TopRight, 0, xx + spriteWidth + newWidth, yy - spriteWidth - newHeight, spriteWidth, spriteWidth);
