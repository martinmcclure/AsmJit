tests
testXorInvalid
	"xor registers with non-matching sizes"
	self asmShould: [ :asm| asm xor: AL to: RAX] raise: Error. 
	self asmShould: [ :asm| asm xor: RAX to: AL] raise: Error. 
	self asmShould: [ :asm| asm xor: R8B to: RAX] raise: Error. 
	self asmShould: [ :asm| asm xor: RAX to: R8B] raise: Error. 
	
	"in 64bit mode AH CH DH and BH cannot be encoded when an REX prefix is present"
	{AH. CH. DH. BH} do: [:reg|
		self asmShould: [ :asm| asm xor: reg to: asm R8B] raise: Error.]