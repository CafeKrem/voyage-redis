running
setUp
	super setUp.
	setIterator := VORedisSetIterator
		queryClass: Object
		repository: repository