accessing
generalPurpose8
	^ self sortRegistersByIndex: (self generalPurpose select: [:reg| reg is8 ])