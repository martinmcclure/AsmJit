private
patchIfPossible
	"If both my addresses have been set, patch my routine's code to make the target of the jump or call to be target."

	isResolved not & patchAddress notNil & targetAddress notNil
		ifTrue: [ 
			| displacement |
			displacement := targetAddress - (patchAddress + 4).
			routine patchAt: offset to: displacement.
			isResolved := true ]