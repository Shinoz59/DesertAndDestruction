// Argument0 - card
// Argument1 - card ID

// The way the card ID works is that goes from 1-52
// The suite is incremental, so the first 13 cards are Diamonds, etc.  Suits are in the Card object.
// Card number is incremental as well.

var card = argument0;
var cardID = argument1;

card.card_id = cardID;
card.suit_rank = floor((cardID - 1) / 13); // Get the suit.
card.card_num = (cardID - 1) mod 13; // Get the actual card number.
if (card.card_num == 0) // If its an Ace, set it as id 13.
	card.card_num = 13;