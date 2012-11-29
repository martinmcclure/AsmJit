tests
testAssembly2

	self 
		assert: [ :asm|
		asm 
			push: asm BP;
			mov: asm SP -> asm BP;
			mov: 16r400 -> asm RAX;
			mov: asm BP -> asm SP;
			pop: asm RSP;
			ret. ]
		bytes: #[
			102 85
			102 139 236 
			72	199	192 0 4 0 0
			102 139 229 
			92 
			195]
	