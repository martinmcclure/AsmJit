accessing
buildDescription: opName fromSections: sections

	^ String streamContents: [ :s|
		sections 
			at: 'Pseudo Code' 
			ifPresent: [ :shortDescription| | lines|
				lines := shortDescription lines.
				lines size <= 10
					ifTrue: [
						s 
							nextPutAll: 'Pseudo Code'; cr;
							nextPutAll: '-----------'; cr;
							nextPutAll: (lines allButFirst allButLast joinUsing: Character cr); cr; cr. ]];
					
			at: 'Description' 
			ifPresent: [ :shortDescription| 
				s 
					nextPutAll: 'Description'; cr;
					nextPutAll: '-----------'; cr;
					nextPutAll: shortDescription; cr; cr. ]]