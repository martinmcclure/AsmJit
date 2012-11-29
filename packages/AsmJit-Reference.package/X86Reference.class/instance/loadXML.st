loading
loadXML
	soup := Soup fromString: (ZnEasy get: 'http://ref.x86asm.net/x86reference.xml') contents. 
	