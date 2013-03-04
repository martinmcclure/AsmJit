external labels
startAddress: absoluteAddress
	startAddress := absoluteAddress.
	externalLabels do: [ :el | el routineStartAddress: absoluteAddress ].
	externalReferences do: [ :er | er routineStartAddress: absoluteAddress ]