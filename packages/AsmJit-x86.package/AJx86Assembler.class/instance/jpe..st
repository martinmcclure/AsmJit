instructions generated
jpe: targetLabel
	"
	"
	^ self 
		addInstruction: #jpe
		operands: { targetLabel }