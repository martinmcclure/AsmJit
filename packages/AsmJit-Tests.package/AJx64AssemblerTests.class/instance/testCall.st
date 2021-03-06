tests
testCall
	"relative calls ==================================================================="
	"8bit offset"
	self assert: [:a | a call: 16r12 ] bytes: #[ 16rE8 16r12 0 0 0].
	"16bit offset"
	self assert: [:a | a call: 16r1234 ] bytes: #[ 16rE8 16r34 16r12 0 0 ].
	"32bit offset"
	self assert: [:a | a call: 16r12345678 ] bytes: #[ 16rE8 16r78 16r56 16r34 16r12 ].
	
	"indirect calls ==================================================================="
	"lower bank register"
	self assert: [:a | a call: asm RAX ] bytes: #[ 16rFF 2r11010000 ].
	self assert: [:a | a call: asm RDI ] bytes: #[ 16rFF 2r11010111 ].
	
	"upper bank register (require REX prefix)"
	self assert: [:a | a call: asm R8 ] bytes: #[ 2r01001001 16rFF 2r11010000 ].
	self assert: [:a | a call: asm R15 ] bytes: #[ 2r01001001 16rFF 2r11010111 ].
	
	"double indirect calls (with ModR/M) =============================================="
	"mod = 2r00"
	"lower bank register"
	self assert: [:a | a call: a RAX ptr ] bytes: #[ 16rFF 2r00010000 ].
	self assert: [:a | a call: a RDI ptr ] bytes: #[ 16rFF 2r00010111 ].
	
	"upper bank register (require REX prefix)"
	self assert: [:a | a call: a R8 ptr ] bytes: #[ 2r01000001 16rFF 2r00010000 ].
	self assert: [:a | a call: a R15 ptr ] bytes: #[ 2r01000001 16rFF 2r00010111 ].
	
	"double indirect calls with offsets =============================================="
	"mod = 2r01 hence with a folllwing 8bit offset"
	"lower bank register"
	self assert: [:a | a call: a RAX ptr + 8 ] bytes: #[ 16rFF 2r01010000 8].
	self assert: [:a | a call: a RDI ptr + 8 ] bytes: #[ 16rFF 2r01010111 8].
	
	"upper bank register (require REX prefix)"
	self assert: [:a | a call: a R8 ptr + 8] bytes: #[ 2r01000001 16rFF 2r01010000 8].
	self assert: [:a | a call: a R15 ptr + 8] bytes: #[ 2r01000001 16rFF 2r01010111 8].
	
	"double indirect calls with offsets =============================================="
	"mod = 2r10 hence with a following 32bit offset"
	"lower bank register"
	self assert: [:a | a call: a RAX ptr + 16r12345678 ] bytes: #[ 16rFF 2r10010000 16r78 16r56 16r34 16r12].
	self assert: [:a | a call: a RDI ptr + 16r12345678 ] bytes: #[ 16rFF 2r10010111 16r78 16r56 16r34 16r12].
	
	"upper bank register (require REX prefix)"
	self assert: [:a | a call: a R8 ptr + 16r12345678] bytes: #[ 2r01000001 16rFF 2r10010000 16r78 16r56 16r34 16r12].
	self assert: [:a | a call: a R15 ptr + 16r12345678] bytes: #[ 2r01000001 16rFF 2r10010111 16r78 16r56 16r34 16r12].