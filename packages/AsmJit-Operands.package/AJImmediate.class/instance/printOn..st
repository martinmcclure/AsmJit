printing
printOn: aStream
	aStream nextPut: $(.

	self printAnnotationOn: aStream.
	  
	value > 1000000 
		ifTrue: [ aStream nextPutAll: value hex]
		ifFalse: [ aStream print: value].

	aStream space.
		
	aStream nextPut: (
		self isSigned ifTrue: [ $i ] ifFalse: [ $u ]).

	size ifNotNil: [ aStream print: size].
	
	aStream nextPut: $).

	
