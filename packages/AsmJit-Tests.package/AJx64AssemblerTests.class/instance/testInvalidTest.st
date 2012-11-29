tests
testInvalidTest
	"In 64-bit mode, r/m8 cannot be encoded to access the following byte registers if an REX prefix is used: AH, BH, CH, DH."
	
	{AH. CH. DH. BH} do: [:reg|
		self deny: (self bytes: [ :asm| asm test: reg with: AL ]) isEmpty.	
		self deny: (self bytes: [ :asm| asm test: reg with: 16r12 ]) isEmpty.	
		"with an upper bank byte register => requires REX prefix"
		self asmShould: [ :asm| asm test: reg with: asm R8B.] raise: Error. 
		self asmShould: [ :asm| asm test: asm R8B with: reg.] raise: Error. 
		"with a 64bit register requring again an REX prefix"
		self asmShould: [ :asm| asm test: reg with: asm RAX.] raise: Error. 
		self asmShould: [ :asm| asm test: asm RAX with: reg.] raise: Error. 
		]