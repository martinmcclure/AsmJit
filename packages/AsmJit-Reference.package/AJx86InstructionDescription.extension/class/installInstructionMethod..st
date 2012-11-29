*AsmJit-Reference
installInstructionMethod: anInstructionDescription
	| group|
	group := anInstructionDescription group.
	
	group == #alu ifTrue: [
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #( 'aRegisterOrMemoryOperand' 'aSource')}].
		
	group == #mem ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription
			arguments: { 1 -> #('aMemoryOperand')} ].
		
	group == #rrm ifTrue: [
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aRegister' 'aSourceRegisterOrMemory')} ].
		
	group == #crc32 ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription
			arguments: { 2 -> #('aRegister' 'aSourceRegisterOrMemory')} ].
		
	group == #rot ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription
			arguments: { 2 -> #('aDestinationRegisterOrMemory' 'aRegisterOrImmediate')}].

	group == #bt	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegisterOrMemory' 'aSourceRegisterOrImmediate')}].
		
	group == #pop	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aRegisterOrMemoryDestination')}].
		
	group == #push	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aSource')}].
		
	group == #rm	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aDestination')}].
		
	group == #incdec	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aRegisterOrMemory')}].
		
	group == #movPtr	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aRegisterOrImmedate1' 'aRegisterOrImmedate2')}].
		
	group == #xchg	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegisterOrMemory' 'aSourceRegister')}].
		
	group == #lea	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegister' 'aSourceMemory')}].
		
	group == #call	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('anAddressSource')}].
		
	group == #test	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aRegisterOrMemory' 'aRegisterOrImmediate')}].
		
	group == #bswap	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aDestinationRegister')}].
		
	group == #jmp	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aLabelOrRegisterOrMemory')}].
		
	group == #ret	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('anImmediate')}].
		
	group == #enter	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('stackFrameSize' 'lexicalNesting')}].
		
	group == #imul	ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 
				1 -> #('aRegisterOrMemory').
				2 -> #('aRegister' 'aRegisterOrMemoryOrImmediate').
				3 -> #('aRegister' 'aRegisterOrMemory' 'anImmediate')}].
		
	group == #rmr ifTrue: [ 
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegisterOrMemory' 'aSourceRegister')}].
		 
	group == #mov	ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegisterOrMemory' 'aSource')}].
		
	group == #cjmp ifTrue: [
		^ self 
			installInstruction: anInstructionDescription 
			arguments: { 
				1 -> #('targetLabel').
				"2 -> #('targetLabel' 'hint')"}].
		
	group == #shldShrd	ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 3 -> #('aDestinationRegisterOrMemory' 'aSourceRegister' 'aSourceRegisterOrImmediate')}].
		
	group == #movSxZx ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegister' 'aSourceRegisterOrMemory')}].
		
	group == #mmuMov ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aRegisterOrMemory1' 'aRegisterOrMemory2')}].
		
	group == #x87sti ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aX87Register')}].
		
	group == #x87fpu ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 
				1 -> #('aMemoryOperand').
				2 -> #('aX87Register1' 'aX87Register2')}].
		
	group == #x87mem ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aMemoryOperand')}].
		
	group == #x87memSti ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aMemoryOrX87Register')}].
		
	group == #movsxd ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 2 -> #('aDestinationRegister' 'aSourceRegisterOrMemory')}].
		
	group == #x87sti ifTrue: [
		^ self
			installInstruction: anInstructionDescription 
			arguments: { 1 -> #('aX87Register')}].
		
	group == #emit ifTrue: [
		^ self installInstruction: anInstructionDescription  ].
		
	group == #mmurmi	ifTrue: [ ^ self "not yet implemented"].
	group == #mmuRm3DNow	ifTrue: [ ^ self "not yet implemented"].
	group == #x87fstsw	ifTrue: [ ^ self "not yet implemented"].
	group == #movbe	ifTrue: [ ^ self "not yet implemented"].
	group == #mmuPextr	ifTrue: [ ^ self "not yet implemented"].
	group == #mmuRmImm8 ifTrue: [ ^ self "not yet implemented"].
	group == #mmuPrefetch ifTrue: [ ^ self "not yet implemented"].
	group == #mmuMovQ ifTrue: [ ^ self "not yet implemented"].
	group == #mmuMovD ifTrue: [ ^ self "not yet implemented"].
	self halt.