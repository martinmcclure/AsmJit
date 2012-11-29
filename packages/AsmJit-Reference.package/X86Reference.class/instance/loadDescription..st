accessing
loadDescription: opName 
	| result sections cache|
	
	cache := FileLocator workingDirectory / 'x86Reference' / opName, '.txt'.
	cache parent ensureDirectory.
	cache exists
		ifFalse: [ self loadRemoteDescription: opName cache: cache].
	result := cache readStream contents.
	
	result ifEmpty: [ ^ nil ].
	(result beginsWith: 'You have specified invalid arguments') ifTrue: [ ^ '' ].
		
	sections := self splitMarkdownSections: result.
	
	^ self buildDescription: opName fromSections: sections.