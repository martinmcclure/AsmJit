instructions generated
fdivp: aX87Register
	"Divide and Pop
	"
	^ self 
		addInstruction: #fdivp
		operands: { aX87Register }