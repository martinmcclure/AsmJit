emitting code
emitCode: asm
	"generate opcodes"

	| delta code nextInstruction target desc |
	target := label position.
	target ifNil: [ ^ machineCode := nil ].
	nextInstruction := position + 2.
	label isExternalLabel
		ifTrue: [ 
			self addExternalReference: label asAJOperand.
			delta := 16r80000000 asImm	"Will be patched later." ]
		ifFalse: [ delta := (target - nextInstruction) asImm ].
	desc := self instructionDesciptions at: name.	"can we use 8bit offset?"
	machineCode := delta isInt8
		ifTrue: [ self emitShortJump: desc offset: delta ]
		ifFalse: [ self emitLongJump: desc target: target ]