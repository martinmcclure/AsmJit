accessing
commentAt: instructionName

	^ comments at: instructionName ifAbsent: [ nil ]
	