code generation
emitScale: shift index: indexCode base: baseCode
	self emitByte: ((shift << 3) + (indexCode bitAnd: 7) << 3) + (baseCode bitAnd: 7)