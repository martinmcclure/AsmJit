accessing
name
	^ String streamContents: [ :s|
		self printSelfOn: s]