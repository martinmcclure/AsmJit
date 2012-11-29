accessing
descriptionAt: instructionName

	^ descriptions 
			at: instructionName 
			ifAbsentPut: [ self loadDescription: instructionName ]