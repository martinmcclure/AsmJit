accessing
reg16: index

	"answer one of 16bit general-purpose registers, based on index"
	| code |
	
	index < 0 ifTrue: [ self invalidRegisterIndex ].
	(index >= self numGPRegisters) ifTrue: [ self invalidRegisterIndex ].

	code := 16r10 + index.
	^ AJx86Registers code: code