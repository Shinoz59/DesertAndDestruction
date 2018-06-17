// Gets the ranking of the hand in question.
// argument 0 = hand.

enum handRanking {
	RoyalFlush = 1,
	StraightFlush = 2,
	FourOfAKind = 3,
	FullHouse = 4,
	Flush = 5,
	Straight = 6,
	ThreeOfAKind = 7,
	TwoPair = 8,
	Pair = 9,
	HighCard = 10
};

// This code for now assumes that the cards occupy the slots 0,1,2.. in order.

var hand = argument0;
var cards_used = Hand_Size(hand);
GetHighCard(hand); // Fills in the high card regardless of hand size.
var is_flush = false;
var is_straight = false;
hand.hand_Rank = handRanking.HighCard; // The default.
var cardDistribution = GetCardDistribution(hand, cards_used);
CheckDuplicateHands(hand, cardDistribution);

// If the handrank is still HighCard, then check for Flush/Straights.
if (hand.hand_Rank == handRanking.HighCard)
	CheckFlushStraights(hand, cardDistribution);
