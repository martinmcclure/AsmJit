initialize-release
reset
	instructions := nil.
	assembler := nil.
	calls := OrderedCollection new.
	temps := maxTemps := extraStackBytes := 0.
