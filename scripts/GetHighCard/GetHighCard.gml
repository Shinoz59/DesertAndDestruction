// Finds the highest card of the hand.
// Argument0 = hand.

var hand = argument0;
var high_card = 1; // The lowest value card technically.
var mNumber;
var handSize = Hand_Size(hand);

for (var i = 0; i < handSize; ++i){
	mNumber = hand.cards[i].card_num; // Suit is unimportant for this check.
	if (mNumber > high_card )
		high_card = mNumber;
}

hand.high_card = high_card; // 1 is 2, 12 is king, 13 is ace.