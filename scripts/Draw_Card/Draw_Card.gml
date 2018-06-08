// argument 1, the deck.
// argument 2, the hand.

var deck = argument0;
var hand = argument1;

  // Refresh the deck if its been cleaned out.
if (ds_list_empty(deck.cards)){
	ds_list_shuffle(deck.discard_pile);
	ds_list_copy(deck.cards, deck.discard_pile);
	ds_list_empty(deck.discard_pile);
}

// Check to make sure there's enough room in the hand before attempting to draw.
var index = ds_list_size(hand.cards);
if (index != hand.hand_limit){
	  // Get the card.
	var cardID = ds_list_find_value(deck.cards, 0);
	  // Remove the card from the list.
	ds_list_delete(deck.cards, 0); // Don't add it to the discards until its used.
	var full_cardID = instance_create_depth(0,0,0,obj_Card);
	SetCardID(full_cardID, cardID);
	InsertCard(hand, full_cardID);
}
