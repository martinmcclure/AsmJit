labels
label: aNameOrLabel
	^ self 
		label: aNameOrLabel 
		ifPresent: [ self error: 'label ', aNameOrLabel asString, ' already set' ].