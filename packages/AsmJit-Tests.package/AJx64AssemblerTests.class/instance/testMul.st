tests
testMul
	"8bit unsigned multiplication =================================="
	"lower bank register: AX := AL * CL"
	self 
		assert: [ :asm| asm mul: asm CL]
		bytes: #[ 16rF6 "ModR/M" 2r11100001 ].
	"upper bank register needs an REX prefix: AX := AL * R8B"
	self 
		assert: [ :asm| asm mul: asm R9B]
		bytes: #[ 2r01000001 16rF6 2r11100001].
		
	"16bit unsigned multiplication =================================="	
	"DX:AX := AX * CX"
	self 
		assert: [ :asm| asm mul: asm CX]
		bytes: #[ "16bit fallback" 16r66 16rF7 2r11100001].
	"32bit unsigned multiplication =================================="	
	"EDX:EAX := EAX * ECX"
	self 
		assert: [ :asm| asm mul: asm ECX]
		bytes: #[ 16rF7 2r11100001 ].
	"64bit unsigned multiplication =================================="	
	"RDX:RAX := RAX * RCX"
	self 
		assert: [ :asm| asm mul: asm RCX]
		bytes: #[ 2r01001000 16rF7 2r11100001].