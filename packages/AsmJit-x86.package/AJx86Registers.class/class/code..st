accessing
code: registerCode
	"Access a register by its code.
	Example:
		RBP == (self code: RBP code)"
	
	^ self classPool at: (Codes at: registerCode)