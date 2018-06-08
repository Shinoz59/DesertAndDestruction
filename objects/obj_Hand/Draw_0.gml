/// @description Insert description here
// You can write your code in this editor

// Need to display the card objects at the correct space, if it is the characters turn etc. etc.
// skip over every NullCard
// 

var handSize = Hand_Size(id);

for (var i = handSize - 1; i >= 0; --i){ // draw from back to front.
	cards[i].x = x - (i * 10); // scoot over each card after this one.
	cards[i].y = y;
	cards[i].depth = depth - i; // make sure each card is on top of the other properly.
}

if (is_selecting == true){
	cards[selected_card].y += 10;
}