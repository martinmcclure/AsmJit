tests
testExternalLabelDisplacementLimits
	self
		assert: (self externalLabelCalledAddress: 16rC0000004 callingAddress: 16r40000000)
		equals: #[16rC3] -> #[16rE8 16rFF 16rFF 16rFF 16r7F].
	self should: (self externalLabelCalledAddress: 16rC0000005 callingAddress: 16r40000000) raise: Error.
	self
		assert: (self externalLabelCalledAddress: 16r30000005 callingAddress: 16rB0000000)
		equals: #[16rC3] -> #[16rE8 16r00 16r00 16r00 16r80].
	self should: (self externalLabelCalledAddress: 16r30000004 callingAddress: 16rB0000000) raise: Error