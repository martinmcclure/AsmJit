accessing
sizeFor: anOperand
	"Check if I am a valid size to be used together with anOperand
	If so, I will use as much size as it"
	self assert: (self fitsInSize: anOperand size).
	^anOperand size