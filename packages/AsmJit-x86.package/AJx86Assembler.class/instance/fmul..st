instructions generated
fmul: aMemoryOperand
	"Multiply
	"
	^ self 
		addInstruction: #fmul
		operands: { aMemoryOperand }