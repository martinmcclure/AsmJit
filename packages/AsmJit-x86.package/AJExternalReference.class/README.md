AJExternalReference represents a reference, in a call or jump instruction, to an AJExternalLabel. This class should not be referenced directly; it and its instances are internal to AsmJit. The recommended public use pattern is to create an external label by sending an assembler #newExternalLabel:, then use that label as an argument to a call or jump instruction. See also the class comment of AJExternalLabel.

Instance Variables:
	target	<AJExternalLabel> The label that I jump or call to.
 	routine	<AJGeneratedCode> The generatedCode in which my jump or call resides. Nil until code has been generated.
	offset	<Integer> Offset of my 32-bit displacement within my generatedCode. 
						This is the offset to the first of the four bytes that will need patching.  Nil until code has been generated.
	isResolved	<Boolean> True once the displacement bytes have been patched in my generatedCode.