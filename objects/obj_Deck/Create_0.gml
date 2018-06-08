/// @description Sets up a standard deck
// You can write your code in this editor

// 2 step process.  Store 52 numbers in here.
// Then translate that number into a card in the hand?

cards = ds_list_create();
for(i = 1; i < 53; ++i){
	ds_list_add(cards, i);
}

random_set_seed(current_time);
ds_list_shuffle(cards);

image_index = 52; // The back facing card.
image_xscale = 2;
image_yscale = 2; // Have this be a setting somewhere I guess.
image_speed = 0;
discard_pile = ds_list_create();