instructions generated
fstcw: aMemoryOperand
	"Store x87 FPU Control Word
	"
	^ self 
		addInstruction: #fstcw
		operands: { aMemoryOperand }