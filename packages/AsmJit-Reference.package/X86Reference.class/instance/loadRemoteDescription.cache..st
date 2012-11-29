accessing
loadRemoteDescription: opName cache: cache
	| url |
	
	url := 'http://siyobik.info.gf/main/reference/instruction/' , opName asUppercase.
	OSProcess waitForCommand: '/usr/local/bin/pandoc ', url, ' --to=Markdown >> ', cache fullName.
	