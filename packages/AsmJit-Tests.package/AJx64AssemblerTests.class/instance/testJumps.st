tests
testJumps

	| assembler |
	
	assembler := self newAssembler.
	self 
		assert: [:asm|
			asm 
				label: #label1;
				nop;
				nop;
				nop;
				jz: #label1.
		] bytes: #[144 144 144 16r74 251 "-5 asByte"].
	
	
	
	assembler 
		reset; noStackFrame;
		label: #label1.
		126 timesRepeat: [ assembler nop ].
		assembler jz: #label1.
	self assert: (assembler bytes size = 128).


	self 
		assert: [:asm|
			asm 
				reset; noStackFrame;
				label: #label1;
				nop;
				nop;
				nop;
				jmp: #label1.
		] bytes: #[144 144 144 235 251 ].
	
	self 
		assert: [:asm|
			asm 
				reset; noStackFrame;
				jmp: #label1;
				label: #label1.
		] bytes: #[ 16rEB 0 ].
		
