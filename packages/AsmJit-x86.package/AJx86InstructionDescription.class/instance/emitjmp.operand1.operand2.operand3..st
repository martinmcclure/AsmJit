emitting
emitjmp: emitter operand1: target operand2: op2 operand3: op3
	
	target isString ifTrue: [
		"jump on label"
		^ emitter addJump: target condition: nil hint: nil
	].

	target isRegMem ifTrue: [
		^ emitter emitX86RM: 16rFF
			size: 0 
			regOrCode:  4
			rm:  target
	].

	emitter emitByte: 16rE9.
	emitter emitDisplacement: target inlinedDisp: -4
