tests
testPop
	"lower bank 64bit register"		
	self assert: [:asm| asm pop: asm RSP ]
		bytes: #[ 16r5c ].