testing
sScan
	^ redisRepository
		executeRedisCommand: [ :aRsRedis | 
			aRsRedis endpoint
				sScan: setName
				cursor: currentCursor asString ]