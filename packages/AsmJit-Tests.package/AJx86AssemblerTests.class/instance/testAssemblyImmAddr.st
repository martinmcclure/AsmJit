tests
testAssemblyImmAddr
	"test generating immediate address, 
	note GDB disassembling it to:
		0x1fab <instructions.1862>:     0x8b    0x05    0xef    0xbe    0xad    0xde
		0x00001fab <instructions.1862+0>:       mov    0xdeadbeef,%eax
	which is WRONG!
	"

	asm
		mov: 16rdeadbeef asUImm ptr32 to: asm EAX. 

	" 8b05efbeadde                   mov         eax, [deadbeef] "
	
	self assert: asm bytes =  #[139 5 239 190 173 222]
	