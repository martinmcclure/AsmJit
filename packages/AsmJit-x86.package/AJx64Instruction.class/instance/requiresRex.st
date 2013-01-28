testing
requiresRex
	^ (operands detect: [ :op | op requiresRex ] ifNone: [ #none ]) ~~ #none