tests
testExternalLabelSimpleCall
	| asm1 asm2 label routine1 routine2 firstFreeAddress |
	asm1 := self newAssembler.
	asm2 := self newAssembler.
	label := asm newExternalLabel: 'MyRoutine'.
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
		assert: routine2 bytes equals: #[16rE8 16rFA 16rFF 16rFF 16rFF].
	self
		assert: routine1 startAddress equals: 16r400078;
		assert: routine2 startAddress equals: 16r400079