testing
sScan
	^ redisRepository
		executeRedisCommand: [ :aRedisWrapper | 
			self halt.
			self flag: 'need to extends RsRedisEndpoint'.
			aRedisWrapper endpoint
				sScanKey: setName
				cursor: currentCursor asString ]