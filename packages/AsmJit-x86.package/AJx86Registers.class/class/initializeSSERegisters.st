initialization
initializeSSERegisters
	" SSE registers "
	self registerBase: 16r70 class: AJxMMRegister  values: #(
		#XMM0 #XMM1  #XMM2  #XMM3  #XMM4  #XMM5  #XMM6  #XMM7 
		#XMM8 #XMM9  #XMM10 #XMM11 #XMM12 #XMM13 #XMM14 #XMM15).