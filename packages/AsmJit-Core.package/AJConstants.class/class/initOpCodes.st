initialization
initOpCodes


  " x86 "
  OG8          := 16r01.
  OG16         := 16r02.
  OG32         := 16r04.
  OG64         := 16r08.
  OMEM         := 16r40.
  OIMM         := 16r80.

  O64Only      := 16r100.

  OG8163264    := OG64  + OG32  + OG16  + OG8.
  OG163264     := OG64  + OG32  + OG16.
  OG3264       := OG64  + OG32.

  " x87"
  OFM1        := 16r01.
  OFM2        := 16r02.
  OFM4        := 16r04.
  OFM8        := 16r08.
  OFM10       := 16r10.

  OFM24       := OFM2 + OFM4.
  OFM248      := OFM2 + OFM4 + OFM8.
  OFM48       := OFM4 + OFM8.
  OFM4810     := OFM4 + OFM8 + OFM10.

  " mm|xmm"
  ONOREX      := 16r01. " Used by MMX/SSE instructions. OG8 is never used for them "
  OMM         := 16r10.
  OXMM        := 16r20.

  OMMMEM      := OMM   + OMEM.
  OXMMMEM     := OXMM  + OMEM.
  OMMXMM      := OMM   + OXMM.
  OMMXMMMEM   := OMM   + OXMM  + OMEM.