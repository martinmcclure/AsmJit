tests
testAssembly01
	self
		assert: [ :a | 
			self assert: (a reg: 8 size: 4) = R8D.	"mov    $0xfeedface,%r8d"
			a mov: 16rfeedface asUImm to: R8D ]
		bytes: #[65 184 206 250 237 254]