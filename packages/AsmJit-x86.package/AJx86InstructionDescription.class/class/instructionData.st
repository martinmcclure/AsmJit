initialization
instructionData
^ #(
(#adc #alu 0 0 "R" 2 "C1" 16r00000010 "C2" 16r00000080 )
(#add #alu 0 0 "R" 0 0 "C2" 16r00000080 )
(#addpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F58 0 )
(#addps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F58 0 )
(#addsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F58 0 )
(#addss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F58 0 )
(#addsubpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000FD0 0 )
(#addsubps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000FD0 0 )
(#amdprefetch #mem "op1" 2r1000000 0 "R" 0 "C1" 16r00000F0D 0 )
(#amdprefetchw #mem "op1" 2r1000000 0 "R" 1 "C1" 16r00000F0D 0 )
(#and #alu 0 0 "R" 4 "C1" 16r00000020 "C2" 16r00000080 )
(#andnpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F55 0 )
(#andnps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F55 0 )
(#andpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F54 0 )
(#andps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F54 0 )
(#blendpd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A0D 0 )
(#blendps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A0C 0 )
(#blendvpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3815 0 )
(#blendvps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3814 0 )
(#bsf #rrm 0 0 "R" 0 "C1" 16r00000FBC 0 )
(#bsr #rrm 0 0 "R" 0 "C1" 16r00000FBD 0 )
(#bswap #bswap 0 0 "R" 0 0 0 )
(#bt #bt "op1" 2r1001110 "op2" 2r10001110 "R" 4 "C1" 16r00000FA3 "C2" 16r00000FBA )
(#btc #bt "op1" 2r1001110 "op2" 2r10001110 "R" 7 "C1" 16r00000FBB "C2" 16r00000FBA )
(#btr #bt "op1" 2r1001110 "op2" 2r10001110 "R" 6 "C1" 16r00000FB3 "C2" 16r00000FBA )
(#bts #bt "op1" 2r1001110 "op2" 2r10001110 "R" 5 "C1" 16r00000FAB "C2" 16r00000FBA )
(#call #call 0 0 "R" 0 0 0 )
(#clc #emit 0 0 "R" 0 "C1" 16r000000F8 0 )
(#cld #emit 0 0 "R" 0 "C1" 16r000000FC 0 )
(#clflush #mem "op1" 2r1000000 0 "R" 7 "C1" 16r00000FAE 0 )
(#cmc #emit 0 0 "R" 0 "C1" 16r000000F5 0 )
(#cmova #rrm 0 0 "R" 0 "C1" 16r00000F47 0 )
(#cmovae #rrm 0 0 "R" 0 "C1" 16r00000F43 0 )
(#cmovb #rrm 0 0 "R" 0 "C1" 16r00000F42 0 )
(#cmovbe #rrm 0 0 "R" 0 "C1" 16r00000F46 0 )
(#cmovc #rrm 0 0 "R" 0 "C1" 16r00000F42 0 )
(#cmove #rrm 0 0 "R" 0 "C1" 16r00000F44 0 )
(#cmovg #rrm 0 0 "R" 0 "C1" 16r00000F4F 0 )
(#cmovge #rrm 0 0 "R" 0 "C1" 16r00000F4D 0 )
(#cmovl #rrm 0 0 "R" 0 "C1" 16r00000F4C 0 )
(#cmovle #rrm 0 0 "R" 0 "C1" 16r00000F4E 0 )
(#cmovna #rrm 0 0 "R" 0 "C1" 16r00000F46 0 )
(#cmovnae #rrm 0 0 "R" 0 "C1" 16r00000F42 0 )
(#cmovnb #rrm 0 0 "R" 0 "C1" 16r00000F43 0 )
(#cmovnbe #rrm 0 0 "R" 0 "C1" 16r00000F47 0 )
(#cmovnc #rrm 0 0 "R" 0 "C1" 16r00000F43 0 )
(#cmovne #rrm 0 0 "R" 0 "C1" 16r00000F45 0 )
(#cmovng #rrm 0 0 "R" 0 "C1" 16r00000F4E 0 )
(#cmovnge #rrm 0 0 "R" 0 "C1" 16r00000F4C 0 )
(#cmovnl #rrm 0 0 "R" 0 "C1" 16r00000F4D 0 )
(#cmovnle #rrm 0 0 "R" 0 "C1" 16r00000F4F 0 )
(#cmovno #rrm 0 0 "R" 0 "C1" 16r00000F41 0 )
(#cmovnp #rrm 0 0 "R" 0 "C1" 16r00000F4B 0 )
(#cmovns #rrm 0 0 "R" 0 "C1" 16r00000F49 0 )
(#cmovnz #rrm 0 0 "R" 0 "C1" 16r00000F45 0 )
(#cmovo #rrm 0 0 "R" 0 "C1" 16r00000F40 0 )
(#cmovp #rrm 0 0 "R" 0 "C1" 16r00000F4A 0 )
(#cmovpe #rrm 0 0 "R" 0 "C1" 16r00000F4A 0 )
(#cmovpo #rrm 0 0 "R" 0 "C1" 16r00000F4B 0 )
(#cmovs #rrm 0 0 "R" 0 "C1" 16r00000F48 0 )
(#cmovz #rrm 0 0 "R" 0 "C1" 16r00000F44 0 )
(#cmp #alu 0 0 "R" 7 "C1" 16r00000038 "C2" 16r00000080 )
(#cmppd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000FC2 0 )
(#cmpps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000FC2 0 )
(#cmpsd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000FC2 0 )
(#cmpss #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000FC2 0 )
(#cmpxchg #rmr 0 0 "R" 0 "C1" 16r00000FB0 0 )
(#cmpxchg16b #mem "op1" 2r1000000 0 "R" 1 "C1" 16r00000FC7 "C2" 16r00000001 )
(#cmpxchg8b #mem "op1" 2r1000000 0 "R" 1 "C1" 16r00000FC7 0 )
(#comisd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F2F 0 )
(#comiss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F2F 0 )
(#cpuid #emit 0 0 "R" 0 "C1" 16r00000FA2 0 )
(#crc32 #crc32 0 0 "R" 0 "C1" 16rF20F38F0 0 )
(#cvtdq2pd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000FE6 0 )
(#cvtdq2ps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5B 0 )
(#cvtpd2dq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000FE6 0 )
(#cvtpd2pi #mmurmi "op1" 2r10000 "op2" 2r1100000 "R" 0 "C1" 16r66000F2D 0 )
(#cvtpd2ps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5A 0 )
(#cvtpi2pd #mmurmi "op1" 2r100000 "op2" 2r1010000 "R" 0 "C1" 16r66000F2A 0 )
(#cvtpi2ps #mmurmi "op1" 2r100000 "op2" 2r1010000 "R" 0 "C1" 16r00000F2A 0 )
(#cvtps2dq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5B 0 )
(#cvtps2pd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5A 0 )
(#cvtps2pi #mmurmi "op1" 2r10000 "op2" 2r1100000 "R" 0 "C1" 16r00000F2D 0 )
(#cvtsd2si #mmurmi "op1" 2r1100 "op2" 2r1100000 "R" 0 "C1" 16rF2000F2D 0 )
(#cvtsd2ss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F5A 0 )
(#cvtsi2sd #mmurmi "op1" 2r100000 "op2" 2r1001100 "R" 0 "C1" 16rF2000F2A 0 )
(#cvtsi2ss #mmurmi "op1" 2r100000 "op2" 2r1001100 "R" 0 "C1" 16rF3000F2A 0 )
(#cvtss2sd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5A 0 )
(#cvtss2si #mmurmi "op1" 2r1100 "op2" 2r1100000 "R" 0 "C1" 16rF3000F2D 0 )
(#cvttpd2dq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000FE6 0 )
(#cvttpd2pi #mmurmi "op1" 2r10000 "op2" 2r1100000 "R" 0 "C1" 16r66000F2C 0 )
(#cvttps2dq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5B 0 )
(#cvttps2pi #mmurmi "op1" 2r10000 "op2" 2r1100000 "R" 0 "C1" 16r00000F2C 0 )
(#cvttsd2si #mmurmi "op1" 2r1100 "op2" 2r1100000 "R" 0 "C1" 16rF2000F2C 0 )
(#cvttss2si #mmurmi "op1" 2r1100 "op2" 2r1100000 "R" 0 "C1" 16rF3000F2C 0 )
(#daa #emit #x86 0 "R" 0 "C1" 16r00000027 0 )
(#das #emit #x86 0 "R" 0 "C1" 16r0000002F 0 )
(#dec #incdec 0 0 "R" 1 "C1" 16r00000048 "C2" 16r000000FE )
(#div #rm 0 0 "R" 6 "C1" 16r000000F6 0 )
(#divpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5E 0 )
(#divps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5E 0 )
(#divsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F5E 0 )
(#divss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5E 0 )
(#dppd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A41 0 )
(#dpps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A40 0 )
(#emms #emit 0 0 "R" 0 "C1" 16r00000F77 0 )
(#enter #enter 0 0 "R" 0 "C1" 16r000000C8 0 )
(#extractps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A17 0 )
(#f2xm1 #emit 0 0 "R" 0 "C1" 16r0000D9F0 0 )
(#fabs #emit 0 0 "R" 0 "C1" 16r0000D9E1 0 )
(#fadd #x87fpu 0 0 "R" 0 "C1" 16rD8DCC0C0 0 )
(#faddp #x87sti 0 0 "R" 0 "C1" 16r0000DEC0 0 )
(#fbld #mem "op1" 2r1000000 0 "R" 4 "C1" 16r000000DF 0 )
(#fbstp #mem "op1" 2r1000000 0 "R" 6 "C1" 16r000000DF 0 )
(#fchs #emit 0 0 "R" 0 "C1" 16r0000D9E0 0 )
(#fclex #emit 0 0 "R" 0 "C1" 16r9B00DBE2 0 )
(#fcmovb #x87sti 0 0 "R" 0 "C1" 16r0000DAC0 0 )
(#fcmovbe #x87sti 0 0 "R" 0 "C1" 16r0000DAD0 0 )
(#fcmove #x87sti 0 0 "R" 0 "C1" 16r0000DAC8 0 )
(#fcmovnb #x87sti 0 0 "R" 0 "C1" 16r0000DBC0 0 )
(#fcmovnbe #x87sti 0 0 "R" 0 "C1" 16r0000DBD0 0 )
(#fcmovne #x87sti 0 0 "R" 0 "C1" 16r0000DBC8 0 )
(#fcmovnu #x87sti 0 0 "R" 0 "C1" 16r0000DBD8 0 )
(#fcmovu #x87sti 0 0 "R" 0 "C1" 16r0000DAD8 0 )
(#fcom #x87fpu 0 0 "R" 2 "C1" 16rD8DCD0D0 0 )
(#fcomi #x87sti 0 0 "R" 0 "C1" 16r0000DBF0 0 )
(#fcomip #x87sti 0 0 "R" 0 "C1" 16r0000DFF0 0 )
(#fcomp #x87fpu 0 0 "R" 3 "C1" 16rD8DCD8D8 0 )
(#fcompp #emit 0 0 "R" 0 "C1" 16r0000DED9 0 )
(#fcos #emit 0 0 "R" 0 "C1" 16r0000D9FF 0 )
(#fdecstp #emit 0 0 "R" 0 "C1" 16r0000D9F6 0 )
(#fdiv #x87fpu 0 0 "R" 6 "C1" 16rD8DCF0F8 0 )
(#fdivp #x87sti 0 0 "R" 0 "C1" 16r0000DEF8 0 )
(#fdivr #x87fpu 0 0 "R" 7 "C1" 16rD8DCF8F0 0 )
(#fdivrp #x87sti 0 0 "R" 0 "C1" 16r0000DEF0 0 )
(#ffree #x87sti 0 0 "R" 0 "C1" 16r0000DDC0 0 )
(#fiadd #x87mem "op1" 2r110 0 "R" 0 "C1" 16rDEDA0000 0 )
(#ficom #x87mem "op1" 2r110 0 "R" 2 "C1" 16rDEDA0000 0 )
(#ficomp #x87mem "op1" 2r110 0 "R" 3 "C1" 16rDEDA0000 0 )
(#fidiv #x87mem "op1" 2r110 0 "R" 6 "C1" 16rDEDA0000 0 )
(#fidivr #x87mem "op1" 2r110 0 "R" 7 "C1" 16rDEDA0000 0 )
(#fild #x87mem "op1" 2r1110 0 "R" 0 "C1" 16rDFDBDF05 0 )
(#fimul #x87mem "op1" 2r110 0 "R" 1 "C1" 16rDEDA0000 0 )
(#fincstp #emit 0 0 "R" 0 "C1" 16r0000D9F7 0 )
(#finit #emit 0 0 "R" 0 "C1" 16r9B00DBE3 0 )
(#fist #x87mem "op1" 2r110 0 "R" 2 "C1" 16rDFDB0000 0 )
(#fistp #x87mem "op1" 2r1110 0 "R" 3 "C1" 16rDFDBDF07 0 )
(#fisttp #x87mem "op1" 2r1110 0 "R" 1 "C1" 16rDFDBDD01 0 )
(#fisub #x87mem "op1" 2r110 0 "R" 4 "C1" 16rDEDA0000 0 )
(#fisubr #x87mem "op1" 2r110 0 "R" 5 "C1" 16rDEDA0000 0 )
(#fld #x87memSti "op1" 2r11100 0 "R" 0 "C1" 16r00D9DD00 "C2" 16rD9C0DB05 )
(#fld1 #emit 0 0 "R" 0 "C1" 16r0000D9E8 0 )
(#fldcw #mem "op1" 2r1000000 0 "R" 5 "C1" 16r000000D9 0 )
(#fldenv #mem "op1" 2r1000000 0 "R" 4 "C1" 16r000000D9 0 )
(#fldl2e #emit 0 0 "R" 0 "C1" 16r0000D9EA 0 )
(#fldl2t #emit 0 0 "R" 0 "C1" 16r0000D9E9 0 )
(#fldlg2 #emit 0 0 "R" 0 "C1" 16r0000D9EC 0 )
(#fldln2 #emit 0 0 "R" 0 "C1" 16r0000D9ED 0 )
(#fldpi #emit 0 0 "R" 0 "C1" 16r0000D9EB 0 )
(#fldz #emit 0 0 "R" 0 "C1" 16r0000D9EE 0 )
(#fmul #x87fpu 0 0 "R" 1 "C1" 16rD8DCC8C8 0 )
(#fmulp #x87sti 0 0 "R" 0 "C1" 16r0000DEC8 0 )
(#fnclex #emit 0 0 "R" 0 "C1" 16r0000DBE2 0 )
(#fninit #emit 0 0 "R" 0 "C1" 16r0000DBE3 0 )
(#fnop #emit 0 0 "R" 0 "C1" 16r0000D9D0 0 )
(#fnsave #mem "op1" 2r1000000 0 "R" 6 "C1" 16r000000DD 0 )
(#fnstcw #mem "op1" 2r1000000 0 "R" 7 "C1" 16r000000D9 0 )
(#fnstenv #mem "op1" 2r1000000 0 "R" 6 "C1" 16r000000D9 0 )
(#fnstsw #x87fstsw "op1" 2r1000000 0 "R" 7 "C1" 16r000000DD "C2" 16r0000DFE0 )
(#fpatan #emit 0 0 "R" 0 "C1" 16r0000D9F3 0 )
(#fprem #emit 0 0 "R" 0 "C1" 16r0000D9F8 0 )
(#fprem1 #emit 0 0 "R" 0 "C1" 16r0000D9F5 0 )
(#fptan #emit 0 0 "R" 0 "C1" 16r0000D9F2 0 )
(#frndint #emit 0 0 "R" 0 "C1" 16r0000D9FC 0 )
(#frstor #mem "op1" 2r1000000 0 "R" 4 "C1" 16r000000DD 0 )
(#fsave #mem "op1" 2r1000000 0 "R" 6 "C1" 16r9B0000DD 0 )
(#fscale #emit 0 0 "R" 0 "C1" 16r0000D9FD 0 )
(#fsin #emit 0 0 "R" 0 "C1" 16r0000D9FE 0 )
(#fsincos #emit 0 0 "R" 0 "C1" 16r0000D9FB 0 )
(#fsqrt #emit 0 0 "R" 0 "C1" 16r0000D9FA 0 )
(#fst #x87memSti "op1" 2r1100 0 "R" 2 "C1" 16r00D9DD02 "C2" 16rDDD00000 )
(#fstcw #mem "op1" 2r1000000 0 "R" 7 "C1" 16r9B0000D9 0 )
(#fstenv #mem "op1" 2r1000000 0 "R" 6 "C1" 16r9B0000D9 0 )
(#fstp #x87memSti "op1" 2r11100 0 "R" 3 "C1" 16r00D9DD03 "C2" 16rDDD8DB07 )
(#fstsw #x87fstsw "op1" 2r1000000 0 "R" 7 "C1" 16r9B0000DD "C2" 16r9B00DFE0 )
(#fsub #x87fpu 0 0 "R" 4 "C1" 16rD8DCE0E8 0 )
(#fsubp #x87sti 0 0 "R" 0 "C1" 16r0000DEE8 0 )
(#fsubr #x87fpu 0 0 "R" 5 "C1" 16rD8DCE8E0 0 )
(#fsubrp #x87sti 0 0 "R" 0 "C1" 16r0000DEE0 0 )
(#ftst #emit 0 0 "R" 0 "C1" 16r0000D9E4 0 )
(#fucom #x87sti 0 0 "R" 0 "C1" 16r0000DDE0 0 )
(#fucomi #x87sti 0 0 "R" 0 "C1" 16r0000DBE8 0 )
(#fucomip #x87sti 0 0 "R" 0 "C1" 16r0000DFE8 0 )
(#fucomp #x87sti 0 0 "R" 0 "C1" 16r0000DDE8 0 )
(#fucompp #emit 0 0 "R" 0 "C1" 16r0000DAE9 0 )
(#fwait #emit 0 0 "R" 0 "C1" 16r0000009B 0 )
(#fxam #emit 0 0 "R" 0 "C1" 16r0000D9E5 0 )
(#fxch #x87sti 0 0 "R" 0 "C1" 16r0000D9C8 0 )
(#fxrstor #mem 0 0 "R" 1 "C1" 16r00000FAE 0 )
(#fxsave #mem 0 0 "R" 0 "C1" 16r00000FAE 0 )
(#fxtract #emit 0 0 "R" 0 "C1" 16r0000D9F4 0 )
(#fyl2x #emit 0 0 "R" 0 "C1" 16r0000D9F1 0 )
(#fyl2xp1 #emit 0 0 "R" 0 "C1" 16r0000D9F9 0 )
(#haddpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F7C 0 )
(#haddps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F7C 0 )
(#hsubpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F7D 0 )
(#hsubps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F7D 0 )
(#idiv #rm 0 0 "R" 7 "C1" 16r000000F6 0 )
(#imul #imul 0 0 "R" 0 0 0 )
(#inc #incdec 0 0 "R" 0 "C1" 16r00000040 "C2" 16r000000FE )
(#int3 #emit 0 0 "R" 0 "C1" 16r000000CC 0 )
(#ja #cjmp 0 0 "R" 0 "C1" 16r00000007 0 )
(#jae #cjmp 0 0 "R" 0 "C1" 16r00000003 0 )
(#jb #cjmp 0 0 "R" 0 "C1" 16r00000002 0 )
(#jbe #cjmp 0 0 "R" 0 "C1" 16r00000006 0 )
(#jc #cjmp 0 0 "R" 0 "C1" 16r00000002 0 )
(#je #cjmp 0 0 "R" 0 "C1" 16r00000004 0 )
(#jg #cjmp 0 0 "R" 0 "C1" 16r0000000F 0 )
(#jge #cjmp 0 0 "R" 0 "C1" 16r0000000D 0 )
(#jl #cjmp 0 0 "R" 0 "C1" 16r0000000C 0 )
(#jle #cjmp 0 0 "R" 0 "C1" 16r0000000E 0 )
(#jmp #jmp 0 0 "R" 0 0 0 )
(#jna #cjmp 0 0 "R" 0 "C1" 16r00000006 0 )
(#jnae #cjmp 0 0 "R" 0 "C1" 16r00000002 0 )
(#jnb #cjmp 0 0 "R" 0 "C1" 16r00000003 0 )
(#jnbe #cjmp 0 0 "R" 0 "C1" 16r00000007 0 )
(#jnc #cjmp 0 0 "R" 0 "C1" 16r00000003 0 )
(#jne #cjmp 0 0 "R" 0 "C1" 16r00000005 0 )
(#jng #cjmp 0 0 "R" 0 "C1" 16r0000000E 0 )
(#jnge #cjmp 0 0 "R" 0 "C1" 16r0000000C 0 )
(#jnl #cjmp 0 0 "R" 0 "C1" 16r0000000D 0 )
(#jnle #cjmp 0 0 "R" 0 "C1" 16r0000000F 0 )
(#jno #cjmp 0 0 "R" 0 "C1" 16r00000001 0 )
(#jnp #cjmp 0 0 "R" 0 "C1" 16r0000000B 0 )
(#jns #cjmp 0 0 "R" 0 "C1" 16r00000009 0 )
(#jnz #cjmp 0 0 "R" 0 "C1" 16r00000005 0 )
(#jo #cjmp 0 0 "R" 0 0 0 )
(#jp #cjmp 0 0 "R" 0 "C1" 16r0000000A 0 )
(#jpe #cjmp 0 0 "R" 0 "C1" 16r0000000A 0 )
(#jpo #cjmp 0 0 "R" 0 "C1" 16r0000000B 0 )
(#js #cjmp 0 0 "R" 0 "C1" 16r00000008 0 )
(#jz #cjmp 0 0 "R" 0 "C1" 16r00000004 0 )
(#lddqu #mmurmi "op1" 2r100000 "op2" 2r1000000 "R" 0 "C1" 16rF2000FF0 0 )
(#ldmxcsr #mem "op1" 2r1000000 0 "R" 2 "C1" 16r00000FAE 0 )
(#lea #lea 0 0 "R" 0 0 0 )
(#leave #emit 0 0 "R" 0 "C1" 16r000000C9 0 )
(#lfence #emit 0 0 "R" 0 "C1" 16r000FAEE8 0 )
(#lock #emit 0 0 "R" 0 "C1" 16r000000F0 0 )
(#maskmovdqu #mmurmi "op1" 2r100000 "op2" 2r100000 "R" 0 "C1" 16r66000F57 0 )
(#maskmovq #mmurmi "op1" 2r10000 "op2" 2r10000 "R" 0 "C1" 16r00000FF7 0 )
(#maxpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5F 0 )
(#maxps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5F 0 )
(#maxsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F5F 0 )
(#maxss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5F 0 )
(#mfence #emit 0 0 "R" 0 "C1" 16r000FAEF0 0 )
(#minpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5D 0 )
(#minps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5D 0 )
(#minsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F5D 0 )
(#minss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5D 0 )
(#monitor #emit 0 0 "R" 0 "C1" 16r000F01C8 0 )
(#mov #mov 0 0 "R" 0 0 0 )
(#movPtr #movPtr 0 0 "R" 0 0 0 )
(#movapd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F28 "C2" 16r66000F29 )
(#movaps #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F28 "C2" 16r00000F29 )
(#movbe #movbe "op1" 2r1001110 "op2" 2r1001110 "R" 0 "C1" 16r000F38F0 "C2" 16r000F38F1 )
(#movd #mmuMovD 0 0 "R" 0 0 0 )
(#movddup #mmuMov "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F12 0 )
(#movdq2q #mmuMov "op1" 2r10000 "op2" 2r100000 "R" 0 "C1" 16rF2000FD6 0 )
(#movdqa #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F6F "C2" 16r66000F7F )
(#movdqu #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F6F "C2" 16rF3000F7F )
(#movhlps #mmuMov "op1" 2r100000 "op2" 2r100000 "R" 0 "C1" 16r00000F12 0 )
(#movhpd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F16 "C2" 16r66000F17 )
(#movhps #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F16 "C2" 16r00000F17 )
(#movlhps #mmuMov "op1" 2r100000 "op2" 2r100000 "R" 0 "C1" 16r00000F16 0 )
(#movlpd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F12 "C2" 16r66000F13 )
(#movlps #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F12 "C2" 16r00000F13 )
(#movmskpd #mmuMov "op1" 2r1101 "op2" 2r100000 "R" 0 "C1" 16r66000F50 0 )
(#movmskps #mmuMov "op1" 2r1101 "op2" 2r100000 "R" 0 "C1" 16r00000F50 0 )
(#movntdq #mmuMov "op1" 2r1000000 "op2" 2r100000 "R" 0 0 "C2" 16r66000FE7 )
(#movntdqa #mmuMov "op1" 2r100000 "op2" 2r1000000 "R" 0 "C1" 16r660F382A 0 )
(#movnti #mmuMov "op1" 2r1000000 "op2" 2r1100 "R" 0 0 "C2" 16r00000FC3 )
(#movntpd #mmuMov "op1" 2r1000000 "op2" 2r100000 "R" 0 0 "C2" 16r66000F2B )
(#movntps #mmuMov "op1" 2r1000000 "op2" 2r100000 "R" 0 0 "C2" 16r00000F2B )
(#movntq #mmuMov "op1" 2r1000000 "op2" 2r10000 "R" 0 0 "C2" 16r00000FE7 )
(#movq #mmuMovQ 0 0 "R" 0 0 0 )
(#movq2dq #mmurmi "op1" 2r100000 "op2" 2r10000 "R" 0 "C1" 16rF3000FD6 0 )
(#movsd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F10 "C2" 16rF2000F11 )
(#movshdup #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F16 0 )
(#movsldup #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F12 0 )
(#movss #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F10 "C2" 16rF3000F11 )
(#movsx #movSxZx 0 0 "R" 0 "C1" 16r00000FBE 0 )
(#movsxd #movsxd 0 0 "R" 0 0 0 )
(#movupd #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F10 "C2" 16r66000F11 )
(#movups #mmuMov "op1" 2r1100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F10 "C2" 16r00000F11 )
(#movzx #movSxZx 0 0 "R" 0 "C1" 16r00000FB6 0 )
(#mpsadbw #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A42 0 )
(#mul #rm 0 0 "R" 4 "C1" 16r000000F6 0 )
(#mulpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F59 0 )
(#mulps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F59 0 )
(#mulsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F59 0 )
(#mulss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F59 0 )
(#mwait #emit 0 0 "R" 0 "C1" 16r000F01C9 0 )
(#neg #rm 0 0 "R" 3 "C1" 16r000000F6 0 )
(#nop #emit 0 0 "R" 0 "C1" 16r00000090 0 )
(#not #rm 0 0 "R" 2 "C1" 16r000000F6 0 )
(#or #alu 0 0 "R" 1 "C1" 16r00000008 "C2" 16r00000080 )
(#orpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F56 0 )
(#orps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F56 0 )
(#pabsb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F381C 0 )
(#pabsd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F381E 0 )
(#pabsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F381D 0 )
(#packssdw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F6B 0 )
(#packsswb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F63 0 )
(#packusdw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F382B 0 )
(#packuswb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F67 0 )
(#paddb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FFC 0 )
(#paddd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FFE 0 )
(#paddq #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FD4 0 )
(#paddsb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FEC 0 )
(#paddsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FED 0 )
(#paddusb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDC 0 )
(#paddusw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDD 0 )
(#paddw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FFD 0 )
(#palignr #mmuRmImm8 "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3A0F 0 )
(#pand #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDB 0 )
(#pandn #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDF 0 )
(#pause #emit 0 0 "R" 0 "C1" 16rF3000090 0 )
(#pavgb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE0 0 )
(#pavgw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE3 0 )
(#pblendvb #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3810 0 )
(#pblendw #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A0E 0 )
(#pcmpeqb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F74 0 )
(#pcmpeqd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F76 0 )
(#pcmpeqq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3829 0 )
(#pcmpeqw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F75 0 )
(#pcmpestri #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A61 0 )
(#pcmpestrm #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A60 0 )
(#pcmpgtb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F64 0 )
(#pcmpgtd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F66 0 )
(#pcmpgtq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3837 0 )
(#pcmpgtw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F65 0 )
(#pcmpistri #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A63 0 )
(#pcmpistrm #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A62 0 )
(#pextrb #mmuPextr "op1" 2r1000101 "op2" 2r100000 "R" 0 "C1" 16r000F3A14 0 )
(#pextrd #mmuPextr "op1" 2r1000100 "op2" 2r100000 "R" 0 "C1" 16r000F3A16 0 )
(#pextrq #mmuPextr "op1" 2r1001100 "op2" 2r100000 "R" 1 "C1" 16r000F3A16 0 )
(#pextrw #mmuPextr "op1" 2r1000100 "op2" 2r110000 "R" 0 "C1" 16r000F3A16 0 )
(#pf2id #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000001D )
(#pf2iw #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000001C )
(#pfacc #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000AE )
(#pfadd #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000009E )
(#pfcmpeq #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000B0 )
(#pfcmpge #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r00000090 )
(#pfcmpgt #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000A0 )
(#pfmax #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000A4 )
(#pfmin #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r00000094 )
(#pfmul #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000B4 )
(#pfnacc #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000008A )
(#pfpnacc #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000008E )
(#pfrcp #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r00000096 )
(#pfrcpit1 #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000A6 )
(#pfrcpit2 #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000B6 )
(#pfrsqit1 #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000A7 )
(#pfrsqrt #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r00000097 )
(#pfsub #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000009A )
(#pfsubr #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000AA )
(#phaddd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3802 0 )
(#phaddsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3803 0 )
(#phaddw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3801 0 )
(#phminposuw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3841 0 )
(#phsubd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3806 0 )
(#phsubsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3807 0 )
(#phsubw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3805 0 )
(#pi2fd #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000000D )
(#pi2fw #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r0000000C )
(#pinsrb #mmuRmImm8 "op1" 2r100000 "op2" 2r1000100 "R" 0 "C1" 16r660F3A20 0 )
(#pinsrd #mmuRmImm8 "op1" 2r100000 "op2" 2r1000100 "R" 0 "C1" 16r660F3A22 0 )
(#pinsrq #mmuRmImm8 "op1" 2r100000 "op2" 2r1001000 "R" 0 "C1" 16r660F3A22 0 )
(#pinsrw #mmuRmImm8 "op1" 2r110000 "op2" 2r1000100 "R" 0 "C1" 16r00000FC4 0 )
(#pmaddubsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3804 0 )
(#pmaddwd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FF5 0 )
(#pmaxsb #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383C 0 )
(#pmaxsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383D 0 )
(#pmaxsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FEE 0 )
(#pmaxub #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDE 0 )
(#pmaxud #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383F 0 )
(#pmaxuw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383E 0 )
(#pminsb #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3838 0 )
(#pminsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3839 0 )
(#pminsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FEA 0 )
(#pminub #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FDA 0 )
(#pminud #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383B 0 )
(#pminuw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F383A 0 )
(#pmovmskb #mmurmi "op1" 2r1100 "op2" 2r110000 "R" 0 "C1" 16r00000FD7 0 )
(#pmovsxbd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3821 0 )
(#pmovsxbq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3822 0 )
(#pmovsxbw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3820 0 )
(#pmovsxdq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3825 0 )
(#pmovsxwd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3823 0 )
(#pmovsxwq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3824 0 )
(#pmovzxbd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3831 0 )
(#pmovzxbq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3832 0 )
(#pmovzxbw #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3830 0 )
(#pmovzxdq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3835 0 )
(#pmovzxwd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3833 0 )
(#pmovzxwq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3834 0 )
(#pmuldq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3828 0 )
(#pmulhrsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F380B 0 )
(#pmulhuw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE4 0 )
(#pmulhw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE5 0 )
(#pmulld #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3840 0 )
(#pmullw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FD5 0 )
(#pmuludq #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FF4 0 )
(#pop #pop 0 0 "R" 0 "C1" 16r00000058 "C2" 16r0000008F )
(#popad #emit #x86 0 "R" 0 "C1" 16r00000061 0 )
(#popcnt #rrm 0 0 "R" 0 "C1" 16rF3000FB8 0 )
(#popfd #emit 0 0 "R" 0 "C1" 16r0000009D 0 )
(#popfq #emit 0 0 "R" 0 "C1" 16r4800009D 0 )
(#por #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FEB 0 )
(#prefetch #mmuPrefetch "op1" 2r1000000 "op2" 2r10000000 "R" 0 0 0 )
(#psadbw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FF6 0 )
(#pshufb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3800 0 )
(#pshufd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F70 0 )
(#pshufhw #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F70 0 )
(#pshuflw #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F70 0 )
(#pshufw #mmuRmImm8 "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F70 0 )
(#psignb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3808 0 )
(#psignd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F380A 0 )
(#psignw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r000F3809 0 )
(#pslld #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 6 "C1" 16r00000FF2 "C2" 16r00000F72 )
(#pslldq #mmurmi "op1" 2r100000 "op2" 2r10000000 "R" 7 0 "C2" 16r66000F73 )
(#psllq #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 6 "C1" 16r00000FF3 "C2" 16r00000F73 )
(#psllw #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 6 "C1" 16r00000FF1 "C2" 16r00000F71 )
(#psrad #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 4 "C1" 16r00000FE2 "C2" 16r00000F72 )
(#psraw #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 4 "C1" 16r00000FE1 "C2" 16r00000F71 )
(#psrld #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 2 "C1" 16r00000FD2 "C2" 16r00000F72 )
(#psrldq #mmurmi "op1" 2r100000 "op2" 2r10000000 "R" 3 0 "C2" 16r66000F73 )
(#psrlq #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 2 "C1" 16r00000FD3 "C2" 16r00000F73 )
(#psrlw #mmurmi "op1" 2r110000 "op2" 2r11110000 "R" 2 "C1" 16r00000FD1 "C2" 16r00000F71 )
(#psubb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FF8 0 )
(#psubd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FFA 0 )
(#psubq #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FFB 0 )
(#psubsb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE8 0 )
(#psubsw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FE9 0 )
(#psubusb #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FD8 0 )
(#psubusw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FD9 0 )
(#psubw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FF9 0 )
(#pswapd #mmuRm3DNow "op1" 2r10000 "op2" 2r1010000 "R" 0 "C1" 16r00000F0F "C2" 16r000000BB )
(#ptest #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3817 0 )
(#punpckhbw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F68 0 )
(#punpckhdq #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F6A 0 )
(#punpckhqdq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F6D 0 )
(#punpckhwd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F69 0 )
(#punpcklbw #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F60 0 )
(#punpckldq #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F62 0 )
(#punpcklqdq #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F6C 0 )
(#punpcklwd #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000F61 0 )
(#push #push 0 0 "R" 6 "C1" 16r00000050 "C2" 16r000000FF )
(#pushad #emit #x86 0 "R" 0 "C1" 16r00000060 0 )
(#pushf #emit 0 0 "R" 0 "C1" 16r6600009C 0 )
(#pushfd #emit #x86 0 "R" 0 "C1" 16r0000009C 0 )
(#pushfq #emit #x64 0 "R" 0 "C1" 16r0000009C 0 )
(#pxor #mmurmi "op1" 2r110000 "op2" 2r1110000 "R" 0 "C1" 16r00000FEF 0 )
(#rcl #rot 0 0 "R" 2 0 0 )
(#rcpps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F53 0 )
(#rcpss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F53 0 )
(#rcr #rot 0 0 "R" 3 0 0 )
(#rdtsc #emit 0 0 "R" 0 "C1" 16r00000F31 0 )
(#rdtscp #emit 0 0 "R" 0 "C1" 16r000F01F9 0 )
(#ret #ret 0 0 "R" 0 0 0 )
(#rol #rot 0 0 "R" 0 0 0 )
(#ror #rot 0 0 "R" 1 0 0 )
(#roundpd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A09 0 )
(#roundps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A08 0 )
(#roundsd #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A0B 0 )
(#roundss #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r660F3A0A 0 )
(#rsqrtps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F52 0 )
(#rsqrtss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F52 0 )
(#sahf #emit 0 0 "R" 0 "C1" 16r0000009E 0 )
(#sal #rot 0 0 "R" 4 0 0 )
(#sar #rot 0 0 "R" 7 0 0 )
(#sbb #alu 0 0 "R" 3 "C1" 16r00000018 "C2" 16r00000080 )
(#sfence #emit 0 0 "R" 0 "C1" 16r000FAEF8 0 )
(#shl #rot 0 0 "R" 4 0 0 )
(#shld #shldShrd 0 0 "R" 0 "C1" 16r00000FA4 0 )
(#shr #rot 0 0 "R" 5 0 0 )
(#shrd #shldShrd 0 0 "R" 0 "C1" 16r00000FAC 0 )
(#shufps #mmuRmImm8 "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000FC6 0 )
(#sqrtpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F51 0 )
(#sqrtps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F51 0 )
(#sqrtsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F51 0 )
(#sqrtss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F51 0 )
(#stc #emit 0 0 "R" 0 "C1" 16r000000F9 0 )
(#std #emit 0 0 "R" 0 "C1" 16r000000FD 0 )
(#stmxcsr #mem "op1" 2r1000000 0 "R" 3 "C1" 16r00000FAE 0 )
(#sub #alu 0 0 "R" 5 "C1" 16r00000028 "C2" 16r00000080 )
(#subpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F5C 0 )
(#subps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F5C 0 )
(#subsd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF2000F5C 0 )
(#subss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16rF3000F5C 0 )
(#test #test 0 0 "R" 0 0 0 )
(#ucomisd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F2E 0 )
(#ucomiss #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F2E 0 )
(#ud2 #emit 0 0 "R" 0 "C1" 16r00000F0B 0 )
(#unpckhpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F15 0 )
(#unpckhps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F15 0 )
(#unpcklpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F14 0 )
(#unpcklps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F14 0 )
(#xadd #rmr 0 0 "R" 0 "C1" 16r00000FC0 0 )
(#xchg #xchg 0 0 "R" 0 0 0 )
(#xor #alu 0 0 "R" 6 "C1" 16r00000030 "C2" 16r00000080 )
(#xorpd #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r66000F57 0 )
(#xorps #mmurmi "op1" 2r100000 "op2" 2r1100000 "R" 0 "C1" 16r00000F57 0 )

)