instructions generated
ffree: aX87Register
	"Free Floating-Point Register
	"
	^ self 
		addInstruction: #ffree
		operands: { aX87Register }