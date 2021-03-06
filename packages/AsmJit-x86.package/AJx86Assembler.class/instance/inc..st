instructions generated
inc: aRegisterOrMemory
	"Increment by 1
	Pseudo Code
-----------
DEST = DEST + 1;
AFlags Affected
The CF flag is not affected. The OF, SF, ZF, AF, and PF flags are set according to the result.

Description
-----------
Adds 1 to the destination operand, while preserving the state of the CF
flag. The destination operand can be a register or a memory location.
This instruction allows a loop counter to be updated without disturbing
the CF flag. (Use a ADD instruction with an immediate operand of 1 to
perform an increment operation that does updates the CF flag.)

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, INC r16 and INC r32 are not encodable (because opcodes
40H through 47H are REX prefixes). Otherwise, the instruction's 64-bit
mode default operation size is 32 bits. Use of the REX.R prefix permits
access to additional registers (R8-R15). Use of the REX.W prefix
promotes operation to 64 bits.

"
	^ self 
		addInstruction: #inc
		operands: { aRegisterOrMemory }