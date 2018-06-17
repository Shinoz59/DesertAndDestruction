// takes two hands, calculates their ranking, compares them.
// argument 0 - hand 1
// argument 1 - hand 2
// return value - if hand 1 wins.
enum CompareValue{
	tie = 0,
	hand1Win = 1,
	hand2Win = 2
};

var hand1 = argument0;
var hand2 = argument1;

// get their ranking.
Hand_Ranking(hand1);
Hand_Ranking(hand2);

if (hand1.hand_Rank == hand2.hand_Rank){
	if (hand1.high_card	== hand2.high_card)
		return CompareValue.tie;
	if(hand1.high_card > hand2.high_card)
		return CompareValue.hand1Win;
	else
		return CompareValue.hand2Win;
}
else if (hand1.hand_Rank < hand2.hand_Rank){ // smaller is better in this case.
	return CompareValue.hand1Win;
}
else
	return CompareValue.hand2Win;
