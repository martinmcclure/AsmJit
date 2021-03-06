tests
testXorFastCode
	self  "shortcut for AL + 8bit immedidate"
		assert: [ :a | a xor: a AL with: 16r12]
		bytes: #[ 16r34    16r12].
		
	self  "shortcut for AX + 16bit immedidate"
		assert: [ :a | a xor: a AX with: 16r1234]
		bytes: #[ 16r66 16r35    16r34 16r12].
		
	self  "shortcut for EAX + 16bit immedidate"
		assert: [ :a | a xor: a EAX with: 16r12345678]
		bytes: #[ 16r35    16r78 16r56 16r34 16r12].
		
	self  "shortcut for RAX + 32bit immedidate"
		assert: [ :a | a xor: a RAX with: 16r12345678]
		bytes: #[ 2r01001000 16r35    16r78 16r56 16r34 16r12].