accessing
extractLabels: aBlock

	operands ifNotNil: [ operands do: [:each | each extractLabels: aBlock ]]