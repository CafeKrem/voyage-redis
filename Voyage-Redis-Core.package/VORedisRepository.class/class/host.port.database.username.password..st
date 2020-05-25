instance creation
host: hostString port: portNumber database: databaseString username: aUserName password: aPassword
	^ self
		redisUrl:
			{('redis://' , hostString , ':' , portNumber asString , '/'
				, databaseString asString)}
		database: databaseString
		username: aUserName
		password: aPassword