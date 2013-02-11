AJExternalLabel represents a label that is the target of jump or call instructions using a 32-bit relative displacement, possibly between multiple routines independently created with different Assembler instances.

This class should not be referenced directly. To create an instance, send #newExternalLabel: to an Assembler instance.

The resulting instance may be used as an argument to #label: sent to any assembler, and as an argument to any jump or call instruction in any number of assemblers. Once code is generated for both the source and target assemblers, and the starting address of all the resulting GeneratedCodes is set via #startAddress: , all jump and call sites will have been patched with appropriate displacements and the bytes are ready to be installed at the given addresses.

Instance Variables:
	description	<String> Used only in printing, to make debugging easier. Specifically does *not* identify this label in any way.
	isSet	<Boolean> True if I have been the argument to #label: in some Assembler. I can only be used this way once.
	routine	<AJGeneratedCode> Once code has been generated, this is a reference to the routine that contains my target address.
	offset	<Integer> The relative byte offset of my target address relative to the start of my routine. Set once code has been generated.
	references	<IdentitySet of AJExternalReference> All the places I've been used as a target for a call or jump instruction.