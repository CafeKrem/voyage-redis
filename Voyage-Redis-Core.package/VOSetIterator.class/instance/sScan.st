testing
sScan
	^ redisRepository pool
		connectionDo: [ :aRedisWrapper | 
			1 halt.
			aRedisWrapper endpoint
				sScanKey: setName
				cursor: currentCursor asString ]
		at: redisRepository databaseName