tests
testExternalLabelSimple
	| asm1 asm2 label routine1 routine2 firstFreeAddress |
	asm1 := asm class noStackFrame.
	asm2 := asm class noStackFrame.
	label := AJExternalLabel new: 'MyRoutine'.
	asm1 label: label.
	asm1 ret.
	routine1 := asm1 generatedCode.
	asm2 call: label.
	routine2 := asm2 generatedCode.
	firstFreeAddress := 16r400078.
	{routine1.
	routine2}
		do: [ :code | 
			code startAddress: firstFreeAddress.
			firstFreeAddress := firstFreeAddress + code size ].	"At this point, the call site has been patched with the correct displacement,
so once the bytes are installed in the given absolute addresses the call
will go to the right place."
	self
		assert: routine1 bytes equals: #[16rC3];
		assert: routine2 bytes equals: #[16rE8 16rFF 16rFF 16rFF 16rFA].
	self
		assert: routine1 startAddress equals: 16r400078;
		assert: routine2 startAddress equals: 16r400079