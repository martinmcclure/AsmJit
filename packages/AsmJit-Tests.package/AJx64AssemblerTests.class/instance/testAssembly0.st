tests
testAssembly0
	
	self 
		assert: [:asm|
			asm mov: 16rfeedface -> RAX]
		bytes: #[72 184 206 250 237 254 0 0 0 0]