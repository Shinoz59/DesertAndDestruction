// Draw hand back to default.
// Add in extra cards due to effects/focus ability.

// argument 0, deck.
// argument 1, hand.

var deck = argument0;
var hand = argument1;

var handSize = Hand_Size(hand);
var drawTo = hand.default_drawLimit + hand.draw_extra;
if(drawTo > hand.hand_limit)
	drawTo = hand.hand_limit;
	
while(handSize < drawTo){
	Draw_Card(deck, hand);
	handSize += 1;
}