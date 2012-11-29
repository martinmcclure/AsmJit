parsing
splitMarkdownSections: aString
	| sections previousLine currentSection currentContent |
	
	sections := Dictionary new.
	currentSection := nil.
	currentContent := OrderedCollection new.
	
	aString linesDo: [ :line|
		((line beginsWith: '--') or: [ line beginsWith: '=='])
			ifTrue: [
				currentSection ifNotNil: [
					sections 
						at: currentSection 
						put: (currentContent allButLast joinUsing: Character cr) trimBoth].
				currentSection := previousLine.
				currentContent := OrderedCollection new ]
			ifFalse: [ currentContent add: line ].
		previousLine := line.
	].
	^ sections 