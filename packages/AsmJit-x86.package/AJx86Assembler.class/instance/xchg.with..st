instructions generated
xchg: aDestinationRegisterOrMemory with: aSourceRegister
	"Exchange Register/Memory with Register
	Pseudo Code
-----------
TEMP = DEST;
DEST = SRC;
SRC = TEMP;

Description
-----------
Exchanges the contents of the destination (first) and source (second)
operands. The operands can be two general-purpose registers or a
register and a memory location. If a memory operand is referenced, the
processor's locking protocol is automatically implemented for the
duration of the exchange operation, regardless of the presence or
absence of the LOCK prefix or of the value of the IOPL. (See the LOCK
prefix description in this chapter for more information on the locking
protocol.)

This instruction is useful for implementing semaphores or similar data
structures for process synchronization. (See 'Bus Locking' in Chapter 8
of theIntel® 64 and IA-32Architectures Software Developer's Manual,
Volume 3A, for more information on bus locking.)

The XCHG instruction can also be used instead of the BSWAP instruction
for 16-bit operands.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #xchg
		operands: { aDestinationRegisterOrMemory . aSourceRegister }