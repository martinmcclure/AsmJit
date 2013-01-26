tests
testHighByteRegistersInvalid
	"Can't access AH, BH, CH, DH if a REX byte is required."

	| legacyHRegs op2codes opBothCodes mixedWidthOpCodes byteOperandsRequiringRex highBankByteReg highBank32Reg highBankIndirect highBank8BitDisp highBank32BitDisp highBankIndexReg highBankIndex8BitDisp highBankIndex32BitDisp |
	legacyHRegs := {AH.
	CH.
	DH.
	BH}.
	opBothCodes := #(#adc:with: #add:with: #mov:to: #cmp:with: #or:with: #sbb:with: #sub:with #xadd:with: #xchg:with: #xor:with:).
	op2codes := #(#cmpxchg:with: #test:with:).
	mixedWidthOpCodes := #(#crc32:with: #movsx:to: #movzx:to:).
	highBank32Reg := R8D.
	byteOperandsRequiringRex := {(highBankByteReg := R8B).
	(highBankIndirect := R8 ptr).
	(highBank8BitDisp := R8 ptr + 16r12).
	(highBank32BitDisp := R8 ptr + 16r1234).
	(highBankIndexReg := (RAX ptr + R8) * 2).
	(highBankIndex8BitDisp := (RAX ptr + R8) * 4 + 16r12).
	(highBankIndex32BitDisp := (RAX ptr + R8) * 8 + 16r1234)}.
	legacyHRegs
		do: [ :hreg | 
			byteOperandsRequiringRex
				do: [ :operand | 
					opBothCodes
						do: [ :opcode | 
							self asmShould: [ :a | a perform: opcode with: hreg with: operand ] raise: Error.
							self asmShould: [ :a | a perform: opcode with: operand with: hreg ] raise: Error ].
					op2codes do: [ :opcode | self asmShould: [ :a | a perform: opcode with: operand with: hreg ] raise: Error ] ].
			mixedWidthOpCodes
				do: [ :opcode | self asmShould: [ :a | a perform: opcode with: highBank32Reg with: hreg ] raise: Error ] ]