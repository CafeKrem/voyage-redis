execution
execute
	| jsonKey |
	jsonKey := repository
		redisQueryClassName: object className
		ID: (repository keyOf: object).
	repository
		executeRedisCommand: [ :aRsRedis | 
			aRsRedis endpoint
				atomic: [ aRsRedis endpoint
						del: jsonKey;
						sRem: (repository redisQueryClassSetName: object class)
							member: jsonKey ] ]