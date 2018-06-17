/// @description Draw Menu
// You can write your code in this editor

// Draw the actual box for the menu.
var backOffset = 6;
var xx = menu_x - backOffset;
var yy = menu_y + backOffset - spriteWidth;
var newWidth = menu_itemwidth * (menu_itemlength + 2); // roughly the size of the text * max characters.
var trueMenuHeight = menu_itemheight * 1.25;
var newHeight = menu_items * trueMenuHeight - 16;

if (current_scale < 1.0){ // need to have the reverse of this too.
	current_scale += grow_speed;
	is_growing = true;
}
else
	is_growing = false;

scr_DrawMenuBox(xx, yy, spriteWidth, newWidth, newHeight, current_scale);

 // Setting up the text drawing stuff.
draw_set_font(menu_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

var col;
var offset = 2;


if (!is_growing){
	// Draw every menu item set.
	for (var i = 0; i < menu_items; ++i)
	{
		var txt = menu[i].commandName;
	
		 // If the object we're drawing is selected.
		if (menu_cursor == i)
		{
			txt = string_insert("> ", txt, 0); // pointer lol
			col = c_white; // color of the item?
		}
		else
		{
			col = c_gray;
		}
		var xx = menu_x;
		var yy = menu_y - trueMenuHeight * i;
		draw_set_color(c_black);
		draw_text(xx + offset, yy, txt);
		draw_text(xx - offset, yy, txt);
		draw_text(xx, yy + offset, txt);
		draw_text(xx, yy - offset, txt);
		draw_set_color(col);
		draw_text(xx, yy, txt);
	}
}
