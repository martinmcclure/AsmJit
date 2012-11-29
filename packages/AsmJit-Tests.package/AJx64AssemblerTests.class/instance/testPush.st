tests
testPush
	"lower bank 64bit register"		
	self assert: [:asm| asm push: asm RSP ]
		bytes: #[ 16r54 "16r50 + RSP index" ].