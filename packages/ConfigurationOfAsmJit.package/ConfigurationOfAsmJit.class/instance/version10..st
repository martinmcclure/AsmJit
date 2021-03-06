versions
version10: spec
	<version: '1.0' imports: #('0.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: ''.
		spec author: 'CamilloBruni'.
		spec timestamp: '8/23/2012 17:15'.
		spec project: 'Soup' with: '1.2'.
		spec 
			package: 'AsmJit-Compiler' with: 'AsmJit-Compiler-CamilloBruni.1';
			package: 'AsmJit-Core' with: 'AsmJit-Core-CamilloBruni.2';
			package: 'AsmJit-Extension' with: 'AsmJit-Extension-IgorStasenko.3';
			package: 'AsmJit-Instructions' with: 'AsmJit-Instructions-CamilloBruni.1';
			package: 'AsmJit-Operands' with: 'AsmJit-Operands-CamilloBruni.1';
			package: 'AsmJit-Reference' with: 'AsmJit-Reference-CamilloBruni.1';
			package: 'AsmJit-StackManagement' with: 'AsmJit-StackManagement-CamilloBruni.1';
			package: 'AsmJit-Tests' with: 'AsmJit-Tests-CamilloBruni.1';
			package: 'AsmJit-x86' with: 'AsmJit-x86-CamilloBruni.2'. ].
