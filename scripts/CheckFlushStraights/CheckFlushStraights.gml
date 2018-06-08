// Straights and flushes can mix, so may as well do both at once.
// argument 0, hand
// argument 1, cardPairs.

var hand = argument0;
var cardPairs = argument1;
var is_flush = true; // default to crue, check makes it false.
var is_straight = false; // default to false, check makes it true.
var is_Royal = false; // type of straight.

// Check the rest.

// Detect Flush.
var suite_rank = hand.cards[0].suit_rank
for (var i = 1; i < cards_used; ++i){
	if (hand.cards[0].suit_rank != suite_rank){
		is_flush = false;
		break;
	}
}

var Row = 0;
// Detect Straight
for (i = 0; i < 14; ++i){ // include the duplicate ace at the top.
	if (cardPairs[i] > cardCount.none)
		Row += 1;
	else
		Row = 0;
	if (Row == 5)
		break;
}

// Special Ace-straight clause.
if (Row == 5){
	is_straight = true;
	if (cardPairs[12] > cardCount.none && cardPairs[13] > cardCount.none){ // Has a king and an ace in it.
		is_Royal = true;
	}
}

if (is_Royal && is_flush)
	hand.hand_Rank = handRanking.RoyalFlush;	
else if (is_straight && is_flush)
	hand.hand_Rank = handRanking.StraightFlush;
else if (is_flush)
	hand.hand_Rank = handRanking.Flush;
else if (is_straight)
	hand.hand_Rank = handRanking.Straight;	
