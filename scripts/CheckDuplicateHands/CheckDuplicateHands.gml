// Finds out of this contains a duplicate hand.
// if a duplicate hand is found, skip flush and straight checks.  Unneeded.
// argument0 - hand.
// argument1 = cardpairs.

// checks duplicate hands.
// ie. 4 of a kind, full house, 3 of a kind, 2 pair, pair.


// Sets up the pair checking.
var pairCount = 0;
var threeCount = 0;
var fourCount = 0;

var hand = argument0;
var cardPairs = argument1;

// Find the number of paris, three sets, and four sets.
for (var i = 0; i < 13; ++i){ // Skip the copy of aces at the top.
	if (cardPairs[i] > cardCount.single){
		if (cardPairs[i] == cardCount.pair)
			pairCount += 1;
		else if (cardPairs[i] == cardCount.Three)
			threeCount += 1;
		else if (cardPairs[i] == cardCount.Four)
			fourCount += 1;
	}
}

// determine the hand ranking.
if (fourCount >= 0)
	hand.hand_Rank = handRanking.FourOfAKind;
else if (threeCount > 0){
	if(pairCount > 0)
		hand.hand_Rank = handRanking.FullHouse;
	else
		hand.hand_Rank = handRanking.ThreeOfAKind;
}
else if (pairCount > 1)
	hand.hand_Rank = handRanking.TwoPair;
else if (pairCount > 0)
	hand.hand_Rank = handRanking.Pair;
