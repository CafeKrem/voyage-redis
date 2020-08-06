tests
testRepositoryConfiguration
	repository connectionTimeout: 30.
	self assert: repository pool connectionTimeout equals: 30.