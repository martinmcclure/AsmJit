tests
testMovZxSxInvalid
	
	{AH. CH. DH. BH} do: [:reg|
		self deny: (self bytes: [ :asm| asm movzx: reg to: asm EAX ]) isEmpty.	
		self 
			asmShould: [ :asm| asm movzx: reg to: asm RAX.]
			raise: Error. 
		]