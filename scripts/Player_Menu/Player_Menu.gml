// Argument 0 = player

var player = argument0;

if(player.playerMenu.visible == false){
	player.playerMenu.visible = true;
	player.playerMenu.menu_control = true;
}
if(player.playerMenu.menu_control == false){ // Not the best way to do this.
	player.playerMenu.visible = false;
	player.isTurn = false;
}