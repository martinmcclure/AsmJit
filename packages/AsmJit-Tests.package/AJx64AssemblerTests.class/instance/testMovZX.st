tests
testMovZX
	"byte to word ========================================"
	"lower bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm AX ]
		bytes: #[102 15 182 192 ].
	"lower bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm R8W ]
		bytes: #[102 68 15 182 192].
	"upper bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm AX ]
		bytes: #[102 65 15 182 192].
	"upper bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm R8W ]
		bytes: #[102 69 15 182 192].
	
	"byte to doubleword ================================"
	"lower bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm EAX ]
		bytes: #[15 182 192 ].
	"lower bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm R8D ]
		bytes: #[68 15 182 192].
	"upper bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm EAX ]
		bytes: #[65 15 182 192].
	"upper bank 8bit to lower bank 32bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm R8D ]
		bytes: #[69 15 182 192].
	
	"byte to quadword ==================="
	"lower bank 8bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm RAX ]
		bytes: #[72 15 182 192 ].
	"lower bank 8bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm AL to: asm R8 ]
		bytes: #[76 15 182 192].
	"upper bank 8bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm RAX ]
		bytes: #[73 15 182 192 ].
	"upper bank 8bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm R8B to: asm R8 ]
		bytes: #[77 15 182 192].
	
	"word to quadword ==================="
	"lower bank 16bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm AX to: asm RAX ]
		bytes: #[72 15 183 192].
	"lower bank 16bit to upper bank 64bit"
	self 
		assert: [:asm| asm movzx: asm AX to: asm R8 ]
		bytes: #[76 15 183 192].
	"upper bank 16bit to lower bank 64bit"
	self 
		assert: [:asm| asm movzx: asm R8W to: asm RAX ]
		bytes: #[73 15 183 192].
	"upper bank 16bit to upper bank 64bit"
	self 
		assert: [:asm| asm movzx: asm R8W to: asm R8 ]
		bytes: #[77 15 183 192].