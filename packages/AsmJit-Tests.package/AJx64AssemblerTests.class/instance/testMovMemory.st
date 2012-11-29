tests
testMovMemory
	"mov memory to 8bit register =========================="
	self 
		assert: [:asm| asm mov: asm RCX ptr to: asm AL ] 
		bytes: #[16r8A 16r00000001 "ModR/M"].
	
