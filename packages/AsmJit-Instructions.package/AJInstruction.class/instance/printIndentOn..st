printing
printIndentOn: aStream 
	level ifNil: [ ^ self ].
	level timesRepeat: [ aStream nextPutAll: '|   ']