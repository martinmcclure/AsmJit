testing
requiresRex
	"Answer true if I absolutely must have a REX prefix."

	^ (operands
		detect: [ :rawOp | 
			| op |
			op := rawOp asAJOperand.
			op requiresRex | op is64 ]
		ifNone: [ #none ]) ~~ #none