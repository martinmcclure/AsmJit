*AsmJit-Reference
installInstruction: anInstructionDescription arguments: argumentDescriptions
	| aClass op2 op3 op4 |
	aClass := anInstructionDescription is64BitOnly
		ifFalse: [ AJx86Assembler ]
		ifTrue: [ AJx64Assembler ].
		
	argumentDescriptions withIndexDo: [ :argumentDescription :i |
		self 
			installInstruction: anInstructionDescription 
			in: aClass 
			arguments: argumentDescription
			fullDocumentation: (i = 1) ]