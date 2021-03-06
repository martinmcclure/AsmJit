development support
commit: commitMessage
	"Release #development version: set version blessing to #release, update the #development and #stable symbolic version methods and save the configuration."

	"self releaseDevelopmentVersion: '- release version 1.0.2'"

	<apiDocumentation>
	self ensureMetacello.
	self updateConfiguration.
	
	self createNewDevelopmentVersion.
	self saveModifiedPackagesAndConfiguration: commitMessage.
	(Smalltalk at: #MetacelloToolBox) updateToLatestPackageVersionsIn: self description: commitMessage.
	
	self loadDevelopment.
	self saveConfiguration: commitMessage.