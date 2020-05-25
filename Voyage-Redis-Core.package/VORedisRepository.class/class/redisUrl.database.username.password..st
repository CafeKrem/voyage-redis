instance creation
redisUrl: aCollection database: databaseString username: aUserName password: aPassword
	^ self basicNew
		initializeRedisUrls: (aCollection collect: #asUrl)
			database: databaseString
			username: aUserName
			password: aPassword;
		yourself