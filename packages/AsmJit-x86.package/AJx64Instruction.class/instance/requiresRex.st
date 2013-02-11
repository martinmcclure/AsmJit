testing
requiresRex
	"Answer true if I absolutely must have a REX prefix."

	^ (operands detect: [ :op | op isInteger not and: [ op requiresRex | op is64 ] ] ifNone: [ #none ]) ~~ #none