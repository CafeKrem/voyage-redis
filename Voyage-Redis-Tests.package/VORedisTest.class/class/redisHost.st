as yet unclassified
redisHost
	^ RedisHost ifNil: [ RedisHost := VORedisRepository defaultHost ]