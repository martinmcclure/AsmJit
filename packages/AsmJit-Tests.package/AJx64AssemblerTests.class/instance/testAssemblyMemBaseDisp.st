tests
testAssemblyMemBaseDisp

	| asm |
	
	asm := self newAssembler.
	
	asm 
		mov: RAX ptr + 1 -> EAX;
		mov: RBX ptr + ECX -> EAX.
	
	self assert: asm bytes = #(16r8B 16r40 16r01 16r8B 16r04 16r0B) asByteArray