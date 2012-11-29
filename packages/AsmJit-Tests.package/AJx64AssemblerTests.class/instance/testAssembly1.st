tests
testAssembly1

	
	self 
		assert: [ :asm|
			asm 
				push: asm RBP;
				mov: asm RSP -> asm RBP;
				mov: 1024 -> asm RAX;
				mov: asm RBP -> asm RSP;
				pop: asm RBP;
				ret.]	
		bytes: #[
			85 
			72 139 236 
			72	199	192	0	4	0	0
			72 139 229 
			93 
			195]