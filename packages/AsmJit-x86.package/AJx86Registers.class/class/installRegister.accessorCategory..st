method compilation
installRegister: register accessorCategory: registerAccessorsCategory

	^ self class
		compile:(String streamContents: [ :s | 
			s nextPutAll: register name; crtab.
			self printRegister: register descriptionOn: s.
			s crtab; nextPutAll: '^ self at: #'; nextPutAll: register name ])
		classified: registerAccessorsCategory