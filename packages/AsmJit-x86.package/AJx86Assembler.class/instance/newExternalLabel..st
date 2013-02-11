labels
newExternalLabel: description
	"Create and answer a new external label. This is the public way to create an external label; you should not reference AJExternalLabel directly. The given description is used when printing the label, but not for idenfifying the label (all labels could have the same description, but they would still be distinct labels. The resulting label is not associated with the receiving assembler instance. It will be associated with one or more assemblers when it is the argument to a #label: (once) or to any call or jump instruction (any number of times, in any number of assemblers)."

	^ AJExternalLabel withDescription: description