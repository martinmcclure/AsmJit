initialize-release
fromInstructions: instructions
	bytes := ByteArray
		new: 100
		streamContents: [ :stream | 
			instructions
				do: [ :each | 
					each routine: self.
					each extractLabels: [ :name :pos | labels at: name put: pos ].
					each externalReference
						ifNotNil: [ :extRef | 
							externalReferences add: extRef.
							extRef routine: self ].
					each storeOn: stream ] ]