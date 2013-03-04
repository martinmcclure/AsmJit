external labels
patchAt: offset to: displacement
	"Offset is 0-based."

	| d |
	d := displacement negative
		ifTrue: [ displacement + 16r100000000 ]
		ifFalse: [ displacement ].
	(d between: 0 and: 16rFFFFFFFF)
		ifFalse: [ self error: 'Label target too far from reference.' ].
	offset + 1 to: offset + 4 do: [ :o | 
		bytes at: o put: d \\ 16r100.
		d := d bitShift: -8 ]