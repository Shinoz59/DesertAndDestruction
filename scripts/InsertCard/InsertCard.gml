// Argument 0 - hand.
// Argument 1 - card.

var hand = argument0;
var card = argument1;
var cardNum = card.card_id
var inserted = false;

var handsize = ds_list_size(hand.cards);

if (handsize == 0){
	ds_list_insert(hand.cards, 0, card);	
	inserted = true;
}
else{
	for (var i = 0; i < handsize; ++i){
		var compare = ds_list_find_value(hand.cards, i);
		if (card.card_num < compare.card_num){ // If the cards number is lower, insert before it.
			ds_list_insert(hand.cards, i, card);
			inserted = true;
			break;
		}
		else if (card.card_num == compare.card_num){
			if ( card.suit_rank < compare.suit_rank){ // same with suite.
				ds_list_insert(hand.cards, i, card);
				inserted = true;
				break;
			}
		}
	}
}
if (inserted == false)
	ds_list_insert(hand.cards, i, card); // insert at the end if it's the last card.