instructions generated
fmul: aX87Register1 with: aX87Register2
	"
	see #fmul"
	^ self 
		addInstruction: #fmul
		operands: { aX87Register1 . aX87Register2 }