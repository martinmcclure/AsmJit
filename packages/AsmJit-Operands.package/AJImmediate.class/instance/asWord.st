converting
asWord
	"answer the 16bit word representing a value"
	(self fitsInSize: 2)
		ifFalse: [ Error signal: self asString, ' value exceeds word (16bit) range' ].

	(self isSigned and: [ value < 0 ]) ifTrue: [ ^ (1<<16) + value ].
	
	^ value