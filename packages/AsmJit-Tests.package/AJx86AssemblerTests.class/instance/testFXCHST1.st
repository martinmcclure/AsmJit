tests-FPU
testFXCHST1

	self 
		assert: [ :a| a fxch: asm ST1 ]
		bytes: #[	2r11011001 2r11001001 ]
	