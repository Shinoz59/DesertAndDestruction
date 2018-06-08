/// @description Sets up a standard deck
// You can write your code in this editor

// 2 step process.  Store 52 numbers in here.
// Then translate that number into a card in the hand?

cards = ds_list_create();
for(i = 1; i < 53; ++i){
	ds_list_add(cards, i);
}
ds_list_shuffle(cards);

discard_pile = ds_list_create();