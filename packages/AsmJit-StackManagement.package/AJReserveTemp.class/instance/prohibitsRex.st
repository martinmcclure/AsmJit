testing
prohibitsRex
	"Used as an operand, a reserved temp is always an access to EBP plus an offset.
	Thus, it never prohibits a REX prefix."

	^ false