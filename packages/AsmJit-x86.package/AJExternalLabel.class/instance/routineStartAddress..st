public
routineStartAddress: absoluteAddress
	| address |
	address := absoluteAddress + position.
	references do: [ :ref | ref targetAddress: address ]