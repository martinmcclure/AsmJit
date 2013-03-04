An AJGeneratedCode is the code that results from the instructions of a single Assembler instance.

Instance Variables:
	bytes	<(ByteArray of: SmallInteger)> The machine code
	labels	<Dictionary>
	externalReferences	<IdentitySet of AJExternalReference> References (via jump or call instructions) that may be to a different GeneratedCode instance.