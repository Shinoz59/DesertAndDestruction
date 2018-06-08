/// @description Create a blank hand
// You can write your code in this editor

// Sets up the max 
hand_limit = 10;
cards = ds_list_create();
//for(i = hand_limit - 1; i > -1; --i){
//	cards[i] = Get_NullCard();
//}

// draw cards into the lowest available spot.  Replace used cards with the Null card instantly.
default_drawLimit = 5;
draw_extra = 0;

hand_Rank = -1; // Null, filled in by Hand_Ranking
high_Card = -1; // Null, filled in by Hand_Ranking.
image_xscale = 2;
image_yscale = 2;

x = view_wport[0] - 50 - sprite_width; // since position is based on the gui, not the object.
y = view_hport[0] - 75 - sprite_height;

is_selecting = false;
selected_card = 0;