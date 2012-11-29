loading
loadComments
	| html instructionEntry cache result|
	html := Soup fromString: (ZnEasy get: 'http://ref.x86asm.net/geek-abc.html') contents. 
	instructionEntry := ((html asXPath // 'table')  attribute: 'class' matching: 'ref_table notpublic' asRegex) / 'tbody' / 'tr'.
	
	comments := IdentityDictionary new.
	instructionEntry do: [ :each| |entry instructionName description|
		entry := each asXPath / 'td'.
		instructionName := entry first text trimBoth asLowercase asSymbol.
		comments at: instructionName ifAbsentPut: [ entry last text trimBoth ]]
	