public
routineStartAddress: absoluteAddress
	| address |
	address := absoluteAddress + offset.
	self patchAddress: address