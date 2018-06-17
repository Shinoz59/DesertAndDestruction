// Gets a 13-sized array of where the cards end up on a line.

enum cardCount{
	none = 0, // no cards of this number
	single = 1,	
	pair = 2,
	Three = 3,
	Four = 4
};

var hand = argument0;
var handsize = argument1;
var cardPairs;
var index;

for (var i = 13; i >= 0; --i){
	cardPairs[i] = cardCount.none;
}

for (i = 0; i < handsize; ++i){
	index = hand.cards[i].card_num; // scale from 0 (ace) to 12 (king)
	cardPairs[index] += 1;
	if (index = 13)
		cardPairs[0] +=1; // count aces as both high and low for this.
}

return cardPairs;