code generation
emitX86RM: opCode size: aSize regOrCode: regOrCode rm: regOrMem 
"Emit instruction with reg/memory operand."
	
	^ self emitX86RM: opCode size: aSize regOrCode: regOrCode rm: regOrMem immSize: 0
