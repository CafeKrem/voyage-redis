initialize
initializeRedisUrls: aCollectionOfUrls database: aDatabaseName username: aUserName password: aPassword
	self
		databaseName: aDatabaseName;
		redisUrl: aCollectionOfUrls;
		username: aUserName;
		password: aPassword
		"initialize"