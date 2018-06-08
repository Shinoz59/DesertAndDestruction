/// @description Insert description here
// You can write your code in this editor

card_id = 0; // ID 0 cards are considered NULL/Placeholder.
suit_rank = 0;
card_num = 0;
// card id list.
// cards go from 1-13 in each suite.
// suites go Diamond, Heart, Spade, Club.
enum suite{
	Diamond = 0,
	Heart = 1,
	Spade = 2,
	Club = 3
};
// so divide by 13 to get the suite - 1/13.
// The remainder is the card number.
// floor of divide?

// showing cards in order would simply sort them by id / 13.