enumerating
databaseReaddingDo: aKey
	^ pool
		connectionDo: [ :aRedisWrapper | aRedisWrapper endpoint get: aKey ]
		at: databaseName