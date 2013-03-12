external labels
patchAt: offset to: displacement
	"Offset is 0-based."

	| d |
	(displacement between: -16r80000000 and: 16r7FFFFFFF)
		ifFalse: [ self error: 'Label target too far from reference.' ].
	d := displacement negative
		ifTrue: [ displacement + 16r100000000 ]
		ifFalse: [ displacement ].
	offset + 1 to: offset + 4 do: [ :o | 
		bytes at: o put: d \\ 16r100.
		d := d bitShift: -8 ]