accessing
code: aCode
	code := aCode.
	size :=  1 << (( code bitAnd: RegTypeMask ) >> 4).