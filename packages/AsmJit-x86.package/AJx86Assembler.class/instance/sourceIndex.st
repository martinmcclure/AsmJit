register
sourceIndex
	^ self is32BitMode ifTrue: [ RSI ] ifFalse: [ SI ]