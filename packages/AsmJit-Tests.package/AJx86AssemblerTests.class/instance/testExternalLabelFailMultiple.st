tests
testExternalLabelFailMultiple
	"Should error if the label is defined more than once."

	| asm1 asm2 label |
	asm1 := self newAssembler.
	asm2 := self newAssembler.
	label := asm newExternalLabel: 'MyRoutine'.
	asm1 label: label.
	asm1 ret.
	self should: [ asm2 label: label ] raise: Error.	"Defined in two different assemblers"
	label := asm newExternalLabel: 'MyRoutine'.
	asm label: label.
	asm ret.
	self should: [ asm label: label ] raise: Error	"Defined twice in same assembler"