// Discards a card to the discard pile.
// argument 0 = Deck.
// argument 1 = hand.
// argument 2 = hand index.

var deck = argument0;
var hand = argument1;
var hand_index = argument2;

// just put the number in the discard pile
ds_list_add(deck.discard_pile, hand[hand_index].card_id);

instance_destroy(hand[hand_index]); // Then destroy the card.
//hand[hand_index] = Get_NullCard(); // replace with the null card.
