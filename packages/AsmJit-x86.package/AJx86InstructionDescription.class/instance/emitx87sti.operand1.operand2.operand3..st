emitting
emitx87sti: emitter operand1: op1 operand2: op2 operand3: op3
	(op1 isNil and: [ op2 isNil and: [ op3 isNil ]])
		ifTrue: [ "Convenience fallback for ST1 "
			^ self emitx87sti: emitter operand1: AJx86Registers ST1 operand2: nil operand3: nil ].
		
	op1 isRegTypeX87 ifTrue: [
		emitter emitByte: (opCode1 bitAnd: 16rFF00)>>8.
		emitter emitByte: (opCode1 bitAnd: 16rFF) + op1 index.
		^ self 
	].

	self invalidInstruction