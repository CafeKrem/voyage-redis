persistence
basicSelectOne
	^ self repository pool
		connectionDo: [ :aRedisWrapper | self detectWith: aRedisWrapper ]
		at: self repository databaseName