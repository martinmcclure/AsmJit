accessing
generalPurpose64
	^ self sortRegistersByIndex: (self generalPurpose select: [:reg| reg is64 ])