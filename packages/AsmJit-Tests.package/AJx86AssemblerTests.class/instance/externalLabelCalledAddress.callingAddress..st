support
externalLabelCalledAddress: calledAddress callingAddress: callingAddress
	"Put the calling and called routines at the given address. Answer an association, calledBytes -> callingBytes"

	| asm1 asm2 label calledRoutine callingRoutine |
	asm1 := self newAssembler.
	asm2 := self newAssembler.
	label := asm newExternalLabel: 'MyRoutine'.
	asm1 label: label.
	asm1 ret.
	calledRoutine := asm1 generatedCode.
	asm2 call: label.
	callingRoutine := asm2 generatedCode.
	calledRoutine startAddress: calledAddress.
	callingRoutine startAddress: callingAddress.
	^ calledRoutine bytes -> callingRoutine bytes