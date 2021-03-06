function calls
pushArgument: anArgument forCall: call
	| arg argSize |
	
	arg := anArgument.
	anArgument isInteger ifTrue: [
		arg := anArgument asImm size: call defaultArgumentSize.
	].
	
	self addInstruction: (AJCallArgument new size: arg stackSize; callInfo: call ).
	
	arg emitPushOnStack: self