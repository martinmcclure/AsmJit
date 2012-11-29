tests
testAssemblyMemBase

	self 
		assert: [ :asm| asm mov: asm RAX ptr to: asm EAX ]
		bytes: #[ 16r8B 2r00000000 ].
		
	self 
		assert: [ :asm| asm mov: asm RSP ptr to: asm EAX]
		bytes: #[ 16r8B 16r04 16r24 ].
	self 
		assert: [ :asm| asm mov: asm RBP ptr to: asm EAX ]
		bytes: #[ 16r8B 16r45 16r00 ].