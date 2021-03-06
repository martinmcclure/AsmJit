tests
testCallInvalid
	"on 64 bit ..
	- only 32bit relative offset are allowed
	- only 64bit registers for indirect addresses"

	"relative calls with 64bit addresses are not supported"

	self asmShould: [ :a | a call: 16r123456789ABCDEF ] raise: Error.
	AJx86Registers generalPurpose
		do: [ :register | 
			register is64
				ifFalse: [ self asmShould: [ :a | a call: register ] raise: Error ]
				ifTrue: [ self deny: (self bytes: [ :a | a call: register ]) isEmpty ] ]