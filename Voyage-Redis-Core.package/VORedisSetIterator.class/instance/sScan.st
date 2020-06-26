testing
sScan
	^ redisRepository
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				sScanKey: setName
				cursor: currentCursor asString ]