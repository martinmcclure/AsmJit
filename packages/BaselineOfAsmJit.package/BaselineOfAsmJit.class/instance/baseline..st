baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				package: 'AsmJit-Core';
				package: 'AsmJit-Extension' with: [ spec requires: #('AsmJit-Operands' 'AsmJit-Legacy') ];
				package: 'AsmJit-Instructions' with: [ spec requires: #('AsmJit-Core') ];
				package: 'AsmJit-Legacy';
				package: 'AsmJit-Operands' with: [ spec requires: #('AsmJit-Core') ];
				package: 'AsmJit-StackManagement' with: [ spec requires: #('AsmJit-Instructions') ];
				package: 'AsmJit-Tests' with: [ spec requires: #('AsmJit-x86') ];
				package: 'AsmJit-x86'
					with: [ spec requires: #('AsmJit-Extension' 'AsmJit-Instructions' 'AsmJit-Operands' 'AsmJit-StackManagement') ].
			spec
				group: 'default' with: #('AsmJit-x86');
				group: 'Tests' with: #('AsmJit-Tests') ]