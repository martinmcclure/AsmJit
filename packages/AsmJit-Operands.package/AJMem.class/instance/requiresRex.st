testing
requiresRex
	"Answer true if use of this operand requires that the instruction have a REX prefix.
	For a memory reference, this is true if width of the transfer is 64, 
	or if either the base or index register is in the upper bank -- the
	use of a 64-bit base or index register is not enough by itself."

	^ self is64 or: [ (self hasBase and: [ base isUpperBank ]) or: [ self hasIndex and: [ index isUpperBank ] ] ]