printing
printOn: aStream

	self printAnnotationOn: aStream.

	aStream nextPutAll: 'mem['.

	base ifNotNil: [	
		base printAsMemBaseOn: aStream.
		(index isNil and: [ displacement isNil ])
			ifFalse: [ aStream nextPutAll: ' + ' ]].
		
	index ifNotNil: [
		aStream nextPutAll: index registerName	.
		displacement ifNotNil: [ aStream nextPutAll: ' + ']].
	
	displacement ifNotNil: [
		aStream print: displacement ].
	  
	aStream nextPut: $].