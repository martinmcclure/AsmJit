testing
isHighByte
	"return true for 8bit high-byte registers (AH - DH)"
	^ self is8 and: [ (self code bitAnd: RegHighByteMask) = 2r100 ]