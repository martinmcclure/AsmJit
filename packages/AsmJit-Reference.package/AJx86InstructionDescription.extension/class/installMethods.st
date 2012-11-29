*AsmJit-Reference
installMethods
	reference := X86Reference new.
	reference parseReference.
	self instructions
		do: [:instruction | self installInstructionMethod: instruction]
		displayingProgress: [:instruction | instruction name asString].
	reference := nil