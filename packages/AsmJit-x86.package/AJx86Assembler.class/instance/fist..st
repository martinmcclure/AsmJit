instructions generated
fist: aMemoryOperand
	"Store Integer
	"
	^ self 
		addInstruction: #fist
		operands: { aMemoryOperand }