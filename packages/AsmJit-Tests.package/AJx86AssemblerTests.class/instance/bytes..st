utility
bytes: aBlock
	
	| asm |
	
	asm := self newAssembler.
	
	aBlock value: asm.
	
	^ asm bytes