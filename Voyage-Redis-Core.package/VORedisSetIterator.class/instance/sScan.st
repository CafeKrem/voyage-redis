testing
sScan
	^ redisRepository
		executeRedisCommand: [ :aRedisWrapper | 
			aRedisWrapper endpoint
				sScan: setName
				cursor: currentCursor asString ]