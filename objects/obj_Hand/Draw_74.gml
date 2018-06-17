/// @description Insert description here
// You can write your code in this editor

// Need to display the card objects at the correct space, if it is the characters turn etc. etc.
// skip over every NullCard
// 

var handSize = Hand_Size(id);
var drawingCard;

for (var i = handSize - 1; i >= 0; --i){ // draw from back to front.
	drawingCard = ds_list_find_value(cards, i);
	drawingCard.x = x - ((handSize - i) * 12 * image_xscale); // scoot over each card after this one.
	drawingCard.y = y;
	drawingCard.image_xscale = image_xscale;
	drawingCard.image_yscale = image_yscale;
	drawingCard.depth = depth - (handSize - i); // make sure each card is on top of the other properly.
}

if (is_selecting == true){
	drawingCard = ds_list_find_value(cards, selected_card);
	drawingCard.y += 10;
}