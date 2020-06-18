testing
sScan
	^ redisRepository pool
		connectionDo: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				sScanKey: setName
				cursor: currentCursor asString ]
		at: redisRepository databaseName