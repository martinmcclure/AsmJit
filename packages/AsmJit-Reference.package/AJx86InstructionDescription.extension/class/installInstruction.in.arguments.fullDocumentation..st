*AsmJit-Reference
installInstruction: anInstructionDescription in: aClass arguments: argumentDescription fullDocumentation: showFullDocumentation
	| argSize arguments opName |
	
	argSize := argumentDescription key.
	arguments := argumentDescription value.
	opName := anInstructionDescription name.
	
	^ aClass compile: (String streamContents: [ :s | 
			s nextPutAll: opName.
			arguments 
				do: [:argName| s nextPutAll: ': '; nextPutAll: argName ]
				separatedBy: [ s nextPutAll: ' with'].
			
			s crtab; nextPut: $".
			showFullDocumentation 
				ifTrue: [
					(reference commentAt: opName) ifNotNilDo: [ :comment | s nextPutAll: comment ].
					(reference descriptionAt: opName) ifNotNilDo: [ :description | 
						s crtab; nextPutAll: (description replaceAll: $" with: $')]]
				ifFalse: [ s crtab nextPutAll: 'see #', opName ].
			s 
				nextPut: $"; crtab;
				nextPutAll: '^ self ';
				crtab; tab; nextPutAll: 'addInstruction: #'; nextPutAll: opName; 
				crtab; tab; nextPutAll: 'operands: { '; nextPutAll: (' . ' join: arguments);	nextPutAll: ' }' ])
		classified: 'instructions generated'