/// @description Create and Init base variables

// position
pos_x = 0;
pos_y = 0;

// health/energy
health = 50;
armor = 0;
energy = 50;

// Movement
moveSpeed   = 20;
jumpHeight  = 4;
jumpLength  = 10;
flightSpeed = 0;

initiativeBonus = moveSpeed - 20;

Name = "Base_Object";
logic = Enemy_Pass;
isTurn = false;
// Needs a list of commands it can do?

