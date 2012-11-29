baseline
baseline00: spec 
	<version: '0.0-baseline'>
	
	spec for: #common do: [
		
		spec 
		
			blessing: #baseline;
			repository: 'http://www.squeaksource.com/AsmJit';
			
			package: 'AsmJit-Core';
			
			package: 'AsmJit-Compiler' with: [
				spec requires: #('AsmJit-Core')];
			package: 'AsmJit-Extension' with: [
				spec requires: #( 'AsmJit-Operands')];
			package: 'AsmJit-Instructions' with: [
				spec requires: #('AsmJit-Core')];
			package: 'AsmJit-Operands' with: [
				spec requires: #('AsmJit-Core')];
			package: 'AsmJit-Reference' with: [
				spec requires: #('AsmJit-x86' 'Soup' 'OSProcess')];
			package: 'AsmJit-StackManagement' with: [
				spec requires: #('AsmJit-Instructions')];
			package: 'AsmJit-Tests' with: [
				spec requires: #('AsmJit-x86')];
			package: 'AsmJit-x86' with: [
				spec requires: #( 'AsmJit-Extension' 'AsmJit-Instructions' 
									 'AsmJit-Operands' 'AsmJit-StackManagement')].
		
		spec project: 'Soup' with: [
			spec
				className: 'ConfigurationOfSoup';
				repository: 'http://squeaksource.com/Soup' ].
			
		spec project: 'OSProcess' with: [
			spec
				className: 'ConfigurationOfOSProcess';
				repository: 'http://squeaksource.com/MetacelloRepository' ].
				
		spec 
			group: 'default' with: #('x86');
			group: 'x86' with: #('AsmJit-x86');
			group: 'Test' with: #('x86' 'AsmJit-Tests');
			group: 'Dev' with: #('Test' 'AsmJit-Reference')].