/// @description Insert description here
// You can write your code in this editor


// for selecting cards.

if (is_selecting == true){
	var handSize = Hand_Size(id);
	
	if (keyboard_check_pressed(vk_right))
	{
		selected_card++;
		if (selected_card >= handSize) // loop around
			selected_card = 0;
	}
	if (keyboard_check_pressed(vk_left))
	{
		selected_card--;
		if (selected_card < 0)
			selected_card = handSize - 1; // loop around
	}
	if (keyboard_check_pressed(vk_enter))
	{
		// Use the card.
		// Then determine if more cards can be used?
	}
}