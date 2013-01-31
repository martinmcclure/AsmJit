consistency
checkOperandsForConflict
	"Signal an error if the given operands cannot be used together. Must be sent after operands are set."

	| prohibited required |
	required := self requiresRex.
	prohibited := false.
	operands
		do: [ :op | 
			op asAJOperand prohibitsRex
				ifTrue: [ prohibited := true ] ].
	prohibited & required
		ifTrue: [ self error: 'Mix of operands that require and prohibit a REX prefix' ]