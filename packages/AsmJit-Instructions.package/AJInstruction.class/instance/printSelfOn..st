printing
printSelfOn: aStream 
	self printAnnotationOn: aStream.
	aStream nextPutAll: (self name ). "padRightTo: 4)."
	self printOperandsOn: aStream.
	self printMachineCodeOn: aStream