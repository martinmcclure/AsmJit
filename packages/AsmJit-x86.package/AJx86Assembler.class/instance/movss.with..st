instructions generated
movss: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Scalar Single-FP Values
	Description
-----------
Moves a scalar single-precision floating-point value from the source
operand (second operand) to the destination operand (first operand). The
source and destination operands can be XMM registers or 32-bit memory
locations. This instruction can be used to move a single-precision
floating-point value to and from the low doubleword of an XMM register
and a 32-bit memory location, or to move a single-precision
floating-point value between the low doublewords of two XMM registers.
The instruction cannot be used to transfer data between memory
locations.

When the source and destination operands are XMM registers, the three
high-order doublewords of the destination operand remain unchanged. When
the source operand is a memory location and destination operand is an
XMM registers, the three high-order doublewords of the destination
operand are cleared to all 0s.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movss
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }