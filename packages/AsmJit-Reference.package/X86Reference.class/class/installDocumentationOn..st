utility
installDocumentationOn: instructionList
	| ref |
	ref := self new.
	ref parseReference.
	instructionList 
		do: [ :instruction| 
			instruction comment: (ref commentAt: instruction name).
			instruction description: (ref descriptionAt: instruction name).]
		displayingProgress: [ :instruction| 'installing comments on ', instruction name ]