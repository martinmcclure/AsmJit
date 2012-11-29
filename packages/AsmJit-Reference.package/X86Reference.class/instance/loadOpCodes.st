loading
loadOpCodes
	opCodes := Dictionary new.
	(soup asXPath // 'pri_opcd') do: [ :opcodeNode| | opcode name |
		opcode := opcodeNode @ #value.
		opcode :=  Number readFrom: opcode base: 16.
		(opCodes at: opcode ifAbsentPut: [ OrderedCollection new ]) add: opcodeNode.
		name := (opcodeNode // 'mnem').
		name isEmpty ifFalse: [ 
			name := name first text asSymbol asLowercase.
			(opCodes at: name ifAbsentPut: [ OrderedCollection new ])
				add: opcodeNode ]].