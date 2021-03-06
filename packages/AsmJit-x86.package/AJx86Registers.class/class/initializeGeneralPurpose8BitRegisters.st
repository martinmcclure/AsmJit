initialization
initializeGeneralPurpose8BitRegisters
	"general purpose 8 bit registers "

	self
		registerBase: 0
			class: AJx86GPRegister
			rex: #dontCare
			values: #(#AL #CL #DL #BL);
		registerBase: 4
			class: AJx86GPRegister
			rex: #prohibited
			values: #(#AH #CH #DH #BH);
		registerBase: 4
			class: AJx86GPRegister
			rex: #required
			values: #(#SPL #BPL #SIL #DIL #R8B #R9B #R10B #R11B #R12B #R13B #R14B #R15B)